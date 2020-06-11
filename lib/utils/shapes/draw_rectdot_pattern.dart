import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webpagetransition/constants.dart';
import 'package:webpagetransition/utils/shapes/draw_shapes.dart';

///5*5 dot rectangle///
class RectangleDotPattern extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          PatternElement5(),
          PatternElement5(),
          PatternElement5(),
          PatternElement5(),
          PatternElement5(),
        ],
      ),
    );
  }
}

///468-468 beveled rectangle
class RectangleDotPatternLarge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          PatternElement4(),
          PatternElement6(),
          PatternElement8(),
          PatternElement8(),
          PatternElement8(),
          PatternElement8(),
          PatternElement6(),
          PatternElement4(),
        ],
      ),
    );
  }
}

///3*3 rectangle + 1 triangle
class DotWithTriangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        CustomPaint(
          painter: DrawTriangle(color: kThemeGreen),
        ),
        Column(
          children: <Widget>[
            PatternElement3(),
            SizedBox(
              height: 10.1,
            ),
            PatternElement3(),
            SizedBox(
              height: 10.1,
            ),
            PatternElement3(),
          ],
        ),
      ],
    );
  }
}

///7*7 dot square
class SquareDotPattern7 extends StatelessWidget {
  final Color color;
  SquareDotPattern7({this.color = kThemeGreen});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PatternElement7(
            color: color,
          ),
          PatternElement7(
            color: color,
          ),
          PatternElement7(
            color: color,
          ),
          PatternElement7(
            color: color,
          ),
          PatternElement7(
            color: color,
          ),
          PatternElement7(
            color: color,
          ),
          PatternElement7(
            color: color,
          ),
        ],
      ),
    );
  }
}

///===============================Pattern units===============================///
class PatternElement5 extends StatelessWidget {
  final int number;
  PatternElement5({this.number});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment
          .spaceAround, // this is a must, otherwise all dots are stack at one point
      children: <Widget>[
        CustomPaint(
          painter: DrawCircle(
            color: Colors.indigo,
            radius: 1,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: Colors.indigo,
            radius: 1,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: Colors.indigo,
            radius: 1,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: Colors.indigo,
            radius: 1,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: Colors.indigo,
            radius: 1,
          ),
        ),
      ],
    );
  }
}

class PatternElement8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        CustomPaint(
          painter: DrawCircle(
            color: kThemeGreen,
            radius: 1,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: kThemeGreen,
            radius: 1,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: kThemeGreen,
            radius: 1,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: kThemeGreen,
            radius: 1,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: kThemeGreen,
            radius: 1,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: kThemeGreen,
            radius: 1,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: kThemeGreen,
            radius: 1,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: kThemeGreen,
            radius: 1,
          ),
        ),
      ],
    );
  }
}

class PatternElement6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        CustomPaint(
          painter: DrawCircle(
            color: Colors.transparent,
            radius: 1,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: kThemeGreen,
            radius: 1,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: kThemeGreen,
            radius: 1,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: kThemeGreen,
            radius: 1,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: kThemeGreen,
            radius: 1,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: kThemeGreen,
            radius: 1,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: kThemeGreen,
            radius: 1,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: Colors.transparent,
            radius: 1,
          ),
        ),
      ],
    );
  }
}

class PatternElement7 extends StatelessWidget {
  final Color color;
  PatternElement7({this.color = kThemeGreen});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CustomPaint(
          painter: DrawCircle(
            color: color,
            radius: .7,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: color,
            radius: .7,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: color,
            radius: .7,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: color,
            radius: .7,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: color,
            radius: .7,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: color,
            radius: .7,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: color,
            radius: .7,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: color,
            radius: .7,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: color,
            radius: .7,
          ),
        ),
      ],
    );
  }
}

class PatternElement4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        CustomPaint(
          painter: DrawCircle(
            color: Colors.transparent,
            radius: 1,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: Colors.transparent,
            radius: 1,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: kThemeGreen,
            radius: 1,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: kThemeGreen,
            radius: 1,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: kThemeGreen,
            radius: 1,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: kThemeGreen,
            radius: 1,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: Colors.transparent,
            radius: 1,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: Colors.transparent,
            radius: 1,
          ),
        ),
      ],
    );
  }
}

class PatternElement3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        CustomPaint(
          painter: DrawCircle(
            color: Colors.deepOrange,
            radius: 1.5,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: Colors.deepOrange,
            radius: 1.5,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            color: Colors.deepOrange,
            radius: 1.5,
          ),
        ),
      ],
    );
  }
}
