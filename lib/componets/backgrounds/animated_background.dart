import 'dart:math';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

///--------------------------ALL LOOP ANIMATIONS FOR BACKGROUND-----------------------------------------
///-----------------------THE FLOATING EFFECT ---------------------------------------------
enum FloatingDirection {
  bottomToUp,
  upToBottom,
  leftToRight,
  rightToLeft,
}

enum _AnimationElements {
  opacity,
  translate,
  angle,
  scale,
}

///---------------------Simple animation is stateless widget-----------------------
///======= ONLY FLOATING IN (loop)======================================================
class FloatingToEffect extends StatelessWidget {
  final Widget child;
  final FloatingDirection floatingDirection;
  final double translateValue;
  final int millDuration;
  FloatingToEffect(
      {this.child,
      this.floatingDirection = FloatingDirection.bottomToUp,
      this.translateValue = 730.0,
      this.millDuration = 8000});

  @override
  Widget build(BuildContext context) {
    final _tween = MultiTween<_AnimationElements>()
      ..add(
        _AnimationElements.opacity,
        0.0.tweenTo(1.0),
      )
      ..add(
        _AnimationElements.translate,
        translateValue.tweenTo(0.0),
      );
    return LoopAnimation<MultiTweenValues<_AnimationElements>>(
      duration: Duration(milliseconds: millDuration),
      child: child,
      tween: _tween,
      builder: (
        context,
        child,
        values,
      ) {
        return Transform.translate(
          offset: floatingDirection == FloatingDirection.bottomToUp
              ? Offset(
                  0,
                  values.get(_AnimationElements.translate),
                )
              : Offset(values.get(_AnimationElements.translate),
                  0), // this is right to left
          child: child,
        );
      },
    );
  }
}

//
//if (floatingDirection == FloatingDirection.bottomToUp) {
//myOffset = Offset(
//0,
//values.get(_AnimationElements.translate),
//);

//} else if (floatingDirection == FloatingDirection.leftToRight) {
//Offset(
//values.get(_AnimationElements.translate), 0)
//);
//} else {}

///============only Opacity (loop)==================================

class LoopOpacity extends StatelessWidget {
  final Widget child;
  final int millDuration;

  LoopOpacity({
    this.child,
    this.millDuration = 1800,
  });

  @override
  Widget build(BuildContext context) {
    final _tween = MultiTween()
      ..add(
        _AnimationElements.opacity,
        0.0.tweenTo(1.0),
      );
    return LoopAnimation(
      child: child,
      duration: Duration(milliseconds: millDuration),
      tween: _tween,
      builder: (context, child, value) {
        return Opacity(
          opacity: value.get(_AnimationElements.opacity),
          child: child,
        );
      },
    );
  }
}

///================only rotate (loop) ==========================

class LoopRotate extends StatelessWidget {
  final Widget child;
  final int millDuration;
  LoopRotate({this.child, this.millDuration = 3000});
  @override
  Widget build(BuildContext context) {
    final _tween = MultiTween()
      ..add(
        _AnimationElements.angle,
        0.0.tweenTo(pi),
      );
    return LoopAnimation(
      duration: Duration(milliseconds: millDuration),
      child: child,
      tween: _tween,
      builder: (context, child, value) {
        return Transform.rotate(
          angle: value.get(_AnimationElements.angle),
          child: child,
        );
      },
    );
  }
}

///================only loop rotate 2 === using rotate transition=====
class LoopRotateTransition extends StatelessWidget {
  final Widget child;
  final int millDuration;
  LoopRotateTransition({this.child, this.millDuration = 3000});
  @override
  Widget build(BuildContext context) {
    final _tween = MultiTween()
      ..add(
        _AnimationElements.angle,
        0.0.tweenTo(360),
      );
    return LoopAnimation(
      duration: Duration(milliseconds: millDuration),
      child: child,
      tween: _tween,
      builder: (context, child, value) {
        return RotationTransition(
          turns: ReverseAnimation(
            AlwaysStoppedAnimation(value.get(_AnimationElements.angle) /
                360), //why it's not reverse???? but loop
          ),
          child: child,
        );
      },
    );
  }
}

///===================only scale (loop)============================

class LoopScale extends StatelessWidget {
  final Widget child;
  final int millDuration;
  LoopScale({this.child, this.millDuration = 3800});
  @override
  Widget build(BuildContext context) {
    final _tween = MultiTween()
      ..add(
        _AnimationElements.scale,
        0.7.tweenTo(1.4),
      )
      ..add(_AnimationElements.scale, 1.4.tweenTo(0.7));
    return LoopAnimation(
      duration: Duration(milliseconds: millDuration),
      child: child,
      tween: _tween,
      curve: Curves.slowMiddle,
      builder: (context, child, value) {
        return Transform.scale(
          child: child,
          scale: value.get(_AnimationElements.scale),
        );
      },
    );
  }
}
