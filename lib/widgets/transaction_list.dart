import 'package:e_kitabo/theme/text_theme_x.dart';
import 'package:flutter/material.dart';

import '../model/transaction.dart';
import 'transaction_details.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({
    Key? key,
    this.controller,
  }) : super(key: key);

  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      // margin: const EdgeInsets.only(top: 30.0),
      child: ListView.builder(
        shrinkWrap: true,
          itemCount: Transaction.transactions.length,
          controller: controller,
          itemBuilder: (_, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                TransactionDetails(
                  transaction: Transaction.transactions[index],
                )
              ],
            );
          }),
    );
  }
}
