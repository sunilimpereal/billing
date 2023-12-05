import 'package:billing/modules/orders/widgets/orders_category_panel.dart';
import 'package:billing/modules/orders/widgets/orders_main_panel.dart';
import 'package:flutter/material.dart';

import '../../componenets/splitLayout.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return const SplitLayout(
      sidePanel: null,
      mainPanel: OrdersMainPanel(),
    );
  }
}
