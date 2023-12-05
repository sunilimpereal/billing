import 'package:billing/modules/tables/widgets/table_category_card.dart';
import 'package:flutter/material.dart';

class TableCategoryPanel extends StatefulWidget {
  const TableCategoryPanel({super.key});

  @override
  State<TableCategoryPanel> createState() => _TableCategoryPanelState();
}

class _TableCategoryPanelState extends State<TableCategoryPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            alignment: Alignment.centerLeft,
            child: const Text(
              "Categories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Column(
            children: const [
              TableCategoryCard(
                title: 'AC',
              ),
              TableCategoryCard(
                title: 'Non AC',
              )
            ],
          )
        ],
      ),
    );
  }
}
