// To parse this JSON data, do
//
//     final order = orderFromJson(jsonString);

import 'dart:convert';

import 'package:billing/modules/billing/models/bill_model.dart';

Order orderFromJson(String str) => Order.fromJson(json.decode(str));

String orderToJson(Order data) => json.encode(data.toJson());

class Order {
  int id;
  String orderNo;
  double tPrice;
  double discount;
  List<BillItem> items;

  Order({
    required this.id,
    required this.orderNo,
    required this.tPrice,
    required this.discount,
    required this.items,
  });

  factory Order.fromJson(Map<String, dynamic> json) => Order(
        id: json["id"],
        orderNo: json["order_no"],
        tPrice: json["t_price"],
        discount: json["discount"],
        items: List<BillItem>.from(json["items"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "order_no": orderNo,
        "t_price": tPrice,
        "discount": discount,
        "items": List<dynamic>.from(items.map((x) => x)),
      };
}
