import 'package:billing/modules/waiters/waiter_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WaitersPanel extends StatefulWidget {
  const WaitersPanel({super.key});

  @override
  State<WaitersPanel> createState() => _WaitersPanelState();
}

class _WaitersPanelState extends State<WaitersPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                WaiterCard(
                  name: 'Person 1',
                ),
                WaiterCard(
                  name: 'Person 2',
                ),
                WaiterCard(
                  name: 'Person 3',
                ),
                WaiterCard(
                  name: 'Person 4',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                WaiterCard(
                  name: 'Person 1',
                ),
                WaiterCard(
                  name: 'Person 2',
                ),
                WaiterCard(
                  name: 'Person 3',
                ),
                WaiterCard(
                  name: 'Person 4',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
