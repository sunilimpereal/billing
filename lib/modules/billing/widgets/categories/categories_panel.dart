import 'package:billing/modules/billing/repository/billing_data.dart';
import 'package:flutter/material.dart';

import 'category_card.dart';

class BillingCategoriesPanel extends StatefulWidget {
  const BillingCategoriesPanel({super.key});

  @override
  State<BillingCategoriesPanel> createState() => _BillingCategoriesPanelState();
}

class _BillingCategoriesPanelState extends State<BillingCategoriesPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            alignment: Alignment.centerLeft,
            child: const Text(
              "Categories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Column(
              children: category
                  .map((e) => CategoryCard(
                        itemCategory: e,
                      ))
                  .toList())
        ],
      ),
    );
  }
}
