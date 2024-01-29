import 'package:billing/modules/orders/models/order_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class OrdersCard extends StatelessWidget {
  final Order order;
  const OrdersCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 0,
        child: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.green, width: 1),
              borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: [
              Container(
                width: 300,
                height: 148,
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Prakash Sreenivasan",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          "BILL-${order.id.toString()}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        // Text(
                        //   "AC Hall | 3",
                        //   style: TextStyle(
                        //     color: Colors.grey,
                        //     fontSize: 16,
                        //   ),
                        // ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          order.items.length.toString(),
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text("items")
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$${order.tPrice}",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Text(
                                  "Billed",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.only(bottomLeft: Radius.circular(8)),
                                border: Border.all(width: 1, color: Colors.green)),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add_circle,
                                  color: Colors.green,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Add",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            )))),
                    Expanded(
                        flex: 1,
                        child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.only(bottomRight: Radius.circular(8)),
                                border: Border.all(width: 1, color: Colors.green)),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.check_circle,
                                  color: Colors.green,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Close",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            )))),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
