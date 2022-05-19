import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_colors.dart';

class CustomTheme {
  CustomTheme._();

  // static ThemeData get theme => ThemeData(
  //       primarySwatch: CustomColors.primary,
  //       scaffoldBackgroundColor: Colors.white,
  //       appBarTheme: AppBarTheme(
  //         elevation: 0,
  //         // backgroundColor: Colors.white,
  //         centerTitle: true,
  //         iconTheme: const IconThemeData(color: CustomColors.grayDark),
  //         titleTextStyle: GoogleFonts.urbanist(
  //           color: CustomColors.blackDark,
  //           fontSize: 20,
  //           fontWeight: FontWeight.w500,
  //         ),
  //       ),
  //       floatingActionButtonTheme: const FloatingActionButtonThemeData(
  //         backgroundColor: CustomColors.primaryColor,
  //       ),
  //       buttonTheme: const ButtonThemeData(
  //         colorScheme: ColorScheme.light(primary: CustomColors.primaryColor),
  //       ),
  //       textTheme: lightTextTheme,
  //     );

  static TextTheme lightTextTheme = TextTheme(
    caption: GoogleFonts.urbanist(
      color: Colors.grey,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    subtitle1: GoogleFonts.urbanist(
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
    subtitle2: GoogleFonts.urbanist(
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    bodyText1: GoogleFonts.urbanist(
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    bodyText2: GoogleFonts.urbanist(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    headline6: GoogleFonts.urbanist(
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
    headline5: GoogleFonts.urbanist(
      fontSize: 24,
      fontWeight: FontWeight.w500,
    ),
    headline4: GoogleFonts.urbanist(
      fontSize: 28,
      fontWeight: FontWeight.w500,
    ),
    headline3: GoogleFonts.urbanist(
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    headline2: GoogleFonts.urbanist(
      fontSize: 36,
      fontWeight: FontWeight.bold,
    ),
    headline1: GoogleFonts.urbanist(
      fontSize: 40,
      fontWeight: FontWeight.bold,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
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

  static light() {
    return ThemeData(
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: CustomColors.primaryColor,
        background: Colors.white,
        error: CustomColors.red,
        onError: CustomColors.red,
        brightness: Brightness.light,
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        // backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: const IconThemeData(color: CustomColors.grayDark),
        titleTextStyle: GoogleFonts.urbanist(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
      textSelectionTheme: const TextSelectionThemeData(
          selectionColor: CustomColors.accentColor),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: CustomColors.primaryColor,
      ),
      iconTheme: const IconThemeData(color: CustomColors.grayDark),
      scaffoldBackgroundColor: Colors.white,
      textTheme: lightTextTheme,
    );
  }

  static dark() {
    return ThemeData(
      brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: CustomColors.primaryColor,
        background: CustomColors.blackDark,
        error: CustomColors.red,
        onError: CustomColors.red,
        brightness: Brightness.dark,
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: CustomColors.blackDark,
        centerTitle: true,
        iconTheme: const IconThemeData(color: CustomColors.accentColor),
        titleTextStyle: GoogleFonts.urbanist(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
      textSelectionTheme: const TextSelectionThemeData(
          selectionColor: CustomColors.accentColor),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: CustomColors.primaryColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: CustomColors.blackDark,
        selectedIconTheme:
            const IconThemeData(color: CustomColors.primaryColor),
      ),
      iconTheme: const IconThemeData(color: CustomColors.grayDark),
      scaffoldBackgroundColor: CustomColors.blackDark,
      textTheme: darkTextTheme,
    );
  }

  static isDarkModeOn() {
    var brightness = SchedulerBinding.instance.window.platformBrightness;
    return brightness == Brightness.dark;
  }
}
