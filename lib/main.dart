import 'package:flutter/material.dart';
import 'package:mosmetro_wear/screens/splash.dart';
import 'package:mosmetro_wear/widgets/wear_screen_base.dart';

import 'style.dart';

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
  Widget build(BuildContext context) => const WearScreenBase(
    child: SplashScreen()
  );
}
