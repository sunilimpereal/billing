import 'dart:developer';

import 'package:flutter/material.dart';

class AppTabBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onChanged;
  const AppTabBar({
    super.key,
    required this.selectedIndex,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        customTab(title: "Items", index: 0, selectedIndex: selectedIndex),
        customTab(title: "Tables", index: 1, selectedIndex: selectedIndex),
        customTab(title: "Waiters", index: 2, selectedIndex: selectedIndex),
        customTab(title: "Orders", index: 3, selectedIndex: selectedIndex)
      ],
    );
  }

  Widget customTab(
      {required String title, required int index, required int selectedIndex}) {
    bool selected = index == selectedIndex;
    return GestureDetector(
      onTap: () {
        log(index.toString());
        onChanged(index);
      },
      child: Container(
        width: 120,
        height: 40,
        decoration: BoxDecoration(
            color: selected ? Colors.grey.shade300 : Colors.grey.shade200,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12), topRight: Radius.circular(12))),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontWeight: selected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
