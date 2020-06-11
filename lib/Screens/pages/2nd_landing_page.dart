import 'package:flutter/material.dart';
import 'package:webpagetransition/componets/backgrounds/animated_background.dart';
import 'package:webpagetransition/componets/patterns/animated_pattern.dart';
import 'package:webpagetransition/componets/patterns/wave.dart';
import 'package:webpagetransition/componets/players/flare_player.dart';
import 'package:webpagetransition/utils/animations/animated_opacity.dart';
import 'package:webpagetransition/utils/animations/fade_in_effect.dart';
import 'package:webpagetransition/utils/responsive_layout/responsive_lay_out_main.dart';
import 'package:webpagetransition/utils/extensions/hover_extension.dart';
import 'package:webpagetransition/utils/shapes/draw_rectdot_pattern.dart';
import 'package:webpagetransition/utils/shapes/draw_shapes.dart';
import '../../constants.dart';

class StartLearningPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('rendering 2nd landing page now');
    if (ResponsiveLayOut.isDesktopVersion(context)) {
      return Stack(
        children: [
          Positioned(
            left: 260,
            top: 320,
            child: AnimatedOpacityWidget(
              child: LoopScale(
                child: Container(
                  height: 120,
                  width: 280,
                  decoration: BoxDecoration(
                    color: kThemeGreen.withOpacity(.2),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            child: AnimatedOpacityWidget(
              child: LoopRotate(
                child: Container(
                  height: 1200,
                  width: 1200,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.pinkAccent.withOpacity(.2), width: 45),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 2,
            top: -160,
            child: AnimatedOpacityWidget(
              child: FloatingToEffect(
                millDuration: 16000,
                translateValue: 1020,
                child: CustomPaint(
                  painter: DrawCircle(
                    radius: 75,
                    color: Colors.deepOrangeAccent.withOpacity(.2),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 100,
            right: MediaQuery.of(context).size.width / 12 + 42,
            child: FlarePlayer(
              width: 550,
              height: 550,
              animationName: 'ReadingAnim',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 12 + 42,
              top: 200,
            ),
            child: TextContent(),
          ),
          Positioned(
            left: 60,
            top: -80,
            child: WavePattern(),
          ),
          Positioned(
            bottom: -55,
            left: -55,
            child: AnimatedPattern(
              patternSize: 75,
              pattern: SquareDotPattern7(
                color: Colors.deepOrange,
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: -100,
            child: RotatedPattern(
              containerHeight: 205,
              patternSize: 75,
              pattern: DotWithTriangle(),
            ),
          ),
          Positioned(
            top: 42,
            left: MediaQuery.of(context).size.width / 3,
            child: AnimatedOpacityWidget(
              child: LoopRotate(
                child: RectangleDotPatternLarge(),
              ),
            ),
          ),
        ],
      );
    } else if (ResponsiveLayOut.isMediumVersion(context)) {
      return Stack(
        children: [
          Positioned(
            left: MediaQuery.of(context).size.width / 3.5,
            top: 320,
            child: AnimatedOpacityWidget(
              child: LoopScale(
                child: Container(
                  height: 120,
                  width: 380,
                  decoration: BoxDecoration(
                    color: kThemeGreen.withOpacity(.2),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            child: AnimatedOpacityWidget(
              child: LoopRotate(
                child: Container(
                  height: 1200,
                  width: 1200,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.pinkAccent.withOpacity(.2), width: 45),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 2,
            top: -160,
            child: AnimatedOpacityWidget(
              child: FloatingToEffect(
                millDuration: 16000,
                translateValue: 1020,
                child: CustomPaint(
                  painter: DrawCircle(
                    radius: 75,
                    color: Colors.deepOrangeAccent.withOpacity(.2),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 4,
              top: 200,
            ),
            child: TextContent(),
          ),
          Positioned(
            left: 60,
            top: -80,
            child: WavePattern(),
          ),
          Positioned(
            bottom: -55,
            left: -55,
            child: AnimatedPattern(
              patternSize: 75,
              pattern: SquareDotPattern7(
                color: Colors.deepOrange,
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: -100,
            child: RotatedPattern(
              containerHeight: 205,
              patternSize: 75,
              pattern: DotWithTriangle(),
            ),
          ),
          Positioned(
            top: 42,
            left: MediaQuery.of(context).size.width / 3,
            child: AnimatedOpacityWidget(
              child: LoopRotate(
                child: RectangleDotPatternLarge(),
              ),
            ),
          ),
        ],
      );
    } else {
      return Container();
    }
  }
}

class TextContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        FadeIn(
          delay: 1,
          child: Text(
            'Learn everything in\none platform',
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
            'Upskill your teams into modern technology roles with Pluralsight.\nSign up for a Free Demo! Live Mentoring. Offline Access.\nLearning Paths. Over 7,000+ Courses. Skills Assessments.\nBrands: Cisco, Microsoft, AWS, ASP.NET, CompTIA,\nMySQL, Oracle, Adobe, Android.',
            style: TextStyle(
                fontSize: 17,
                color: Colors.black87,
                height: 1.5,
                fontWeight: FontWeight.w500,
                fontFamily: 'SourceSansPro'),
          ),
        ),
        SizedBox(
          height: 20,
        ),
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
              'Start Learning',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            color: kThemeGreen,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
            ),
          ).showCursorOnHover.moveUpOnHover,
        ),
      ],
    );
  }
}
