import 'package:flutter/material.dart';

import '../style.dart';

class RoundContainer extends StatelessWidget {
  final double radius;
  final double? width;
  final double? height;
  final double elevation;
  final BoxBorder? border;
  final Color color;
  final Widget child;

  const RoundContainer({
    super.key,
    required this.child,
    this.width,
    this.height,
    this.border,
    this.elevation = 5,
    this.color = primary,
    this.radius = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          border: border,
          color: color,
        ),
        child: child,
      ),
    );
  }
}