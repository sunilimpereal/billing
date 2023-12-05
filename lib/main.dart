import 'package:billing/constants/ui/theme_constants.dart';
import 'package:flutter/material.dart';

import 'modules/billing/screen/billing_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Billing',
      theme: AppTheme.lightTheme,
      home: const BillingHomeScreen(),
    );
  }
}
