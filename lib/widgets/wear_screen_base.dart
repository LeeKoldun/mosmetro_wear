import 'package:flutter/material.dart';
import 'package:wear/wear.dart';

import '../helper_classes/globals.dart';

class WearScreenBase extends StatelessWidget {
  final Widget child;

  const WearScreenBase({
    super.key,
    required this.child
  });

  @override
  Widget build(BuildContext context) {
    return WatchShape(
      builder: (context, shape, child) {
        Globals.shape = shape;
        return AmbientMode(
          builder: (context, mode, child) {
            Globals.mode = mode;
            return mode == WearMode.active ? const AmbientScreen() : this.child;
          },
        );
      }
    );
  }
}

class AmbientScreen extends StatelessWidget {
  const AmbientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(Icons.directions_subway, size: 80),
      ),
    );
  }
}