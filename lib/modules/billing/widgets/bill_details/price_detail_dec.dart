import 'package:flutter/material.dart';

import '../../../../utils/a.dart';

class InvoiceWidget extends StatelessWidget {
  final double subtotal = 1200;
  final double discount = 0;
  final double taxValue = 0;

  @override
  Widget build(BuildContext context) {
    double totalAmount = subtotal - discount + taxValue;

    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                width: 1.0,
              ),
              bottom: BorderSide(
                width: 1.0,
              ),
            ),
            // color: Colors.red,
          ),
          // height: MediaQuery.of(context).size.height * 0.2,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    verticalValue(
                        title: 'SubTotal', value: '\$${subtotal.toString()}'),
                    verticalValue(
                        title: 'Discount', value: '\$${discount.toString()}'),
                    verticalValue(
                        title: 'Tax Value', value: '\$${taxValue.toString()}')
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                const Divider(), // Divider for visual separation
                Text(
                  'Total Amount: \$${totalAmount.toString()}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget verticalValue({required String title, required String value}) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.grey, // Customize the default text color
          ),
        ),
        Text(value,
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            )),
      ],
    );
  }
}
