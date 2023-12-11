import 'package:billing/modules/settings/widgets/settings_group_panel.dart';
import 'package:flutter/material.dart';

class SettingsWidget {
  Widget settingsGroup;
  List<Widget> settings;
  SettingsWidget({
    required this.settings,
    required this.settingsGroup,
  });
}

List<SettingsWidget> settings = [
  SettingsWidget(settings: [
    buildSettingsTile('App Language', Icons.language),
  ], settingsGroup: buildSettingsGroupTile('Language', Icons.language)),
  SettingsWidget(
      settings: [
        buildSettingsTile('Header Text', Icons.text_format),
        buildSettingsTile('Footer Text', Icons.text_format),
      ],
      settingsGroup:
          buildSettingsGroupTile('Receipt Header/Footer', Icons.receipt)),
  SettingsWidget(
      settings: [],
      settingsGroup: buildSettingsGroupTile('Tax Settings', Icons.money)),
  SettingsWidget(
      settings: [],
      settingsGroup:
          buildSettingsGroupTile('Discount Settings', Icons.local_offer)),
  SettingsWidget(
      settings: [],
      settingsGroup: buildSettingsGroupTile('Stock', Icons.notifications)),
  SettingsWidget(
      settings: [],
      settingsGroup: buildSettingsGroupTile('User', Icons.security)),
  SettingsWidget(
      settings: [
        buildSettingsTile('Enbale Notification', Icons.notifications),
        buildSettingsTile('Alert Notification', Icons.notifications),
      ],
      settingsGroup:
          buildSettingsGroupTile('Notification', Icons.notifications)),
  SettingsWidget(
      settings: [
        buildSettingsTile('Printer Settings', Icons.print),
      ],
      settingsGroup:
          buildSettingsGroupTile('Hardware Integration', Icons.print)),
  SettingsWidget(
      settings: [],
      settingsGroup:
          buildSettingsGroupTile('Reporting & Analytics', Icons.bar_chart)),
  SettingsWidget(settings: [
    buildSettingsTile('base Url', Icons.link),
  ], settingsGroup: buildSettingsGroupTile('Network Settings', Icons.security)),
];
