import 'package:flutter/material.dart';


class AdaptScreenBase extends StatelessWidget {
  final Widget Function(BuildContext context, Size size) builder;

  const AdaptScreenBase({
    super.key,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return builder(context, size);
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