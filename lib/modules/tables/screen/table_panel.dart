import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../billing/widgets/items/search_bar.dart';
import '../widgets/table_card.dart';

class TablePanel extends StatefulWidget {
  const TablePanel({super.key});

  @override
  State<TablePanel> createState() => _TablePanelState();
}

class _TablePanelState extends State<TablePanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(24.0),
                child: Text(
                  "Tables",
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              TableCard(
                chairsCount: 2,
                hall: 'AC Hall',
                itemsCount: 3,
                tableName: 'Table 1',
              ),
              TableCard(
                chairsCount: 3,
                hall: 'AC Hall',
                itemsCount: 2,
                tableName: 'Table 1',
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              TableCard(
                chairsCount: 1,
                hall: 'AC Hall',
                itemsCount: 3,
                tableName: 'Table 1',
              ),
              TableCard(
                chairsCount: 2,
                hall: 'AC Hall',
                itemsCount: 2,
                tableName: 'Table 1',
              ),
            ],
          )
        ],
      ),
    );
  }
}
