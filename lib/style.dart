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
);

const Color primary = Color(0xFFC52E2E);
const Color onPrimary = Color(0xFFBD6767);

const Color secondary = Color(0xFF707070);
const Color onSecondary = Color(0xFFBDBDBD);

const Color error = Color(0xFFFF0000);
const Color onError = Color(0xFFFF4D4D);

const Color background = Color(0xFF181818);
const Color onBackground = Color(0xFF3B3B3B);

const Color surface = Color(0xFFFFAEAE);
const Color onSurface = Color(0xFFFF8484);