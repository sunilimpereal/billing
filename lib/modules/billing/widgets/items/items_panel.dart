import 'package:billing/modules/billing/models/item_model.dart';
import 'package:billing/modules/billing/widgets/items/items_card.dart';
import 'package:billing/modules/billing/widgets/items/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../constants/ui/image_constants.dart';
import '../../repository/billing_data.dart';

class ItemsPanel extends StatefulWidget {
  const ItemsPanel({super.key});

  @override
  State<ItemsPanel> createState() => _ItemsPanelState();
}

class _ItemsPanelState extends State<ItemsPanel> {
  List<Widget> rows = [];
  @override
  void initState() {
    int l = items.length % 4;
    for (int i = 0; i < (items.length - l); i = i + 4) {
      rows.add(Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ItemCard(item: items[i]),
          ItemCard(item: items[i + 1]),
          ItemCard(item: items[i + 2]),
          ItemCard(item: items[i + 3]),
        ],
      ));
    }
    List<Widget> restItems = [];
    for (int i = items.length - l; i < items.length; i++) {
      restItems.add(ItemCard(item: items[i]));
    }
    rows.add(Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: restItems,
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenl,
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: const Text(
                  "Items",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SearchBar(),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: rows),
                // child: GridView.builder(
                //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //     crossAxisCount: 4, // Set the number of columns in the grid
                //     crossAxisSpacing: 0.0, // Set the spacing between columns
                //     mainAxisSpacing: 0.0, // Set the spacing between rows
                //   ),
                //   itemCount: items.length,
                //   itemBuilder: (context, index) {
                //     return ItemCard(item: items[index]);
                //   },
                // ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
