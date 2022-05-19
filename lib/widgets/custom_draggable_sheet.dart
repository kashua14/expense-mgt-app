import 'package:e_kitabo/theme/custom_theme.dart';
import 'package:e_kitabo/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

import '../theme/custom_colors.dart';

class CustomDraggableSheet extends StatelessWidget {
  const CustomDraggableSheet({
    Key? key,
    // required this.child,
  }) : super(key: key);

  // final Widget child;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: 0.3,
        minChildSize: 0.3,
        maxChildSize: 0.7,
        builder: (_, ScrollController scrollController) {
          return Container(
            decoration: BoxDecoration(
              color: CustomTheme.isDarkModeOn() ? CustomColors.blackLight : CustomColors.grayMedium,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Scrollbar(
              // thumbVisibility: false,
              child: TransactionList(controller: scrollController),
            ),
          );
        });
  }
}
