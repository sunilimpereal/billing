import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../billing/widgets/items/search_bar.dart';
import 'order_card.dart';

class OrdersMainPanel extends StatelessWidget {
  const OrdersMainPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: SingleChildScrollView(
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
            Row(
              children: [
                OrdersCard(),
                OrdersCard(),
                OrdersCard(),
              ],
            ),
            Row(
              children: [
                OrdersCard(),
                OrdersCard(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
