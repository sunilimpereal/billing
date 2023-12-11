import 'package:billing/constants/ui/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ReportsTypePanel extends StatefulWidget {
  const ReportsTypePanel({super.key});

  @override
  State<ReportsTypePanel> createState() => _ReportsTypePanelState();
}

class _ReportsTypePanelState extends State<ReportsTypePanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: AppColors.primaryColor,
      child: Column(children: [
        reportTypeTile(
            onPressed: () {}, title: 'Day Summary', icon: Icons.calendar_today),
        reportTypeTile(
            onPressed: () {}, title: 'Product Sale', icon: Icons.shopping_cart),
        reportTypeTile(
            onPressed: () {}, title: 'Bill Sale', icon: Icons.receipt),
        reportTypeTile(
            onPressed: () {}, title: 'GST Sale', icon: Icons.attach_money),
      ]),
    );
  }

  // Widget reportTypeTile(
  //     {required String title,
  //     required Function() onPressed,
  //     required IconData icon}) {
  //   return ListTile(
  //     leading: Icon(icon),
  //     title: Text(
  //       title,
  //       style: TextStyle(fontWeight: FontWeight.bold),
  //     ),
  //     onTap: onPressed,
  //   );
  // }

  Widget reportTypeTile(
      {required String title,
      required Function() onPressed,
      required IconData icon}) {
    return Card(
      child: ListTile(
        // tileColor: AppColors.primaryColor,
        visualDensity: VisualDensity.comfortable,
        leading: Icon(icon),
        title: Text(title),
        onTap: onPressed,
      ),
    );
  }
}
