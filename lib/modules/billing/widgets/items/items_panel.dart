import 'package:billing/modules/billing/widgets/items/items_card.dart';
import 'package:billing/modules/billing/widgets/items/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../constants/ui/image_constants.dart';

class ItemsPanel extends StatefulWidget {
  const ItemsPanel({super.key});

  @override
  State<ItemsPanel> createState() => _ItemsPanelState();
}

class _ItemsPanelState extends State<ItemsPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ItemCard(
                  imagePath: AppImages.itemPaceholder,
                  itemName: 'Item',
                  itemPrice: '7878',
                ),
                ItemCard(
                  imagePath: AppImages.itemPaceholder,
                  itemName: 'Item',
                  itemPrice: '7878',
                ),
                ItemCard(
                  imagePath: AppImages.itemPaceholder,
                  itemName: 'Item',
                  itemPrice: '7878',
                ),
                ItemCard(
                  imagePath: AppImages.itemPaceholder,
                  itemName: 'Item',
                  itemPrice: '7878',
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ItemCard(
                  imagePath: AppImages.itemPaceholder,
                  itemName: 'Item',
                  itemPrice: '7878',
                ),
                ItemCard(
                  imagePath: AppImages.itemPaceholder,
                  itemName: 'Item',
                  itemPrice: '7878',
                ),
                ItemCard(
                  imagePath: AppImages.itemPaceholder,
                  itemName: 'Item',
                  itemPrice: '7878',
                ),
                ItemCard(
                  imagePath: AppImages.itemPaceholder,
                  itemName: 'Item',
                  itemPrice: '7878',
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
