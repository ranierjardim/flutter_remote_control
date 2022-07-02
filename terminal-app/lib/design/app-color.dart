import 'dart:ui';

import 'package:flutter/material.dart';

class AppColor {
  static Brightness brightness = Brightness.dark;

  static Color primary = const Color.fromARGB(255, 208, 188, 255);
  static Color onPrimary = const Color.fromARGB(255, 56, 30, 114);
  static Color primaryContainer = const Color.fromARGB(255, 79, 55, 139);
  static Color onPrimaryContainer = const Color.fromARGB(255, 234, 221, 255);

  static Color secondary = const Color.fromARGB(255, 204, 194, 220);
  static Color onSecondary = const Color.fromARGB(255, 51, 45, 65);
  static Color secondaryContainer = const Color.fromARGB(255, 74, 68, 88);
  static Color onSecondaryContainer = const Color.fromARGB(255, 232, 222, 248);

  static Color tertiary = const Color.fromARGB(255, 239, 184, 200);
  static Color onTertiary = const Color.fromARGB(255, 73, 37, 50);
  static Color tertiaryContainer = const Color.fromARGB(255, 99, 59, 72);
  static Color onTertiaryContainer = const Color.fromARGB(255, 255, 216, 228);

  static Color error = const Color.fromARGB(255, 242, 184, 181);
  static Color onError = const Color.fromARGB(255, 96, 20, 16);
  static Color errorContainer = const Color.fromARGB(255, 140, 29, 24);
  static Color onErrorContainer = const Color.fromARGB(255, 249, 222, 220);

  static Color background = const Color.fromARGB(255, 28, 27, 31);
  static Color onBackground = const Color.fromARGB(255, 230, 225, 229);
  static Color surface = const Color.fromARGB(255, 28, 27, 31);
  static Color onSurface = const Color.fromARGB(255, 230, 225, 229);

  static Color surfaceVariant = const Color.fromARGB(255, 73, 69, 79);
  static Color onSurfaceVariant = const Color.fromARGB(255, 202, 196, 208);
  static Color outline = const Color.fromARGB(255, 147, 143, 153);

  static Color startingServerConnecting =
      const Color.fromARGB(255, 63, 82, 255);
  static Color successConnected = const Color.fromARGB(255, 86, 189, 102);
  static Color wrongSlowConnection = const Color.fromARGB(255, 255, 167, 63);
  static Color errorDisconnected = const Color.fromARGB(255, 255, 0, 0);

  AppColor();

  static loadFromJSON() {
    AppColor.primary = const Color.fromARGB(255, 0, 0, 0);
  }

  static get colorScheme => ColorScheme(
        brightness: brightness,
        primary: primary,
        onPrimary: onPrimary,
        primaryContainer: primaryContainer,
        onPrimaryContainer: onPrimaryContainer,
        secondary: secondary,
        onSecondary: onSecondary,
        secondaryContainer: secondaryContainer,
        onSecondaryContainer: onSecondaryContainer,
        error: error,
        onError: onError,
        background: background,
        onBackground: onBackground,
        surface: surface,
        onSurface: onSurface,
      );
}
