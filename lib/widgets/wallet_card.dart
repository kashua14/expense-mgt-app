import 'package:e_kitabo/theme/text_theme_x.dart';
import 'package:e_kitabo/utils/enums.dart';
import 'package:flutter/material.dart';

import '../model/wallet.dart';
import '../theme/custom_colors.dart';
import '../theme/custom_theme.dart';
import '../utils/app_utils.dart';
import 'svg_asset_picture.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({
    Key? key,
    required this.wallet,
  }) : super(key: key);

  final Wallet wallet;

  @override
  Widget build(BuildContext context) {

    String assetName = "";
    switch (wallet.type) {
      case WalletType.crypto:
        assetName = "assets/icons/crypto.svg";
        break;
      case WalletType.mobileMoney:
        assetName = "assets/icons/mobile-money.svg";
        break;
      case WalletType.physicalWallet:
        assetName = "assets/icons/wallet.svg";
        break;
      default:
        assetName = "assets/icons/account-logo.svg";
        break;
    }
    bool isNegative = wallet.amount < 10000;

    return Container(
      padding: const EdgeInsets.all(15.0),
      width: 150,
      decoration: BoxDecoration(
        color: CustomTheme.isDarkModeOn()
            ? CustomColors.blackLight
            : CustomColors.grayLight,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgAssetPicture(assetName: assetName),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(wallet.name, style: context.subtitle2),
                Expanded(
                  child: Text.rich(
                    TextSpan(
                        text: AppUtils.currencyFormatter(wallet.amount)
                            .split(' ')[0],
                        style: context.bodyText1?.copyWith(
                          color: isNegative ? CustomColors.red : Colors.green,
                        ),
                        children: [
                          TextSpan(
                            text:
                                " ${AppUtils.currencyFormatter(wallet.amount).split(' ')[1]}",
                            style: context.subtitle2?.copyWith(
                              color:
                                  isNegative ? CustomColors.red : Colors.green,
                            ),
                          ),
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
