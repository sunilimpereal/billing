// To parse this JSON data, do
//
//     final item = itemFromJson(jsonString);

import 'dart:convert';

Item itemFromJson(String str) => Item.fromJson(json.decode(str));

String itemToJson(Item data) => json.encode(data.toJson());

class Item {
  int id;
  String name;
  int price;
  int discount;
  List<String> images;
  List<int> category;
  int quantity;

  Item({
    required this.id,
    required this.name,
    required this.price,
    required this.discount,
    required this.images,
    required this.category,
    required this.quantity,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        discount: json["discount"],
        images: List<String>.from(json["images"].map((x) => x)),
        category: List<int>.from(json["category"].map((x) => x)),
        quantity: json["quantity"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "discount": discount,
        "images": List<dynamic>.from(images.map((x) => x)),
        "category": List<dynamic>.from(category.map((x) => x)),
        "quantity": quantity,
      };
}
