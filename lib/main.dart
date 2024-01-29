import 'package:billing/constants/ui/theme_constants.dart';
import 'package:billing/modules/billing/bloc/billing_bloc.dart';
import 'package:billing/modules/orders/bloc/orders_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      home: MultiBlocListener(
        listeners: [
          BlocProvider<BillingBloc>(
            create: (BuildContext context) => BillingBloc(),
          ),
          BlocProvider<OrdersBloc>(
            create: (BuildContext context) => OrdersBloc(),
          ),
        ],
        child: BillingHomeScreen(),
      ),
    );
  }
}
