import 'package:flutter/material.dart';
import 'package:webpagetransition/componets/cards/instruction_card.dart';
import 'package:webpagetransition/componets/patterns/animated_pattern.dart';
import 'package:webpagetransition/utils/animations/fade_in_effect.dart';
import 'package:webpagetransition/utils/shapes/draw_rectdot_pattern.dart';
import 'package:webpagetransition/utils/responsive_layout/responsive_lay_out_main.dart';

class InstructionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (ResponsiveLayOut.isDesktopVersion(context)) {
      return Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeIn(
                delay: 1,
                child: Text(
                  'How it works for you',
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontWeight: FontWeight.w600,
                      fontSize: 26,
                      letterSpacing: 1.3),
                ),
              ),
              SizedBox(
                height: 64,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadeIn(delay: 1.5, child: InstructionCard()),
                  FadeIn(
                    delay: 2,
                    child: InstructionCard(
                      color: Colors.teal,
                      title: 'Finish the course',
                      icon: Icons.check_box,
                    ),
                  ),
                  FadeIn(
                    delay: 2.5,
                    child: InstructionCard(
                      color: Colors.deepOrange,
                      title: 'Ready for the market',
                      icon: Icons.local_mall,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 80,
            left: MediaQuery.of(context).size.width / 4,
            child: FadeIn(
              delay: 1.5,
              child: SizedBox(
                  height: 80, width: 80, child: RectangleDotPatternLarge()),
            ),
          ),
          Positioned(
            bottom: 80,
            left: MediaQuery.of(context).size.width / 8,
            child: FadeIn(
              delay: 1.5,
              child: SizedBox(
                  height: 90, width: 90, child: RectangleDotPatternLarge()),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2,
            right: -15,
            child: RotatedPattern(
              pattern: SizedBox(
                child: DotWithTriangle(),
              ),
            ),
          ),
        ],
      );
    } else if (ResponsiveLayOut.isMediumVersion(context)) {
      return Stack(
        alignment: Alignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeIn(
                delay: 1,
                child: Text(
                  'How it works for you',
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontWeight: FontWeight.w600,
                      fontSize: 26,
                      letterSpacing: 1.3),
                ),
              ),
              SizedBox(
                height: 64,
              ),
              Wrap(
                spacing: 32,
                children: [
                  FadeIn(delay: 1.5, child: InstructionCard()),
                  FadeIn(
                    delay: 2,
                    child: InstructionCard(
                      color: Colors.teal,
                      title: 'Finish the course',
                      icon: Icons.check_box,
                    ),
                  ),
                  FadeIn(
                    delay: 2.5,
                    child: InstructionCard(
                      color: Colors.deepOrange,
                      title: 'Ready for the market',
                      icon: Icons.local_mall,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 80,
            left: MediaQuery.of(context).size.width / 10,
            child: FadeIn(
              delay: 1.5,
              child: SizedBox(
                  height: 80, width: 80, child: RectangleDotPatternLarge()),
            ),
          ),
          Positioned(
            bottom: 80,
            left: MediaQuery.of(context).size.width / 18,
            child: FadeIn(
              delay: 1.5,
              child: SizedBox(
                  height: 90, width: 90, child: RectangleDotPatternLarge()),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 6,
            right: -25,
            child: RotatedPattern(
              pattern: SizedBox(
                child: DotWithTriangle(),
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
