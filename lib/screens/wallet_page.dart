import 'package:e_kitabo/model/wallet.dart';
import 'package:e_kitabo/utils/enums.dart';
import 'package:e_kitabo/widgets/wallet_card.dart';
import 'package:e_kitabo/theme/text_theme_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme/custom_colors.dart';
import '../theme/custom_theme.dart';
import '../widgets/svg_asset_picture.dart';
import '../widgets/transaction_list.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness:
        CustomTheme.isDarkModeOn() ? Brightness.light : Brightness.dark,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Text("My Wallets", style: context.headline4),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {},
              icon: SvgAssetPicture(
                assetName: "assets/icons/add.svg",
                color: CustomTheme.isDarkModeOn()
                    ? CustomColors.grayMedium
                    : CustomColors.blackDark,
              ),
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Your total balance", style: context.subtitle1),
                Text.rich(
                  TextSpan(text: "UGX ", style: context.headline6, children: [
                    TextSpan(text: "900,055.89", style: context.headline3),
                  ]),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 150,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              scrollDirection: Axis.horizontal,
                itemCount: Wallet.wallets.length,
                itemBuilder: (_, int index) {
                  return Row(
                    children: [
                      WalletCard(
                        wallet: Wallet.wallets[index],
                      ),
                      const SizedBox(width: 10)
                    ],
                  );
                }),
          ),
          const SizedBox(height: 20),
          Container(
              height: MediaQuery.of(context).size.height * 0.45,
              decoration: BoxDecoration(
                color: CustomTheme.isDarkModeOn()
                    ? CustomColors.blackLight
                    : CustomColors.grayLight,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: const TransactionList()),
        ],
      ),
    );
  }
}
