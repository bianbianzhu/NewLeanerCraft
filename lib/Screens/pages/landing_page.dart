import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webpagetransition/componets/backgrounds/animated_background.dart';
import 'package:webpagetransition/componets/nav_bar/nav_bar.dart';
import 'package:webpagetransition/componets/patterns/wave.dart';
import 'package:webpagetransition/componets/players/flare_player.dart';
import 'package:webpagetransition/constants.dart';
import 'package:webpagetransition/utils/animations/animated_opacity.dart';
import 'package:webpagetransition/utils/animations/landing_page_animation.dart';
import 'package:webpagetransition/utils/animations/scale_translate_x_y.dart';
import 'package:webpagetransition/utils/responsive_layout/responsive_lay_out_main.dart';
import 'package:webpagetransition/utils/shapes/draw_rectdot_pattern.dart';
import 'package:webpagetransition/componets/patterns/animated_pattern.dart';
import 'package:webpagetransition/utils/shapes/draw_shapes.dart';
import 'package:webpagetransition/utils/animations/fade_in_effect.dart';
import 'package:webpagetransition/utils/extensions/hover_extension.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
//    print('Rendering====now====');
    if (ResponsiveLayOut.isDesktopVersion(context)) {
      return Column(
        children: <Widget>[
          NavBar(),
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Positioned(
                left: -50,
                bottom: -150,
                child: AnimatedPattern(
                  pattern: RectangleDotPattern(),
                ),
              ),
              Positioned(
                right: 40,
                bottom: -170,
                child: AnimatedPattern(
                  pattern: CustomPaint(
                    painter: DrawCircle(
                      color: Colors.orange.shade300,
                      paintingStyle: PaintingStyle.stroke,
                      radius: 30,
                    ),
                  ),
                ),
              ),
              Positioned(
                child: LandingPageAnimation(),
                right: MediaQuery.of(context).size.width / 14,
                top: -250,
              ),
              Positioned(
                top: -100,
                left: MediaQuery.of(context).size.width / 2.3,
                child: AnimatedPattern(
                  containerHeight: 80,
                  containerWidth: 80,
                  pattern: RectangleDotPatternLarge(),
                ),
              ),
              Positioned(
                top: -30,
                left: 60,
                child: RotatedPattern(
                  pattern: DotWithTriangle(),
                ),
              ),
              LandingContent(),
            ],
          ),
        ],
      );
    } else if (ResponsiveLayOut.isMediumVersion(context)) {
      return Column(
        children: <Widget>[
          NavBar(),
          Stack(
            overflow: Overflow.visible,
            children: [
              Positioned(
                right: MediaQuery.of(context).size.width / 4,
                bottom: -150,
                child: AnimatedOpacityWidget(
                  child: LoopRotateTransition(
                    millDuration: 4200,
                    child: RotationTransition(
                      turns: AlwaysStoppedAnimation(25 / 360), //amazing
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
                  ),
                ),
              ),
              Positioned(
                right: MediaQuery.of(context).size.width / 16,
                top: -30,
                child: AnimatedPattern(
                  patternSize: 70,
                  pattern: SizedBox(
                    child: SquareDotPattern7(
                      color: Colors.orange,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width / 16,
                top: -30,
                child: AnimatedPattern(
                  patternSize: 100,
                  pattern: RectangleDotPatternLarge(),
                ),
              ),
              Center(
                //TODO: set up for the medium and mobile
                child: LandingContent(),
              ),
              Positioned(
                bottom: -370,
                left: -20,
                child: FlarePlayer(
                  width: 500,
                  height: 500,
                  animationName: 'landingAnimation2',
                ),
              ),
            ],
          ),
        ],
      );
    } else {
      return Column(
        children: <Widget>[
          NavBar(),
          Stack(
            overflow: Overflow.visible,
            children: [
              Positioned(
                right: MediaQuery.of(context).size.width / 8,
                bottom: -20,
                child: AnimatedOpacityWidget(
                  child: LoopRotateTransition(
                    millDuration: 4200,
                    child: RotationTransition(
                      turns: AlwaysStoppedAnimation(25 / 360), //amazing
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
                  ),
                ),
              ),
              Positioned(
                right: MediaQuery.of(context).size.width / 16,
                top: -180,
                child: AnimatedPattern(
                  patternSize: 70,
                  pattern: SizedBox(
                    child: SquareDotPattern7(
                      color: Colors.orange,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width / 16,
                top: -150,
                child: AnimatedPattern(
                  patternSize: 100,
                  pattern: RectangleDotPatternLarge(),
                ),
              ),
              Center(
                //TODO: set up for the medium and mobile
                child: LandingContent(),
              ),
            ],
          ),
        ],
      );
    }
  }
}

class LandingContent extends StatelessWidget {
  const LandingContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveLayOut.isDesktopVersion(context)) {
      return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 12,
          vertical: 26,
        ),
        child: Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FadeIn(
                  delay: 1,
                  child: Text(
                    'Find the Best Courses\n& Become Master',
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontWeight: FontWeight.w900,
                        fontSize: 40,
                        letterSpacing: 1.3),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                FadeIn(
                  delay: 1.5,
                  child: Text(
                    '100% free online learning platform from the world\'s best\nuniversities and teachers',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black54,
                        height: 1.5,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SourceSansPro'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    FadeIn(
                      delay: 2,
                      child: RaisedButton(
                        padding: EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 16,
                        ),
                        elevation: 1,
                        onPressed: () {},
                        child: Text(
                          'Get started for free',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        color: kThemeGreen,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ).showCursorOnHover.moveUpOnHover,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    FadeIn(
                      delay: 2.5,
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
            SizedBox(
              width: 100,
            ),
          ],
        ),
      );
    } else if (ResponsiveLayOut.isMediumVersion(context)) {
      return Column(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FadeIn(
                delay: 1,
                child: Text(
                  'Find the Best Courses\n& Become Master',
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                      letterSpacing: 1.3),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              FadeIn(
                delay: 1.5,
                child: Text(
                  '100% free online learning platform from the world\'s best\nuniversities and teachers',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                      height: 1.5,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'SourceSansPro'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FadeIn(
                    delay: 2,
                    child: RaisedButton(
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 16,
                      ),
                      elevation: 1,
                      onPressed: () {},
                      child: Text(
                        'Get started for free',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      color: kThemeGreen,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ).showCursorOnHover.moveUpOnHover,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  FadeIn(
                    delay: 2.5,
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
        ],
      );
    } else {
      return Column(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FadeIn(
                delay: 1,
                child: Text(
                  'Find the Best Courses\n& Become Master',
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                      letterSpacing: 1.3),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              FadeIn(
                delay: 1.5,
                child: Text(
                  '100% free online learning platform from the world\'s best\nuniversities and teachers',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      height: 1.5,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'SourceSansPro'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FadeIn(
                    delay: 2,
                    child: RaisedButton(
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 16,
                      ),
                      elevation: 1,
                      onPressed: () {},
                      child: Text(
                        'Get started for free',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      color: kThemeGreen,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ).showCursorOnHover.moveUpOnHover,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  FadeIn(
                    delay: 2.5,
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
        ],
      );
    }
  }
}
