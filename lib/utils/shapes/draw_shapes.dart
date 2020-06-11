import 'package:flutter/material.dart';
import 'package:webpagetransition/constants.dart';

class DrawCircle extends CustomPainter {
  final Color color;
  final double radius;
  final PaintingStyle paintingStyle;
  final double strokeWidth;

  DrawCircle(
      {this.color = kThemeGreen,
      this.radius = 1.0,
      this.paintingStyle = PaintingStyle.fill,
      this.strokeWidth = 8.0});

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint _paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = paintingStyle;
    canvas.drawCircle(Offset(0, 0), radius, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}

class DrawTriangle extends CustomPainter {
  final Color color;
  DrawTriangle({this.color});
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint _paint = Paint()
      ..color = color
      ..strokeWidth = 3
      ..style = PaintingStyle.fill;

    Path _path = Path()
      ..moveTo(0, 0)
      ..lineTo(40, 20)
      ..lineTo(10, 45)
      ..lineTo(0, 0);

    canvas.drawPath(_path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}

class DrawEqualSideTriangle extends CustomPainter {
  final Color color;
  final PaintingStyle paintingStyle;
  final double strokeWidth;
  DrawEqualSideTriangle(
      {this.color,
      this.paintingStyle = PaintingStyle.fill,
      this.strokeWidth = 3});
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint _paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = paintingStyle;

    Path _path = Path()
      ..moveTo(0, 0)
      ..lineTo(110, 0)
      ..lineTo(55, 65)
      ..lineTo(0, 0);

    canvas.drawPath(_path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}

class DrawCurvedLne extends CustomPainter {
  //for lines, the style should be stroke
  final Color color;
  final double strokeWidth;
  final PaintingStyle paintingStyle;
  DrawCurvedLne(
      {this.color = Colors.orange,
      this.strokeWidth = 3,
      this.paintingStyle = PaintingStyle.stroke});
  @override
  void paint(Canvas canvas, Size size) {
    Paint _paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = paintingStyle;
    //use the size, which is the Canvas size
    double unitWidth = size.width / 12;
    double unitHeight = size.height / 2;

    Path _path = Path()
      ..moveTo(0, unitHeight * 1.5)
      ..quadraticBezierTo(
          unitWidth / 2, unitHeight * 1.66, unitWidth, unitHeight)
      ..quadraticBezierTo(unitWidth * 2, 0, 3 * unitWidth, unitHeight)
      ..quadraticBezierTo(
          unitWidth * 4, unitHeight * 2, unitWidth * 5, unitHeight)
      ..quadraticBezierTo(unitWidth * 6, 0, unitWidth * 7, unitHeight)
      ..quadraticBezierTo(
          unitWidth * 8, unitHeight * 2, unitWidth * 9, unitHeight)
      ..quadraticBezierTo(unitWidth * 10, 0, unitWidth * 11, unitHeight)
      ..quadraticBezierTo(unitWidth * 11.5, unitHeight * 1.66, unitWidth * 12,
          unitHeight * 1.5);

    canvas.drawPath(_path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
