import 'package:billing/constants/ui/color_constants.dart';
import 'package:billing/modules/billing/widgets/home/tab_bar.dart';
import 'package:billing/modules/orders/orders_screen.dart';
import 'package:billing/modules/tables/widgets/tables_cat_panel.dart';
import 'package:billing/modules/waiters/waiters_panel.dart';
import 'package:flutter/material.dart';

import '../../../componenets/app_drawer.dart';
import '../../tables/screen/table_panel.dart';
import '../widgets/bill_details/bill_detail_panel.dart';
import '../widgets/categories/categories_panel.dart';
import '../widgets/items/items_panel.dart';

class BillingHomeScreen extends StatefulWidget {
  const BillingHomeScreen({super.key});

  @override
  State<BillingHomeScreen> createState() => _BillingHomeScreenState();
}

class _BillingHomeScreenState extends State<BillingHomeScreen> {
  int selectedIndex = 0;
  List<Widget> screens = [
    billing(),
    tables(),
    waiters(),
    OrdersScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 8,
          child: Scaffold(
            drawer: const AppDrawer(),
            appBar: AppBar(
              title: Text(
                "Billing",
                style: TextStyle(color: AppColors.secondaryTextColor),
              ),
            ),
            body: DefaultTabController(
              length: 4,
              child: Container(
                // height: double.minPositive,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: AppTabBar(
                        onChanged: (index) {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        selectedIndex: selectedIndex,
                      ),
                    ),
                    screens[selectedIndex]
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
            flex: 2,
            child: Container(
              child: const BillDetailPanel(),
            ))
      ],
    );
  }

  static Widget billing() {
    return layout(sidePanel: BillingCategoriesPanel(), mainPanel: ItemsPanel());
  }

  static Widget tables() {
    return layout(sidePanel: TableCategoryPanel(), mainPanel: TablePanel());
  }

  static Widget waiters() {
    return layout(sidePanel: TableCategoryPanel(), mainPanel: WaitersPanel());
  }

  static Widget orders() {
    return layout(sidePanel: TableCategoryPanel(), mainPanel: WaitersPanel());
  }

  static Widget layout({required Widget sidePanel, required Widget mainPanel}) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            flex: 2, // Represents 20% of the available space
            child: Container(
              // color: Colors.green,
              child: sidePanel,
            ),
          ),
          Expanded(
            flex: 10, // Represents 80% of the available space
            child: Container(
              child: mainPanel,
            ),
          ),
        ],
      ),
    );
  }
}
