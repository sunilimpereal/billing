import 'package:billing/modules/billing/models/bill_model.dart';
import 'package:flutter/material.dart';

class BillCard extends StatelessWidget {
  final BillItem billItem;
  const BillCard({super.key, required this.billItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.all(4),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              billItem.item.images.first,
              height: 60,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      billItem.item.name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$${billItem.item.price.toStringAsFixed(2)}',
                          style: const TextStyle(
                            // fontSize: 16,
                            color: Colors.green,
                          ),
                        ),
                        const Text(
                          'x',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '${billItem.qty} Qty',
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '\$${(billItem.qty * billItem.item.price).toStringAsFixed(2)}',
                      style: const TextStyle(
                        // fontSize: 16,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
