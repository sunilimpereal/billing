import 'dart:developer';

import 'package:flutter/material.dart';
import 'settings_data.dart';

class SettingsGroupPanel extends StatefulWidget {
  final Function(int) onSelected;
  const SettingsGroupPanel({super.key, required this.onSelected});

  @override
  State<SettingsGroupPanel> createState() => _SettingsGroupPanelState();
}

class _SettingsGroupPanelState extends State<SettingsGroupPanel> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: settings.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                log(index.toString());
                widget.onSelected(index);
              },
              child: settings[index].settingsGroup);
        });
  }
}

Widget buildSettingsGroupTile(String title, IconData icon) {
  return Container(
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(color: Colors.grey.shade300),
      ),
    ),
    child: ListTile(
      title: Text(title),
      leading: Icon(icon),
      trailing: const Icon(Icons.keyboard_arrow_right_rounded),
    ),
  );
}

Widget buildSettingsTile(String title, IconData icon) {
  return Container(
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(color: Colors.grey.shade300),
      ),
    ),
    child: ListTile(
      title: Text(title),
      leading: Icon(icon),
    ),
  );
}
