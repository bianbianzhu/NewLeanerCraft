import 'package:flare_flutter/flare_controls.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class LandingPageAnimation extends StatefulWidget {
  @override
  _LandingPageAnimationState createState() => _LandingPageAnimationState();
}

class _LandingPageAnimationState extends State<LandingPageAnimation> {
  FlareControls _flareControls = FlareControls();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      width: 700,
      height: 700,
      alignment: Alignment.center,
      child: FlareActor(
        'animSource/LandingAnimation.flr',
        animation: 'Animations',
        fit: BoxFit.fill,
        alignment: Alignment.center,
      ),
    );
  }
}
