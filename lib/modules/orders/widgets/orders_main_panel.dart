import 'package:billing/modules/orders/bloc/orders_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../billing/widgets/items/search_bar.dart';
import '../models/order_model.dart';
import 'order_card.dart';

class OrdersMainPanel extends StatelessWidget {
  const OrdersMainPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersBloc, OrdersState>(
      builder: (context, state) {
        List<Row> rows = [];
        int l = state.orders.length % 3;
        for (int i = 0; i < (state.orders.length - l); i = i + 3) {
          rows.add(Row(
            children: [
              OrdersCard(order: state.orders[i]),
              OrdersCard(order: state.orders[i + 1]),
              OrdersCard(order: state.orders[i + 2]),
            ],
          ));
        }
        List<Widget> restItems = [];
        for (int i = state.orders.length - l; i < state.orders.length; i++) {
          restItems.add(OrdersCard(
            order: state.orders[i],
          ));
        }
        rows.add(Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: restItems,
        ));
        return Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Text(
                      "Orders",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SearchBar(),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(children: rows),
              )),
            ],
          ),
        );
      },
    );
  }
}
