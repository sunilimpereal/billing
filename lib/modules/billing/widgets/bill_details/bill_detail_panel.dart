import 'package:billing/constants/ui/image_constants.dart';
import 'package:billing/modules/billing/bloc/billing_bloc.dart';
import 'package:billing/modules/billing/widgets/bill_details/button_section.dart';
import 'package:billing/modules/billing/widgets/bill_details/price_detail_dec.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bill_card.dart';

class BillDetailPanel extends StatefulWidget {
  const BillDetailPanel({super.key});

  @override
  State<BillDetailPanel> createState() => _BillDetailPanelState();
}

class _BillDetailPanelState extends State<BillDetailPanel> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BillingBloc, BillingState>(
      builder: (context, state) {
        return Scaffold(
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                      children: state.billItems
                          .map(
                            (e) => BillCard(
                              billItem: e,
                            ),
                          )
                          .toList()),
                ),
              ),
              InvoiceWidget(),
              ButtonSection()
            ],
          ),
        );
      },
    );
  }
}
