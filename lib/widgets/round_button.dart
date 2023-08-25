import 'package:flutter/material.dart';
import 'package:mosmetro_wear/style.dart';

class RoundButton extends StatelessWidget {
  final double radius;
  final double? width;
  final double? height;
  final double elevation;
  final Color foreground;
  final Color background;
  final VoidCallback onPressed;
  final Widget child;
  final bool withBorder;
  
  const RoundButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.width,
    this.height,
    this.elevation = 5,
    this.background = primary,
    this.foreground = onSecondary,
    this.radius = 25,
    this.withBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: elevation,
          foregroundColor: foreground,
          backgroundColor: background,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          side: withBorder ? const BorderSide(width: 4, color: onSecondary) : null,
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}