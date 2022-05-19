import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/custom_colors.dart';

class SvgAssetPicture extends StatelessWidget {
  const SvgAssetPicture(
      {Key? key,
      required this.assetName,
      this.color,
      this.semanticsLabel})
      : super(key: key);

  final String? semanticsLabel;
  final String assetName;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetName,

      color: color ?? CustomColors.grayDark,
      semanticsLabel: semanticsLabel??"",
    );
  }
}
