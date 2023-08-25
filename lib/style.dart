import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData.from(
  colorScheme: const ColorScheme(
    brightness: Brightness.light, 
    primary: primary, 
    onPrimary: onPrimary, 
    secondary: secondary, 
    onSecondary: onSecondary, 
    error: error, 
    onError: onError, 
    background: background, 
    onBackground: onBackground, 
    surface: surface, 
    onSurface: onSurface
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: onSecondary),
    bodyMedium: TextStyle(color: onSecondary),
    bodySmall: TextStyle(color: onSecondary),

    displayLarge: TextStyle(color: onSecondary),
    displayMedium: TextStyle(color: onSecondary),
    displaySmall: TextStyle(color: onSecondary),

    headlineLarge: TextStyle(color: onSecondary),
    headlineMedium: TextStyle(color: onSecondary),
    headlineSmall: TextStyle(color: onSecondary),

    labelLarge: TextStyle(color: onSecondary),
    labelMedium: TextStyle(color: onSecondary),
    labelSmall: TextStyle(color: onSecondary),

    titleLarge: TextStyle(color: onSecondary),
    titleMedium: TextStyle(color: onSecondary),
    titleSmall: TextStyle(color: onSecondary),
  ),
);

const Color primary = Color(0xFF3A3A3A);
// const Color primary = Color(0xFF6B6B6B);
const Color onPrimary = Color(0xFF555555);

const Color secondary = Color(0xFF500000);
const Color onSecondary = Color(0xFFFF3B3B);

const Color error = Color(0xFFFF0000);
const Color onError = Color(0xFFFF4D4D);

const Color background = Color(0xFF323232);
const Color onBackground = Color(0xFF696969);

const Color surface = Color(0xFFFFAEAE);
const Color onSurface = Color(0xFFFF8484);

const LinearGradient backgroundGradient = LinearGradient(
  begin: Alignment.topCenter, 
  end: Alignment.bottomCenter, 
  colors: [background, Colors.black],
);

final RoundedRectangleBorder roundBorder = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(30),
);