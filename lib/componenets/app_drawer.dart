import 'package:billing/modules/settings/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import '../modules/billing/screen/billing_home_screen.dart';
import '../modules/reports/reports_screen.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'POS',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          DrawerTile(
            screen: BillingHomeScreen(),
            title: 'Billing',
          ),
          DrawerTile(
            screen: ReportsScreen(),
            title: 'Reports',
          ),
          DrawerTile(
            screen: SettingsScreen(),
            title: 'Settings',
          )
          // Add more items to the drawer as needed
        ],
      ),
    );
  }
}

class DrawerTile extends StatelessWidget {
  final String title;
  final Widget screen;
  const DrawerTile({super.key, required this.title, required this.screen});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
    );
  }
}
