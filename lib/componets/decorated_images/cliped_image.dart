import 'dart:math';
import 'package:flutter/material.dart';

class ClippedImage extends StatelessWidget {
  final double angleUnit;
  final double a;
  final double b;
  final double c;
  final double d;
  final String imageName;
  ClippedImage(
      {this.angleUnit = pi / 8,
      this.a = 35,
      this.b = 39,
      this.c = 53,
      this.d = 63,
      this.imageName = 'girl1'});
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angleUnit,
      child: Container(
        height: 120,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.elliptical(35, a),
              topRight: Radius.elliptical(b, 37),
              bottomLeft: Radius.elliptical(c, 33),
              bottomRight: Radius.elliptical(43, d)),
          image: DecorationImage(
            image: AssetImage('images/$imageName.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
