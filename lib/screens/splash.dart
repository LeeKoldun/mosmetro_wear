import 'package:flutter/material.dart';
import 'package:mosmetro_wear/screens/main_screen.dart';
import 'package:mosmetro_wear/style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushAndRemoveUntil(
        context, 
        MaterialPageRoute(builder: (context) => const MainScreen()), 
        (route) => false
      );
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return const Center(child: Icon(Icons.directions_subway, color: primary, size: 80));
  }
}