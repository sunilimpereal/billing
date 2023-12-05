import 'package:flutter/material.dart';

class SplitLayout extends StatelessWidget {
  final Widget? sidePanel;
  final Widget mainPanel;
  const SplitLayout({super.key, this.sidePanel, required this.mainPanel});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          sidePanel != null
              ? Expanded(
                  flex: 2, // Represents 20% of the available space
                  child: Container(
                    // color: Colors.green,
                    child: sidePanel,
                  ),
                )
              : Container(),
          Expanded(
            flex: 10, // Represents 80% of the available space
            child: Container(
              child: mainPanel,
            ),
          ),
        ],
      ),
    );
  }
}
