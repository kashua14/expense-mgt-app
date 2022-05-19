import 'package:e_kitabo/theme/text_theme_x.dart';
import 'package:flutter/material.dart';

import '../model/transaction.dart';
import 'transaction_details.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({
    Key? key, required this.controller,
  }) : super(key: key);

  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
      child: ListView.builder(
          itemCount: Transaction.transactions.length,
          controller: controller,
          itemBuilder: (_, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                index == 0
                    ? Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: Text("Latest Transactions",
                            style: context.headline4),
                      )
                    : const SizedBox(
                        height: 5,
                      ),
                const SizedBox(
                  height: 10,
                ),
                TransactionDetails(
                  transaction: Transaction.transactions[index],
                )
              ],
            );
          }),
    );
  }
}
