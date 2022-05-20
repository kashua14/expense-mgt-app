import 'package:e_kitabo/theme/custom_theme.dart';
import 'package:e_kitabo/theme/text_theme_x.dart';
import 'package:e_kitabo/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

import '../theme/custom_colors.dart';

class CustomDraggableSheet extends StatelessWidget {
  const CustomDraggableSheet({
    Key? key,
    required this.maxSize,
    required this.minSize,
    required this.initialSize,
  }) : super(key: key);

  final double initialSize;
  final double maxSize;
  final double minSize;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: initialSize,
        minChildSize: minSize,
        maxChildSize: maxSize,
        builder: (_, ScrollController scrollController) {
          return Container(
            decoration: BoxDecoration(
              color: CustomTheme.isDarkModeOn()
                  ? CustomColors.blackLight
                  : CustomColors.grayLight,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Scrollbar(
              // thumbVisibility: false,
              child: Column(
                children: [
                  const Icon(Icons.drag_handle, size: 30),
                  // const SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.only(bottom: 5),
                    child:
                        Text("Latest Transactions", style: context.headline4),
                  ),
                  Expanded(
                    child: TransactionList(controller: scrollController),
                  ),
                  // const SizedBox(height: 20),
                ],
              ),
            ),
          );
        });
  }
}
