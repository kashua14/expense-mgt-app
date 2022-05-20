import 'package:e_kitabo/theme/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension TextThemeStylesX on BuildContext {
  TextStyle? get bodyText1 => Theme.of(this).textTheme.bodyText1;

  TextStyle? get bodyText2 => Theme.of(this).textTheme.bodyText2;

  TextStyle? get subtitle1 => Theme.of(this).textTheme.subtitle1;

  TextStyle? get subtitle2 => Theme.of(this).textTheme.subtitle2;

  TextStyle? get headline1 => Theme.of(this).textTheme.headline1;

  TextStyle? get headline2 => Theme.of(this).textTheme.headline2;

  TextStyle? get headline3 => Theme.of(this).textTheme.headline3;

  TextStyle? get headline4 => Theme.of(this).textTheme.headline4;

  TextStyle? get headline5 => Theme.of(this).textTheme.headline5;

  TextStyle? get headline6 => Theme.of(this).textTheme.headline6;
}


TextTheme lightTextTheme = TextTheme(
  caption: GoogleFonts.urbanist(
    color: Colors.grey,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  ),
  subtitle1: GoogleFonts.urbanist(
    fontSize: 16,
    color: CustomColors.blackDark,
    fontWeight: FontWeight.w500,
  ),
  subtitle2: GoogleFonts.urbanist(
    fontSize: 16,
    color: CustomColors.blackDark,
    fontWeight: FontWeight.w400,
  ),
  bodyText1: GoogleFonts.urbanist(
    fontSize: 14,
    color: CustomColors.blackDark,
    fontWeight: FontWeight.w500,
  ),
  bodyText2: GoogleFonts.urbanist(
    fontSize: 14,
    color: CustomColors.blackDark,
    fontWeight: FontWeight.w400,
  ),
  headline6: GoogleFonts.urbanist(
    fontSize: 20,
    color: CustomColors.blackDark,
    fontWeight: FontWeight.w500,
  ),
  headline5: GoogleFonts.urbanist(
    fontSize: 24,
    color: CustomColors.blackDark,
    fontWeight: FontWeight.w500,
  ),
  headline4: GoogleFonts.urbanist(
    fontSize: 28,
    color: CustomColors.blackDark,
    fontWeight: FontWeight.w500,
  ),
  headline3: GoogleFonts.urbanist(
    fontSize: 32,
    color: CustomColors.blackDark,
    fontWeight: FontWeight.bold,
  ),
  headline2: GoogleFonts.urbanist(
    fontSize: 36,
    color: CustomColors.blackDark,
    fontWeight: FontWeight.bold,
  ),
  headline1: GoogleFonts.urbanist(
    fontSize: 40,
    color: CustomColors.blackDark,
    fontWeight: FontWeight.bold,
  ),
);

TextTheme darkTextTheme = TextTheme(
  caption: GoogleFonts.urbanist(
    color: Colors.grey,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  ),
  subtitle1: GoogleFonts.urbanist(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  ),
  subtitle2: GoogleFonts.urbanist(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.w400,
  ),
  bodyText1: GoogleFonts.urbanist(
    fontSize: 14,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  ),
  bodyText2: GoogleFonts.urbanist(
    fontSize: 14,
    color: Colors.white,
    fontWeight: FontWeight.w400,
  ),
  headline6: GoogleFonts.urbanist(
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.normal,
  ),
  headline5: GoogleFonts.urbanist(
    fontSize: 24,
    color: Colors.white,
    fontWeight: FontWeight.normal,
  ),
  headline4: GoogleFonts.urbanist(
    fontSize: 28,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  ),
  headline3: GoogleFonts.urbanist(
    fontSize: 32,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  ),
  headline2: GoogleFonts.urbanist(
    fontSize: 36,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  ),
  headline1: GoogleFonts.urbanist(
    fontSize: 40,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  ),
);

