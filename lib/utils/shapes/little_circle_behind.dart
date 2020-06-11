import 'package:flutter/material.dart';

import 'draw_shapes.dart';

class LittleCircleBehind extends StatelessWidget {
  final Color color;
  final double radius;
  final double position;
  final double position2;
  LittleCircleBehind(
      {this.color = Colors.deepOrangeAccent,
      this.position = 30,
      this.radius = 25,
      this.position2 = 0});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: position,
      top: position2,
      child: CustomPaint(
        painter: DrawCircle(
          radius: radius,
          color: color,
        ),
      ),
    );
  }
}
