import 'package:flutter/material.dart';
import 'package:webpagetransition/constants.dart';
import 'dart:math';

///----shape Part--------------------------------
class RotateRectangleShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      //unlike the transform property of container, this one is not Matrix4 (???).. the rotate can be center oriented)
      angle: pi / 2.5,
      child: Container(
        color: kThemeGreen,
        width: 60,
        height: 60,
      ),
    );
  }
}
