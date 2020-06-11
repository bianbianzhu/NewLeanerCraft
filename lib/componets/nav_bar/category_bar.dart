import 'package:flutter/material.dart';
import 'package:webpagetransition/componets/cards/topic_cards.dart';
import 'package:webpagetransition/utils/animations/animated_opacity.dart';
import 'package:webpagetransition/utils/animations/fade_in_effect.dart';
import 'package:webpagetransition/utils/shapes/draw_rectdot_pattern.dart';
import 'package:webpagetransition/utils/shapes/topic_card_shapes.dart';
import 'package:webpagetransition/utils/shapes/draw_shapes.dart';
import 'dart:math';
import 'dart:async';
import 'package:webpagetransition/utils/responsive_layout/responsive_lay_out_main.dart';

class CategoryBar extends StatefulWidget {
  @override
  _CategoryBarState createState() => _CategoryBarState();
}

class _CategoryBarState extends State<CategoryBar> {
  ///---------The Topic card part - detail about the child1 and child 2
  List<TopicCard> _topicCardUIList = [
    TopicCard(
      child1: SquareDotPattern7(),
      child2: RotateRectangleShape(),
      category: 'Web Development\n',
      index: 1,
    ),
    TopicCard(
      child1: Transform.rotate(
        angle: pi / 4,
        child: SquareDotPattern7(
          color: Colors.orangeAccent,
        ),
      ),
      child2: CustomPaint(
        painter: DrawCircle(
          color: Colors.orangeAccent,
          radius: 35,
          paintingStyle: PaintingStyle.fill,
        ),
      ),
      category: 'UX/UI Design\n',
      index: 2,
    ),
    TopicCard(
      child1: Transform(
        transform: Matrix4.identity()
          ..rotateZ(pi)
          ..translate(-70, -75, 0), //(A:-^ right   B: -^ lower)
        child: CustomPaint(
          painter: DrawEqualSideTriangle(
            color: Colors.greenAccent.shade700,
          ),
        ),
      ),
      child2: Transform(
        transform: Matrix4.identity()
          ..rotateZ(pi)
          ..translate(-11, -58, 0),
        child: CustomPaint(
          painter: DrawEqualSideTriangle(
            color: Colors.greenAccent.shade700,
            paintingStyle: PaintingStyle.stroke,
            strokeWidth: 1,
          ),
        ),
      ),
      category: 'Business\nDevelopment',
      index: 3,
    ),
    TopicCard(
      child1: Transform(
        transform: Matrix4.identity()
          ..rotateZ(pi)
          ..translate(30, 25, 0), //(A:-^ right   B: -^ lower)
        child: CustomPaint(
          painter: DrawCircle(color: Colors.indigo.shade200, radius: 25),
        ),
      ),
      child2: Transform(
        transform: Matrix4.identity()
          ..rotateZ(pi)
          ..translate(10, 0, 0),
        child: CustomPaint(
          painter: DrawCircle(
              color: Colors.indigo,
              paintingStyle: PaintingStyle.stroke,
              strokeWidth: 14,
              radius: 30),
        ),
      ),
      category: 'Photography',
      index: 4,
    ),
    TopicCard(
      child1: Transform(
        transform: Matrix4.identity()
          ..rotateZ(pi / 1.1)
          ..translate(-90, -100,
              0), //(A:-^ right   B: -^ lower, but its according to the rotation >.<)
        child: SquareDotPattern7(
          color: Colors.pinkAccent.shade100,
        ),
      ),
      child2: Transform(
        transform: Matrix4.identity()
          ..rotateZ(pi / 11)
          ..translate(-121, 18, 0),
        child: CustomPaint(
          painter: DrawEqualSideTriangle(
            color: Colors.pinkAccent.shade100,
          ),
        ),
      ),
      category: 'Personal\nDevelopment',
      index: 5,
    ),
    TopicCard(
      child1: Transform(
        transform: Matrix4.identity()
          ..rotateZ(pi / 4)
          ..translate(-25, 15, 0), //(A:-^ right   B: -^ lower)
        child: SquareDotPattern7(
          color: Colors.red.shade700,
        ),
      ),
      child2: Transform(
        transform: Matrix4.identity()
          ..rotateZ(2 * pi)
          ..translate(-20, -20, 0),
        child: CustomPaint(
          painter: DrawEqualSideTriangle(
            color: Colors.red.shade700,
          ),
        ),
      ),
      category: 'Graphic Design',
      index: 6,
    ),
//    TopicCard(
//      child1: Transform(
//        transform: Matrix4.identity()
//          ..rotateZ(pi / 1.3)
//          ..translate(-50, -100,
//              0), //(A:-^ right   B: -^ lower, but its according to the rotation >.<)
//        child: SquareDotPattern7(
//          color: Colors.deepOrange,
//        ),
//      ),
//      child2: Transform(
//        transform: Matrix4.identity()..translate(-101, 18, 0),
//        child: CustomPaint(
//          painter: DrawCircle(
//            color: Colors.deepOrange,
//            strokeWidth: 10,
//            radius: 30,
//            paintingStyle: PaintingStyle.stroke,
//          ),
//        ),
//      ),
//      category: 'Mobile\nDevelopment',
//      index: 5,
//    ),
  ];

  PageController _pageController;
  PageController _pageControllerMedium;
  int _currentPage;

  ///-------------AUTO-SCROLLING EFFECT------------------------------
//  _scrollToLast() {
//    _pageController.jumpTo(_pageController.position.maxScrollExtent);
//  }
  ///---------------This only applies when there's an itemCount + it jumps directly to the last one----no animation

//  _scrollToNext() {
//    double _maxValue = _pageController.position.maxScrollExtent;
//    double _scrollValue = _pageController.offset;
//    print('scroll value is $_scrollValue ||| max is $_maxValue');
//  }

  ///-----------------------------probably make things difficult -----------------------------------------------------------------

  ///Eventually, decided to use the next page method
  _scrollToNext() {
    _pageController.nextPage(
        duration: Duration(milliseconds: 2000), curve: Curves.linear);
  }

  /// every 1999 millisecond, call the nextPage method
  _autoScrollNext() {
    Duration _mill1500 = Duration(milliseconds: 1999);
    Timer.periodic(_mill1500, (timer) {
      return _scrollToNext();
    });
  }

  ///---------------------------------------------------------------
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 999, viewportFraction: .125);
    _pageControllerMedium =
        PageController(initialPage: 999, viewportFraction: .25);

    ///--------------------TO solve the viewPortFraction problem ----- .125 maxScreen to .18 aboutTobe Medium Screen
    ///------------------- MediaQuery.of.screenSize.longestSide ---- 1536: 1.25  VS. 1102.4 vs 1.8
    ///------- y = ax+b ----   y = -788.36x + 2521.45  (y = MediaQuery, x = fraction)  ---- !!!!! and realize the fucking viewPortFraction is a final and cannot be changed
    // but why set the initial page???
    _currentPage = 999; //the initial one is 999
    _autoScrollNext();
  }

  @override
  Widget build(BuildContext context) {
    ///-------------AUTO-SCROLLING------------------------------------------------
//    WidgetsBinding.instance.addPostFrameCallback((_) {
//      return _scrollToLast();
//    });
    ///------------------Good one but not for our case---- this goes to the last one directly, can be used in something, like always show the newest information(page) fetched from the internet ---------------------------

//    _viewFactionRatio =
//        ((MediaQuery.of(context).size.width - 2521.45) / (-788.36));

//    setState(() {
//      _pageController.viewportFraction = _viewFactionRatio;
//    });
    if (ResponsiveLayOut.isDesktopVersion(context)) {
      return SizedBox(
        height: 160, // this should be equal to the topic card height
        child: PageView.builder(
          // this must have a height (can't be unbounded height if scrollAxis is horizontal)
          itemBuilder: (context, index) {
            return FadeIn(
              delay: index < 1005 ? (index - 999 + 1).toDouble() : 1,

              /// use the index to set up the animation delay - this FadeIn happens, every time the Category card builds - will this cause lag???
              /// fade in effect is really suitable for builder :D
              child: _topicCardUIList[index % 6],
            ); // this hack is so op!!!! infinite scroll   use  index/6 (which is 5+1) !!!!!  + no itemCount
          },
          controller: _pageController,
          scrollDirection: Axis.horizontal,
          onPageChanged: (index) {
            setState(() {
              _currentPage = index;
            });
          },
        ),
      );
    } else if (ResponsiveLayOut.isMediumVersion(context)) {
      return SizedBox(
        height: 160, // this should be equal to the topic card height
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 40,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 100, //has to have this
                child: AnimatedOpacityWidget(
                  child: CustomPaint(
                    painter: DrawDashedCurvedLine(
                      color: Colors.blue.shade700.withOpacity(.2),
                      strokeWidth: 12,
                      paintingStyle: PaintingStyle.stroke,
                    ),
                  ),
                ),
              ),
            ),
            PageView.builder(
              // this must have a height (can't be unbounded height if scrollAxis is horizontal)
              itemBuilder: (context, index) {
                return FadeIn(
                  delay: index < 1005 ? (index - 999 + 1).toDouble() : 1,

                  /// use the index to set up the animation delay - this FadeIn happens, every time the Category card builds - will this cause lag???
                  /// fade in effect is really suitable for builder :D
                  child: _topicCardUIList[index % 6],
                ); // this hack is so op!!!! infinite scroll   use  index/6 (which is 5+1) !!!!!  + no itemCount
              },
              controller: _pageControllerMedium,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
            ),
          ],
        ),
      );
    } else {
      return Container();
    }
  }
}
