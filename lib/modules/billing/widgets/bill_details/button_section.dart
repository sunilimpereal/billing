import 'dart:developer';

import 'package:billing/modules/billing/bloc/billing_bloc.dart';
import 'package:billing/modules/orders/bloc/orders_bloc.dart';
import 'package:billing/modules/orders/models/order_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/bill_model.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BillingBloc, BillingState>(
      builder: (context, billingState) {
        double subtotal = 0;
        double discount = 0;
        double taxValue = 0;
        for (BillItem item in billingState.billItems) {
          subtotal = subtotal + (item.item.price * item.qty);
        }
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    button(name: "Save & Print", onPressed: () {}),
                    button(name: "KOT-wise Bill", onPressed: () {}),
                    button(name: "DDB", onPressed: () {}),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    BlocBuilder<OrdersBloc, OrdersState>(
                      builder: (context, state) {
                        return button(
                            name: "Bill & KOT",
                            onPressed: () {
                              log("message: ");
                              log(state.orders.toString());
                              int val = state.orders.length;
                              if (billingState.billItems.isNotEmpty) {
                                context.read<OrdersBloc>().add(AddBillEvent(
                                    order: Order(
                                        id: val,
                                        orderNo: val.toString(),
                                        tPrice: subtotal,
                                        discount: discount,
                                        items: billingState.billItems)));
                                context.read<BillingBloc>().add(ClearBillEvent());
                              }
                            });
                      },
                    ),
                    button(name: "KOT", onPressed: () {}),
                    button(name: "Save & Email", onPressed: () {}),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget button({
    required String name,
    required Function() onPressed,
  }) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: onPressed,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 14.0),
                child: Text(name),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
