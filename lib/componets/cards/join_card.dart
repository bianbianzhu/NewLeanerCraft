import 'package:flutter/material.dart';
import 'package:webpagetransition/utils/animations/animated_opacity.dart';
import 'package:webpagetransition/utils/animations/fade_in_effect.dart';
import 'package:webpagetransition/utils/animations/scale_translate_x_y.dart';
import 'package:webpagetransition/utils/extensions/hover_extension.dart';
import 'package:webpagetransition/utils/responsive_layout/responsive_lay_out_main.dart';
import 'package:webpagetransition/utils/shapes/draw_rectdot_pattern.dart';
import 'package:webpagetransition/utils/shapes/draw_shapes.dart';
import '../../constants.dart';

class JoinCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (ResponsiveLayOut.isDesktopVersion(context)) {
      return Center(
        child: AnimatedOpacityWidget(
          millDuration: 500,
          child: Stack(
            overflow: Overflow.visible,
            children: [
              Positioned(
                left: 260,
                bottom: 20,
                child: AnimatedOpacityWidget(
                  millDuration: 1700,
                  curve: Curves.easeInExpo,
                  child: RotationTransition(
                    turns: AlwaysStoppedAnimation(45 / 360),
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: SquareDotPattern7(
                        color: Colors.redAccent.withOpacity(.5),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 210,
                bottom: 20,
                child: AnimatedOpacityWidget(
                  millDuration: 1700,
                  curve: Curves.easeInExpo,
                  child: RotationTransition(
                    turns: AlwaysStoppedAnimation(45 / 360),
                    child: Container(
                      height: 60,
                      width: 60,
                      color: Colors.red.shade200,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 250,
                top: 40,
                child: AnimatedOpacityWidget(
                  millDuration: 1700,
                  curve: Curves.easeInExpo,
                  child: CustomPaint(
                    painter: DrawCircle(
                      color: kThemeGreen.withOpacity(.5),
                      radius: 50,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 150,
                bottom: 10,
                child: AnimatedOpacityWidget(
                  millDuration: 1700,
                  curve: Curves.easeInExpo,
                  child: SizedBox(
                    height: 75,
                    width: 75,
                    child: SquareDotPattern7(
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
              ),
              ComplexTransform(
                delay: 3,
                child: Container(
                  width:
                      1024, // this can change according to the screen size - very flexible ///TODO: WHY???
                  margin: EdgeInsets.only(
//                    left: MediaQuery.of(context).size.width / 12,
//                    right: MediaQuery.of(context).size.width / 12,
                    top: 24,
                    bottom: 48,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        bottomLeft: Radius.circular(32),
                        topRight: Radius.elliptical(32, 42),
                        bottomRight: Radius.circular(32)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FadeIn(
                            delay: 2,
                            child: Text(
                              'What are you waiting for?',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                letterSpacing: .8,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          FadeIn(
                            delay: 2.5,
                            child: Text(
                              'Join LearnerCraft today',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontFamily: 'Merriweather',
                                letterSpacing: 2,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          FadeIn(
                            delay: 3,
                            child: RaisedButton(
                              padding: EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 16,
                              ),
                              elevation: 1,
                              onPressed: () {},
                              child: Text(
                                'Get started for free',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              color: Colors.orange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ).showCursorOnHover.moveUpOnHover,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          FadeIn(
                            delay: 3.5,
                            child: RaisedButton(
                              padding: EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 16,
                              ),
                              elevation: 0,
                              child: Text(
                                'Become a teacher',
                                style: TextStyle(
                                  color: Colors.indigo,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.2,
                                ),
                              ),
                              onPressed: () {},
                              color: Color(0xFFF6FAFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3),
                                side: BorderSide(
                                  color: Colors.blue.shade100,
                                ),
                              ),
                            ).showCursorOnHover.moveUpOnHover,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else if (ResponsiveLayOut.isMediumVersion(context)) {
      return Center(
        child: AnimatedOpacityWidget(
          millDuration: 500,
          child: Stack(
            overflow: Overflow.visible,
            children: [
              Positioned(
                left: 260,
                bottom: 20,
                child: AnimatedOpacityWidget(
                  millDuration: 1700,
                  curve: Curves.easeInExpo,
                  child: RotationTransition(
                    turns: AlwaysStoppedAnimation(45 / 360),
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: SquareDotPattern7(
                        color: Colors.redAccent.withOpacity(.5),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 210,
                bottom: 20,
                child: AnimatedOpacityWidget(
                  millDuration: 1700,
                  curve: Curves.easeInExpo,
                  child: RotationTransition(
                    turns: AlwaysStoppedAnimation(45 / 360),
                    child: Container(
                      height: 60,
                      width: 60,
                      color: Colors.red.shade200,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 250,
                top: 40,
                child: AnimatedOpacityWidget(
                  millDuration: 1700,
                  curve: Curves.easeInExpo,
                  child: CustomPaint(
                    painter: DrawCircle(
                      color: kThemeGreen.withOpacity(.5),
                      radius: 50,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 150,
                bottom: 10,
                child: AnimatedOpacityWidget(
                  millDuration: 1700,
                  curve: Curves.easeInExpo,
                  child: SizedBox(
                    height: 75,
                    width: 75,
                    child: SquareDotPattern7(
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
              ),
              ComplexTransform(
                delay: 3,
                child: Container(
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 12,
                    right: MediaQuery.of(context).size.width / 12,
                    top: 24,
                    bottom: 48,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        bottomLeft: Radius.circular(32),
                        topRight: Radius.elliptical(32, 42),
                        bottomRight: Radius.circular(32)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FadeIn(
                            delay: 2,
                            child: Text(
                              'What are you waiting for?',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                letterSpacing: .8,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          FadeIn(
                            delay: 2.5,
                            child: Text(
                              'Join LearnerCraft today',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Merriweather',
                                letterSpacing: 2,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FadeIn(
                            delay: 3,
                            child: RaisedButton(
                              padding: EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 16,
                              ),
                              elevation: 1,
                              onPressed: () {},
                              child: Text(
                                'Get started for free',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              color: Colors.orange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ).showCursorOnHover.moveUpOnHover,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          FadeIn(
                            delay: 3.5,
                            child: RaisedButton(
                              padding: EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 16,
                              ),
                              elevation: 0,
                              child: Text(
                                'Become a teacher',
                                style: TextStyle(
                                  color: Colors.indigo,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.2,
                                ),
                              ),
                              onPressed: () {},
                              color: Color(0xFFF6FAFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3),
                                side: BorderSide(
                                  color: Colors.blue.shade100,
                                ),
                              ),
                            ).showCursorOnHover.moveUpOnHover,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Container();
    }
  }
}
