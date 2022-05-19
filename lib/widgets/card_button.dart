import 'package:flutter/material.dart';

import '../theme/custom_colors.dart';
import '../theme/custom_theme.dart';

class CardButton extends StatelessWidget {
  const CardButton(
      {Key? key,
      required this.icon,
      this.iconSize,
      this.iconColor,
      required this.onPressed})
      : super(key: key);

  final IconData icon;
  final double? iconSize;
  final Color? iconColor;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 60,
      child: Container(
        decoration: BoxDecoration(
          color: CustomTheme.isDarkModeOn() ? CustomColors.blackLight : CustomColors.grayMedium,
          borderRadius: BorderRadius.circular(15),
        ),
        child: GestureDetector(
          onTap: onPressed,
          child: IconButton(
            onPressed: () {},
            icon: Icon(icon, size: iconSize ?? 35),
            color: iconColor ?? CustomTheme.isDarkModeOn() ?Colors.white  : CustomColors.blackLight,
          ),
        ),
      ),
    );
  }
}
