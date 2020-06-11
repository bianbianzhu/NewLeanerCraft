import 'package:flutter/material.dart';
import 'package:webpagetransition/componets/backgrounds/animated_background.dart';
import 'package:webpagetransition/utils/shapes/draw_shapes.dart';

class WavePattern extends StatefulWidget {
  @override
  _WavePatternState createState() => _WavePatternState();
}

class _WavePatternState extends State<WavePattern> {
//  double y = 739;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    Future.delayed(Duration(milliseconds: 5), () {
//      setState(() {
//        y = 0;
//      });
//    });
  }

  @override
  Widget build(BuildContext context) {
    //print(MediaQuery.of(context).size.height);
    return FloatingToEffect(
      translateValue: 820,
      child: Transform.rotate(
        //this is kind of neat, rotate from the center (don't like matrix4) -- r u sure about this?????
        angle: 125,
        child: Stack(
          overflow: Overflow.visible,
          children: [
            SizedBox(
              width: 80,
              height: 18,
              child: CustomPaint(
                painter: DrawCurvedLne(
                  color: Colors.orange.shade100,
                ),
              ),
            ),
            Positioned(
              top: 11,
              child: SizedBox(
                width: 80,
                height: 18,
                child: CustomPaint(
                  painter: DrawCurvedLne(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//AnimatedContainer(
//duration: Duration(seconds: 8),
//transform: Matrix4.translationValues(0, y, 0),
//onEnd: () {
//setState(() {
//y = 880;
//});
//}, // y is for the vertical axis (from MediaQuery.height to 0) bottom to top
