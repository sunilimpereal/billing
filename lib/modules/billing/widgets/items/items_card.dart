import 'dart:developer';

import 'package:billing/modules/billing/bloc/billing_bloc.dart';
import 'package:billing/modules/billing/models/bill_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/item_model.dart';

class ItemCard extends StatefulWidget {
  Item item;
  ItemCard({
    required this.item,
  });

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  int itemCount = 0;

  void incrementCounter() {
    setState(() {
      itemCount++;
    });
  }

  void decrementCounter() {
    setState(() {
      if (itemCount > 1) {
        itemCount--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BillingBloc, BillingState>(
      builder: (context, state) {
        BillItem? billitem;
        itemCount = 0;
        log(state.billItems.toString());
        for (BillItem item in state.billItems) {
          if (item.item.id == widget.item.id) {
            billitem = item;
            itemCount = billitem.qty;
          }
        }

        return Container(
          width: 200,
          height: 280,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Card(
            elevation: 0,
            margin: const EdgeInsets.all(8),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
                    child: Image.asset(
                      widget.item.images[0],
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            widget.item.name,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            '\$ ${widget.item.price}',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.green,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              countButton(
                                iconData: Icons.remove,
                                onPressed: () {
                                  context
                                      .read<BillingBloc>()
                                      .add(ReduceItemInBillEvent(item: widget.item, qty: 1));
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  '$itemCount',
                                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                ),
                              ),
                              countButton(
                                iconData: Icons.add,
                                onPressed: () {
                                  context
                                      .read<BillingBloc>()
                                      .add(AddItemInBillEvent(item: widget.item, qty: 1));
                                },
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget countButton({
    required IconData iconData,
    required Function() onPressed,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        fixedSize: const Size(20, 20), // Set button size
      ),
      child: Center(child: Icon(iconData)),
    );
  }
}
