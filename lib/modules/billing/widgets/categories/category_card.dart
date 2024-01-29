import 'package:billing/modules/billing/models/item_category.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatefulWidget {
  final ItemCategory itemCategory;
  const CategoryCard({super.key, required this.itemCategory});

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    bool isSelected = false;
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: ListTile(
          horizontalTitleGap: 6,
          leading: Container(
            width: 40,
            height: 34,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: NetworkImage(widget.itemCategory.imageUrl), fit: BoxFit.cover),
            ),
          ),
          title: Text(
            widget.itemCategory.name,
            overflow: TextOverflow.clip,
            maxLines: 1,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
