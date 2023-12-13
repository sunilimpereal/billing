// To parse this JSON data, do
//
//     final bill = billFromJson(jsonString);

import 'dart:convert';

import 'package:billing/modules/billing/models/item_model.dart';

Bill billFromJson(String str) => Bill.fromJson(json.decode(str));

String billToJson(Bill data) => json.encode(data.toJson());

class Bill {
  int id;
  String billNumber;
  List<BillItem> items;
  int total;
  int discount;
  int taxValue;

  Bill({
    required this.id,
    required this.billNumber,
    required this.items,
    required this.total,
    required this.discount,
    required this.taxValue,
  });

  factory Bill.fromJson(Map<String, dynamic> json) => Bill(
        id: json["id"],
        billNumber: json["bill_number"],
        items: List<BillItem>.from(json["items"].map((x) => x)),
        total: json["total"],
        discount: json["discount"],
        taxValue: json["tax_value"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "bill_number": billNumber,
        "items": List<dynamic>.from(items.map((x) => x)),
        "total": total,
        "discount": discount,
        "tax_value": taxValue,
      };
}

class BillItem {
  Item item;
  int qty;
  BillItem({required this.item, required this.qty});
}
