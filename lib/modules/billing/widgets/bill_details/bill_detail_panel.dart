import 'package:billing/constants/ui/image_constants.dart';
import 'package:billing/modules/billing/widgets/bill_details/button_section.dart';
import 'package:billing/modules/billing/widgets/bill_details/price_detail_dec.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'bill_card.dart';

class BillDetailPanel extends StatefulWidget {
  const BillDetailPanel({super.key});

  @override
  State<BillDetailPanel> createState() => _BillDetailPanelState();
}

class _BillDetailPanelState extends State<BillDetailPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: const [
                BillCard(
                  imagePath: AppImages.itemPaceholder,
                  productName: 'T shirt',
                  productPrice: 50,
                  quantity: 2,
                ),
                BillCard(
                  imagePath: AppImages.itemPaceholder,
                  productName: 'T shirt',
                  productPrice: 50,
                  quantity: 2,
                ),
                BillCard(
                  imagePath: AppImages.itemPaceholder,
                  productName: 'T shirt',
                  productPrice: 50,
                  quantity: 2,
                ),
              ],
            ),
          ),
          InvoiceWidget(),
          ButtonSection()
        ],
      ),
    );
  }
}
