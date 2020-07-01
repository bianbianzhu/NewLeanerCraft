import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedPattern extends StatefulWidget {
  final double containerHeight;
  final double containerWidth;
  final double patternSize;
  final Widget pattern;

  AnimatedPattern(
      {this.containerHeight = 200,
      this.containerWidth = 200,
      this.patternSize = 100,
      this.pattern});

  @override
  _AnimatedPatternState createState() => _AnimatedPatternState();
}

class _AnimatedPatternState extends State<AnimatedPattern> {
  double _patternWidth;
  double _opacity = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _patternWidth = widget.patternSize / 5;
    Future.delayed(Duration(milliseconds: 1500), () {
      if (this.mounted) {
        setState(() {
          _patternWidth = widget.patternSize;
          _opacity = 1;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.containerHeight,
      width: widget.containerWidth,
      alignment: Alignment.center,
      //have to center it in another container, so that it can do the animation from the center
      child: AnimatedContainer(
        curve: Curves.elasticOut,
        width: _patternWidth,
        height: _patternWidth,
        duration: Duration(milliseconds: 1000),
        child: AnimatedOpacity(
            duration: Duration(milliseconds: 500),
            opacity: _opacity,
            child: widget.pattern),
      ),
    );
  }
}

class RotatedPattern extends StatefulWidget {
  final double containerHeight;
  final double containerWidth;
  final double patternSize;
  final Widget pattern;

  RotatedPattern(
      {this.containerHeight = 200,
      this.containerWidth = 200,
      this.patternSize = 90,
      this.pattern});
  @override
  _RotatedPatternState createState() => _RotatedPatternState();
}

class _RotatedPatternState extends State<RotatedPattern> {
  double _patternWidth;
  double _opacity = 0;
  double _radian = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _patternWidth = widget.patternSize / 5;
    Future.delayed(Duration(milliseconds: 1500), () {
      setState(() {
        _patternWidth = widget.patternSize;
        _opacity = 1;
        _radian = pi;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.containerHeight,
      width: widget.containerWidth,
      alignment: Alignment.center,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 1500),
        curve: Curves.elasticOut,
        transform: Matrix4.rotationZ(_radian),
        width: _patternWidth,
        height: _patternWidth,
        child: AnimatedOpacity(
            duration: Duration(milliseconds: 500),
            opacity: _opacity,
            child: widget.pattern),
        alignment: FractionalOffset
            .center, // will this make the rotation originated from the center???? - nope
      ),
    );
  }
}
