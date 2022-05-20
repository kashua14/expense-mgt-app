import 'package:e_kitabo/theme/text_theme_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
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
        backgroundColor: Colors.white,
        centerTitle: true, systemOverlayStyle: SystemUiOverlayStyle.dark,
        iconTheme: const IconThemeData(color: CustomColors.blackDark),
        titleTextStyle: lightTextTheme.headline4,
      ),
      textSelectionTheme: const TextSelectionThemeData(
          selectionColor: CustomColors.accentColor),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: CustomColors.primaryColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: CustomColors.grayLight,
        selectedIconTheme:
            const IconThemeData(color: CustomColors.primaryColor),
      ),
      iconTheme: const IconThemeData(color: CustomColors.blackDark),
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
        systemOverlayStyle: SystemUiOverlayStyle.light,
        centerTitle: true,
        iconTheme: const IconThemeData(color: CustomColors.accentColor),
        titleTextStyle: darkTextTheme.headline4,
      ),
      textSelectionTheme: const TextSelectionThemeData(
          selectionColor: CustomColors.accentColor),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: CustomColors.primaryColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: CustomColors.blackLight,
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
