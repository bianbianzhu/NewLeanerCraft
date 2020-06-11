import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

enum _AnimationElements {
  scale,
  opacity,
  translate,
  rotate,
}

class ComplexTransform extends StatelessWidget {
  final double delay;
  final Widget child;
  ComplexTransform({this.delay, this.child});

  @override
  Widget build(BuildContext context) {
    final _tween = MultiTween<_AnimationElements>()
      ..add(
        _AnimationElements.opacity,
        1.0.tweenTo(1.0),
      )
      ..add(
        _AnimationElements.scale,
        0.3.tweenTo(1.2),
      )
      ..add(_AnimationElements.translate, 230.0.tweenTo(0.0))
      ..add(
        _AnimationElements.rotate,
        .042.tweenTo(0.0),
      )
      ..add(
        _AnimationElements.scale,
        1.2.tweenTo(1.0),
      );
    return PlayAnimation<MultiTweenValues<_AnimationElements>>(
      delay: Duration(
        milliseconds: (300 * delay).round(),
      ),
      tween: _tween,
      duration: Duration(milliseconds: 1000),
      curve: Curves.linear,
      child: child,
      builder: (context, child, values) {
        return Opacity(
          opacity: values.get(_AnimationElements.opacity),
          child: RotationTransition(
            turns:
                AlwaysStoppedAnimation(values.get(_AnimationElements.rotate)),
            child: Transform.scale(
              scale: values.get(_AnimationElements.scale),
              child: Transform.translate(
                offset: Offset(
                  0,
                  values.get(_AnimationElements.translate),
                ),
                child: child,
              ),
            ),
          ),
        );
      },
    );
  }
}
