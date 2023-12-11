import 'dart:developer';

import 'package:billing/constants/ui/color_constants.dart';
import 'package:billing/modules/settings/widgets/settings_group_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../componenets/app_drawer.dart';
import '../widgets/settings_main_panel.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(color: AppColors.primaryColor),
        ),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: SettingsGroupPanel(
              onSelected: (index1) {
                setState(() {
                  index = index1;
                });
              },
            ),
          ),
          Expanded(
            flex: 8,
            child: SettingsMainPnael(
              key: Key(index.toString()),
              selectedIndex: index,
            ),
          ),
        ],
      ),
    );
  }
}
