import 'package:flutter/material.dart';
import 'package:mosmetro_wear/screens/splash.dart';

import 'style.dart';
import 'templates/adapt_screen_base.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    theme: appTheme,
    home: const WatchScreen(),
    debugShowCheckedModeBanner: false,
  );
}

class WatchScreen extends StatelessWidget {
  const WatchScreen({super.key});

  @override
  Widget build(BuildContext context) => AdaptScreenBase(
    builder: (context, size) => const SplashScreen(),
  );
}
