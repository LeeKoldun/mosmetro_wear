import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wearable_rotary/wearable_rotary.dart';
import '../templates/adapt_screen_base.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  TransformationController controller = TransformationController();
  late StreamSubscription<RotaryEvent> sub;
  bool inited = false;

  late Matrix4 matrix;
  late double scale;
  double minScale = 1;
  double maxScale = 10;
  
  @override
  void initState() {
    super.initState();
    matrix = controller.value;
    scale = controller.value.getMaxScaleOnAxis();

    if(inited) return;

    sub = rotaryEvents.listen((rot) {
      setState(() {
        if(rot.direction == RotaryDirection.clockwise) {
          zoomImage(true, context.size?.shortestSide ?? 0);
        }
        else {
          zoomImage(false, context.size?.shortestSide ?? 0);
        }
      });
    });

    inited = true;
  }

  @override
  void dispose() {
    sub.cancel();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return AdaptScreenBase(
      background: Colors.white,
      builder: (context, size) => Stack(
        children: [
          InteractiveViewer(
            minScale: minScale,
            maxScale: maxScale,
            transformationController: controller,
            child: Image.asset("./assets/images/metro_map.png"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () => zoomImage(true, context.size?.shortestSide ?? 0), 
                icon: const Icon(Icons.add)
              ),
              const SizedBox(width: 10),
              IconButton(
                onPressed: () => zoomImage(false, context.size?.shortestSide ?? 0),
                icon: const Icon(Icons.remove)
              ),
            ],
          ),
        ],
      ),
    );
  }

  void zoomImage(bool zoomIn, double size) => setState(() {
    if(zoomIn) {
      if(scale < maxScale) scale += 0.3;
    }
    else {
      if(scale > minScale) scale -= 0.3;
    }
    final x = Offset(size / 2, size / 2);
    final offset1 = controller.toScene(x);
    controller.value = Matrix4.identity()..scale(scale);
    // controller.value.scale(1.1);
    final offset2 = controller.toScene(x);
    final dx = offset1.dx - offset2.dx;
    final dy = offset1.dy - offset2.dy;
    controller.value.translate(-dx, -dy);
  });
}

class ExpandedTile extends StatefulWidget {
  final String title;

  const ExpandedTile({
    super.key,
    required this.title,
  });
  
  @override
  State<ExpandedTile> createState() => _ExpandedTileState();
}

class _ExpandedTileState extends State<ExpandedTile> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(widget.title),
    );
  }
}