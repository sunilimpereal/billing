import 'package:billing/componenets/app_drawer.dart';
import 'package:billing/constants/ui/color_constants.dart';
import 'package:billing/modules/reports/widgets/report_day_summary.dart';
import 'package:billing/modules/reports/widgets/report_view_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ReportsScreen extends StatefulWidget {
  const ReportsScreen({super.key});

  @override
  State<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: Text(
          "Reports",
          style: TextStyle(color: AppColors.primaryColor),
        ),
      ),
      body: Row(
        children: [
          Expanded(flex: 2, child: ReportsTypePanel()),
          Expanded(
            flex: 10,
            child: ReportDaySummary(),
          ),
        ],
      ),
    );
  }
}
