import 'package:flutter/material.dart';

import '../templates/adapt_screen_base.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return AdaptScreenBase(
      builder: (context, size) => const Placeholder(),
    );
  }
}