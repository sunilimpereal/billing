// To parse this JSON data, do
//
//     final itemCategory = itemCategoryFromJson(jsonString);

import 'dart:convert';

ItemCategory itemCategoryFromJson(String str) => ItemCategory.fromJson(json.decode(str));

String itemCategoryToJson(ItemCategory data) => json.encode(data.toJson());

class ItemCategory {
  int id;
  String name;
  String imageUrl;

  ItemCategory({
    required this.id,
    required this.name,
    this.imageUrl = "",
  });

  factory ItemCategory.fromJson(Map<String, dynamic> json) => ItemCategory(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
