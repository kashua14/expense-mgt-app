import 'package:flutter/material.dart';

import '../model/transaction.dart';
import '../theme/custom_colors.dart';
import '../theme/text_theme_x.dart';
import '../widgets/transaction_details.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              _header(context),
            ],
          ),
        ),
        _buildDraggableScrollableSheet(),
      ],
    );
  }

  DraggableScrollableSheet _buildDraggableScrollableSheet() {
    return DraggableScrollableSheet(
        initialChildSize: 0.3,
        minChildSize: 0.3,
        maxChildSize: 0.7,
        builder: (BuildContext cxt, ScrollController scrollController) {
          return Container(
            decoration: BoxDecoration(
              color: CustomColors.blackLight,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Scrollbar(
              // thumbVisibility: false,
              child: Container(
                padding:
                    const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
                child: ListView.builder(
                    itemCount: Transaction.transactions.length,
                    controller: scrollController,
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
              ),
            ),
          );
        });
  }

  Row _summaryReport(BuildContext context, IconData icon, Color backgroundColor,
      String reportType, String amount) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(icon, color: Colors.white, size: 25),
          ),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Total $reportType",
              style: context.subtitle1
                  ?.copyWith(fontSize: 18, color: CustomColors.grayDark),
            ),
            Text(
              "UGX $amount",
              style:
                  context.subtitle1?.copyWith(color: CustomColors.grayMedium),
            )
          ],
        ),
      ],
    );
  }

  Column _header(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text("Hello, ",
                    style: context.headline4
                        ?.copyWith(color: CustomColors.grayDark)),
                Text.rich(
                  TextSpan(
                      text: "Kasasira ",
                      style: context.headline2?.copyWith(letterSpacing: 1.5),
                      children: [
                        TextSpan(text: "👋", style: context.headline2)
                      ]),
                )
              ],
            ),
            const SizedBox(
              height: 50,
              width: 50,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/myPic.png"),
              ),
            )
          ],
        ),
        const SizedBox(height: 30.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _summaryReport(context, Icons.arrow_upward, Colors.green, "Income",
                "200,345.00"),
            _summaryReport(context, Icons.arrow_downward, Colors.red,
                "Expenses", "100,345.00")
          ],
        ),
      ],
    );
  }
}
