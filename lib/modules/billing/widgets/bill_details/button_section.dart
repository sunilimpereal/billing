import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
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
                button(name: "Bill & KOT", onPressed: () {}),
                button(name: "KOT", onPressed: () {}),
                button(name: "Save & Email", onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
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
