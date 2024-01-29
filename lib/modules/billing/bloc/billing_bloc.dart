import 'dart:developer';

import 'package:billing/modules/billing/models/bill_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/item_model.dart';

part 'billing_state.dart';
part 'billing_event.dart';

class BillingBloc extends Bloc<BillingEvent, BillingState> {
  BillingBloc() : super(BillingState()) {
    on<AddItemInBillEvent>((event, emit) {
      List<BillItem> items = [];
      items.addAll(state.billItems);
      bool itemAlreadyPresent = false;
      for (BillItem item in items) {
        if (item.item.id == event.item.id) {
          item.qty = item.qty + event.qty;
          itemAlreadyPresent = true;
        }
      }
      if (!itemAlreadyPresent) {
        items.add(BillItem(item: event.item, qty: event.qty));
      }
      emit(state.copyWith(billItems: items));
    });
    on<ReduceItemInBillEvent>((event, emit) {
      List<BillItem> items = [];
      items.addAll(state.billItems);
      bool remove = false;
      for (BillItem item in items) {
        if (item.item.id == event.item.id) {
          item.qty = item.qty - event.qty;
          if (item.qty == 0) {
            remove = true;
          }
        }
      }
      if (remove) {
        items.removeWhere((element) => element.item.id == event.item.id);
      }
      emit(state.copyWith(billItems: items));
    });

    on<CreateBillEvent>((event, emit) {
      emit(state.copyWith());
    });
    on<ClearBillEvent>((event, emit) {
      emit(state.copyWith(billItems: []));
    });
  }
}
