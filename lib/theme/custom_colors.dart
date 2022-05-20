import 'package:flutter/material.dart';

/// [Color] and [ColorSwatch] values from the app's visual identity.
///
class CustomColors {
  static MaterialColor get primary => primaryColor.toMaterialColor();

  static MaterialAccentColor get accent =>
      primaryColor.toMaterialAccentColor();
  static Color get blackLight => const Color(0xFF21262B);
  static Color get darkBlue => const Color(0xFF2F333F);
  static Color get red => const Color(0xFFF22C2C);
  static Color get grayLight => const Color(0xFFF6F6F6);

  static const Color blackDark = Color(0xFF12141D);
  static const Color primaryColor = Color(0xFF1AE4FE);
  static const Color accentColor = Color(0xFF38E1F6);
  static const Color grayMedium = Color(0xFFE6E6E6);
  static const Color grayDark = Color(0xFF555C64);

}

extension _Material on Color {
  Map<int, Color> _toSwatch() => {
    50: withOpacity(0.1),
    100: withOpacity(0.2),
    200: withOpacity(0.3),
    300: withOpacity(0.4),
    400: withOpacity(0.5),
    500: withOpacity(0.6),
    600: withOpacity(0.7),
    700: withOpacity(0.8),
    800: withOpacity(0.9),
    900: this,
  };

  MaterialColor toMaterialColor() => MaterialColor(
    value,
    _toSwatch(),
  );

  MaterialAccentColor toMaterialAccentColor() => MaterialAccentColor(
    value,
    _toSwatch(),
  );
}