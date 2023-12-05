import 'package:flutter/material.dart';

class BillCard extends StatelessWidget {
  final String productName;
  final double productPrice;
  final int quantity;
  final String imagePath;

  const BillCard({
    super.key,
    required this.productName,
    required this.productPrice,
    required this.quantity,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    double totalPrice = productPrice * quantity;

    return Card(
      elevation: 0,
      margin: EdgeInsets.all(4),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              imagePath,
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
                      productName,
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
                          '\$${productPrice.toStringAsFixed(2)}',
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
                          '$quantity Qty',
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '\$${totalPrice.toStringAsFixed(2)}',
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
