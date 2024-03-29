import 'package:e_kitabo/model/transaction.dart';
import 'package:e_kitabo/theme/text_theme_x.dart';
import 'package:flutter/material.dart';

import '../theme/custom_colors.dart';
import '../utils/app_utils.dart';

class TransactionDetails extends StatelessWidget {
  final Transaction transaction;

  const TransactionDetails({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String amountVal = AppUtils.numberFormat(transaction.amount);
    bool isNegative = transaction.amount < 0;
    amountVal =
        isNegative ? amountVal.replaceFirst(RegExp(r'-'), "") : amountVal;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(transaction.name, style: context.headline6),
            Text(
              transaction.wallet,
              style: context.bodyText1?.copyWith(color: CustomColors.grayDark),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              AppUtils.currencyFormatter(transaction.amount),
              style: context.subtitle1?.copyWith(
                  color: isNegative ? CustomColors.red : Colors.green),
            ),
            // Row(
            //   children: [
            //     Text(
            //       transaction.date,
            //       style:
            //       context.bodyText1?.copyWith(color: CustomColors.grayDark),
            //     ),
            //     Text(
            //       " | ",
            //       style: context.headline6
            //           ?.copyWith(color: CustomColors.grayMedium),
            //     ),
            //     Text(
            //       transaction.time,
            //       style: context.bodyText1
            //           ?.copyWith(color: CustomColors.grayDark),
            //     ),
            //   ],
            // ),
            Text.rich(
              TextSpan(
                text: transaction.date,
                style:
                    context.bodyText1?.copyWith(color: CustomColors.grayDark),
                children: [
                  TextSpan(
                    text: " | ",
                    style: context.headline6
                        ?.copyWith(color: CustomColors.grayMedium),
                  ),
                  TextSpan(
                    text: transaction.time,
                    style: context.bodyText1
                        ?.copyWith(color: CustomColors.grayDark),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
