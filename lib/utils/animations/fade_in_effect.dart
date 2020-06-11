import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

enum _AnimationElements { opacity, translateX }

class FadeIn extends StatelessWidget {
  final double delay;
  final Widget child;
  final AxisDirection direction;
  final double translateXValue;

  FadeIn(
      {this.delay,
      this.child,
      this.direction = AxisDirection.up,
      this.translateXValue = 60.0});

  @override
  Widget build(BuildContext context) {
    final tween = MultiTween<_AnimationElements>()
      ..add(_AnimationElements.opacity, 0.0.tweenTo(1.0))
      ..add(_AnimationElements.translateX, translateXValue.tweenTo(0.0));
    return PlayAnimation<MultiTweenValues<_AnimationElements>>(
      delay: (300 * delay).round().milliseconds,
      duration: 1200.milliseconds,
      curve: Curves.ease,
      tween: tween,
      child: child,
      builder: (BuildContext context, Widget child, MultiTweenValues value) {
        return Opacity(
          opacity: value.get(_AnimationElements.opacity),
          child: Transform.translate(
            offset: direction != AxisDirection.up
                ? Offset(
                    value.get(_AnimationElements.translateX),
                    0,
                  )
                : Offset(
                    0,
                    value.get(_AnimationElements.translateX),
                  ),
            child: child,
          ),
        );
      },
    );
  }
}
