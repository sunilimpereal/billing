import 'dart:developer';

import 'package:billing/modules/settings/widgets/settings_data.dart';
import 'package:flutter/material.dart';

class SettingsMainPnael extends StatefulWidget {
  final int selectedIndex;
  const SettingsMainPnael({super.key, required this.selectedIndex});

  @override
  State<SettingsMainPnael> createState() => _SettingsMainPnaelState();
}

class _SettingsMainPnaelState extends State<SettingsMainPnael> {
  @override
  Widget build(BuildContext context) {
    log("message");
    return Container(
      decoration: BoxDecoration(
        border: Border(left: BorderSide(color: Colors.grey.shade400)),
      ),
      child: Column(
        children: settings[widget.selectedIndex].settings,
      ),
    );
  }
}
