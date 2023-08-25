import 'package:flutter/material.dart';
import 'package:mosmetro_wear/style.dart';


class AdaptScreenBase extends StatelessWidget {
  final Widget Function(BuildContext context, double size) builder;
  final Color? background;

  final bool inDebug = false;

  const AdaptScreenBase({
    super.key,
    required this.builder,
    this.background,
  });

  @override
  Widget build(BuildContext context) {
    if(!inDebug) {
      double size = MediaQuery.of(context).size.shortestSide;
      return Scaffold(
        body: Center(
          child: FittedBox(
            child: Container(
              decoration: BoxDecoration(
                color: background,
                gradient: background == null ? backgroundGradient : null
              ),
              width: size,
              height: size,
              child: builder(context, size)
            ),
          ),
        ),
      );
    }
    else {
      double size = 450;
      return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: FittedBox(
            child: Container(
              decoration: BoxDecoration(
                color: background,
                gradient: background == null ? backgroundGradient : null
              ),
              width: size,
              height: size,
              child: builder(context, size)
            ),
          ),
        ),
      );
    }
  }
}

// class AmbientScreen extends StatelessWidget {
//   const AmbientScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Icon(Icons.directions_subway, size: 80),
//     );
//   }
// }