import 'dart:developer';

import 'package:billing/modules/orders/models/order_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'orders_event.dart';
part 'orders_state.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  OrdersBloc() : super(OrdersInitial()) {
    on<AddBillEvent>((event, emit) {
      List<Order> orders1 = [];
      orders1.add(event.order);
      orders1.addAll(state.orders);

      log(orders1.toString());
      emit(state.copyWith(orders1: orders1));
    });
  }
}
