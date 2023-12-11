import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ReportDaySummary extends StatefulWidget {
  const ReportDaySummary({super.key});

  @override
  State<ReportDaySummary> createState() => _ReportDaySummaryState();
}

class _ReportDaySummaryState extends State<ReportDaySummary> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Day Summary",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              DaySummaryTypesWidget(),
            ],
          ),
          Expanded(child: DaySummaryTable())
        ],
      ),
    );
  }
}

class DaySummaryTable extends StatelessWidget {
  const DaySummaryTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: DataTable(
        columns: const [
          DataColumn(label: Text('SR.NO')),
          DataColumn(label: Text('Bill NO')),
          DataColumn(label: Text('DATE Time')),
          DataColumn(label: Text('Payment Mode')),
          DataColumn(label: Text('Customer')),
          DataColumn(label: Text('Discount')),
          DataColumn(label: Text('Tax')),
          DataColumn(label: Text('Qty')),
          DataColumn(label: Text('Bill Amount')),
          DataColumn(label: Text('Net Total')),
        ],
        rows: const [
          DataRow(cells: [
            DataCell(Text('1')),
            DataCell(Text('1001')),
            DataCell(Text('10-12-2023\n 11:45 AM')),
            DataCell(Text('Cash')),
            DataCell(Text('Customer 1')),
            DataCell(Text('0')),
            DataCell(Text('0')),
            DataCell(Text('2')),
            DataCell(Text('1000')),
            DataCell(Text('1000')),
          ]),
        ],
      ),
    );
  }
}

class DaySummaryTypesWidget extends StatelessWidget {
  const DaySummaryTypesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          typeCard(name: "Todays"),
          typeCard(name: "Yesterdays"),
          typeCard(name: "Custome Date")
        ],
      ),
    );
  }

  Widget typeCard({required String name}) {
    return Card(
      child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          child: Text(name)),
    );
  }
}
