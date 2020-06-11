import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webpagetransition/componets/decorated_images/cliped_image.dart';
import 'package:webpagetransition/componets/text/name_tag.dart';
import 'package:webpagetransition/utils/animations/fade_in_effect.dart';
import 'package:webpagetransition/utils/shapes/little_circle_behind.dart';
import 'package:webpagetransition/utils/extensions/hover_extension.dart';

class ProfileCard extends StatelessWidget {
  final Color color;
  final double radius;
  final double position;
  final double angleUnit;
  final double a;
  final double b;
  final double c;
  final double d;
  final double position2;
  final String imageName;
  final String personName;
  final int numberOfCourses;
  final double delay;
  final double translateValue;

  ProfileCard({
    this.color = const Color(0xfff8c1d8),
    this.position = 120,
    this.radius = 41,
    this.imageName = 'girl4',
    this.angleUnit = pi / 31,
    this.a = 45,
    this.b = 46,
    this.c = 14,
    this.d = 58,
    this.personName = 'Yency Lorena',
    this.numberOfCourses = 32,
    this.position2 = 0,
    this.delay = 1,
    this.translateValue = 60,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 185,
      child: Center(
        child: FadeIn(
          delay: delay,
          translateXValue: translateValue,
          direction: AxisDirection.left,
          child: Stack(
            overflow: Overflow.visible,
            children: [
              LittleCircleBehind(
                color: color,
                radius: radius,
                position: position,
                position2: position2,
              ),
              ClippedImage(
                angleUnit: angleUnit,
                a: a,
                b: b,
                c: c,
                d: d,
                imageName: imageName,
              ),
              Positioned(
                bottom: -43,
                left: 10,
                child: NameTag(
                  name: personName,
                  numberOfCourses: numberOfCourses,
                ),
              ),
            ],
          ),
        ),
      ),
    ).showCursorOnHover.moveUpOnHover;
  }
}
