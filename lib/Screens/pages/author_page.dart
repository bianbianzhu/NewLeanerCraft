import 'dart:html';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webpagetransition/componets/cards/profile_card.dart';
import 'package:webpagetransition/componets/cards/profile_detail.dart';
import 'package:webpagetransition/constants.dart';
import 'package:webpagetransition/utils/animations/fade_in_effect.dart';
import 'package:webpagetransition/utils/responsive_layout/responsive_lay_out_main.dart';
import 'package:webpagetransition/utils/extensions/hover_extension.dart';
import 'package:webpagetransition/utils/shapes/draw_rectdot_pattern.dart';
import 'package:webpagetransition/utils/shapes/draw_shapes.dart';

class AuthorPage extends StatefulWidget {
  @override
  _AuthorPageState createState() => _AuthorPageState();
}

class _AuthorPageState extends State<AuthorPage> {
  PageController _pageController;
  int currentPage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(
      initialPage: 999,
    );
    currentPage = 0;
  }

  @override
  Widget build(BuildContext context) {
    if (ResponsiveLayOut.isDesktopVersion(context)) {
      return Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 32,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 15,
                    right: MediaQuery.of(context).size.width / 15,
                  ),
                  child: Text(
                    'Favorite Author',
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontWeight: FontWeight.w900,
                        fontSize: 26,
                        letterSpacing: 1.3),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  padding: EdgeInsets.only(left: 100),
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ProfileCard(
                        translateValue: 90,
                      ),
                      ProfileCard(
                        delay: 1.3,
                        color: Colors.blue,
                        position2: 95,
                        position: 110,
                        angleUnit: 0,
                        radius: 35,
                        a: 45,
                        b: 55,
                        c: 34,
                        d: 70,
                        imageName: 'girl2',
                        numberOfCourses: 12,
                        personName: 'Olivia Wilde',
                        translateValue: 80,
                      ),
                      ProfileCard(
                        delay: 1.7,
                        color: kThemeGreen,
                        position: 22,
                        position2: 10,
                        angleUnit: pi / 14,
                        a: 25,
                        b: 37,
                        c: 34,
                        d: 18,
                        imageName: 'girl3',
                        radius: 35,
                        numberOfCourses: 22,
                        personName: 'Gwyneth Paltrow',
                        translateValue: 70,
                      ),
                      ProfileCard(
                        delay: 2.2,
                        angleUnit: pi / 29,
                        a: 40,
                        b: 72,
                        c: 24,
                        d: 33,
                        imageName: 'man1',
                        color: Colors.yellowAccent,
                        position: 120,
                        position2: 100,
                        radius: 45,
                        numberOfCourses: 12,
                        personName: 'John Legend',
                      ),
                      ProfileCard(
                        delay: 2.8,
                        angleUnit: pi / 11,
                        a: 35,
                        b: 37,
                        c: 33,
                        d: 43,
                        imageName: 'girl5',
                        color: Colors.greenAccent.shade200,
                        position: 40,
                        numberOfCourses: 33,
                        personName: 'Miley Ray Cyrus',
                        translateValue: 50,
                      ),
                      ProfileCard(
                        delay: 3.5,
                        angleUnit: pi / 900,
                        a: 65,
                        b: 77,
                        c: 84,
                        d: 28,
                        imageName: 'man2',
                        radius: 50,
                        color: Colors.red,
                        position: 70,
                        position2: 10,
                        numberOfCourses: 17,
                        personName: 'Ashton Kutcher',
                        translateValue: 40,
                      ),
                      ProfileCard(
                        delay: 4.3,
                        angleUnit: pi / 15,
                        a: 35,
                        b: 47,
                        c: 34,
                        d: 58,
                        imageName: 'girl1',
                        radius: 42,
                        color: Colors.orange,
                        position: 120,
                        position2: 70,
                        numberOfCourses: 5,
                        personName: 'Neta-Lee Hershlag',
                        translateValue: 30,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 12,
                  ),
                  child: SizedBox(
                    height: 350,
                    child: Stack(
                      overflow: Overflow.visible,
                      children: [
                        PageView.builder(
                          controller: _pageController,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return FadeIn(
                              delay: 1,
                              child: ProfileDetail(
                                index: index % 3,
                              ),
                            );
                          },
                          onPageChanged: (int pageNumber) {
                            setState(() {
                              currentPage = pageNumber;
                            });
                          },
                        ),
                        Positioned(
                          right: MediaQuery.of(context).size.width / 14,
                          top: 100,
                          child: FadeIn(
                            delay: 1.5,
                            translateXValue: 40,
                            child: FlatButton(
                              color: kThemeGreen,
                              padding: EdgeInsets.all(12),
                              shape: CircleBorder(),
                              child: Icon(
                                Icons.chevron_right,
                                color: Colors.white,
                                size: 20,
                              ),
                              onPressed: () {
                                _pageController.nextPage(
                                    duration: Duration(milliseconds: 800),
                                    curve: Curves.ease);
                              },
                            ).moveUpOnHover.showCursorOnHover,
                          ),
                        ),
                        Positioned(
                          left: MediaQuery.of(context).size.width / 14,
                          top: 100,
                          child: FadeIn(
                            delay: 1.5,
                            translateXValue: 40,
                            child: FlatButton(
                              padding: EdgeInsets.all(12),
                              shape: CircleBorder(
                                side: BorderSide(
                                    color: Colors.black54, width: .2),
                              ),
                              child: Icon(
                                Icons.chevron_left,
                                color: kThemeGreen,
                                size: 20,
                              ),
                              onPressed: () {
                                _pageController.previousPage(
                                    duration: Duration(milliseconds: 800),
                                    curve: Curves.decelerate);
                              },
                            ).moveUpOnHover.showCursorOnHover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2,
            left: 48,
            child: FadeIn(
              delay: 2,
              child: CustomPaint(
                painter: DrawTriangle(
                  color: Colors.red.shade900,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 6,
            left: 112,
            child: FadeIn(
              delay: 2,
              child: SizedBox(
                width: 70,
                height: 70,
                child: RectangleDotPattern(),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 9,
            left: MediaQuery.of(context).size.width / 1.8,
            child: FadeIn(
              delay: 3,
              child: Transform.rotate(
                //this is kind of neat, rotate from the center (don't like matrix4) -- r u sure about this?????
                angle: 125,
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
              ), //from the wave pattern
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 2.5,
            right: 64,
            child: FadeIn(
              delay: 2,
              child: SizedBox(
                height: 80,
                width: 80,
                child: RectangleDotPatternLarge(),
              ),
            ),
          ),
        ],
      );
    } else if (ResponsiveLayOut.isMediumVersion(context)) {
      return Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 32,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 15,
                    right: MediaQuery.of(context).size.width / 15,
                  ),
                  child: Text(
                    'Favorite Author',
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontWeight: FontWeight.w900,
                        fontSize: 26,
                        letterSpacing: 1.3),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ProfileCard(
                        translateValue: 90,
                      ),
                      ProfileCard(
                        delay: 1.3,
                        color: Colors.blue,
                        position2: 95,
                        position: 110,
                        angleUnit: 0,
                        radius: 35,
                        a: 45,
                        b: 55,
                        c: 34,
                        d: 70,
                        imageName: 'girl2',
                        numberOfCourses: 12,
                        personName: 'Olivia Wilde',
                        translateValue: 80,
                      ),
                      ProfileCard(
                        delay: 1.7,
                        color: kThemeGreen,
                        position: 22,
                        position2: 10,
                        angleUnit: pi / 14,
                        a: 25,
                        b: 37,
                        c: 34,
                        d: 18,
                        imageName: 'girl3',
                        radius: 35,
                        numberOfCourses: 22,
                        personName: 'Gwyneth Paltrow',
                        translateValue: 70,
                      ),
                      ProfileCard(
                        delay: 2.2,
                        angleUnit: pi / 29,
                        a: 40,
                        b: 72,
                        c: 24,
                        d: 33,
                        imageName: 'man1',
                        color: Colors.yellowAccent,
                        position: 120,
                        position2: 100,
                        radius: 45,
                        numberOfCourses: 12,
                        personName: 'John Legend',
                      ),
                      ProfileCard(
                        delay: 2.8,
                        angleUnit: pi / 11,
                        a: 35,
                        b: 37,
                        c: 33,
                        d: 43,
                        imageName: 'girl5',
                        color: Colors.greenAccent.shade200,
                        position: 40,
                        numberOfCourses: 33,
                        personName: 'Miley Ray Cyrus',
                        translateValue: 50,
                      ),
                      ProfileCard(
                        delay: 3.5,
                        angleUnit: pi / 900,
                        a: 65,
                        b: 77,
                        c: 84,
                        d: 28,
                        imageName: 'man2',
                        radius: 50,
                        color: Colors.red,
                        position: 70,
                        position2: 10,
                        numberOfCourses: 17,
                        personName: 'Ashton Kutcher',
                        translateValue: 40,
                      ),
                      ProfileCard(
                        delay: 4.3,
                        angleUnit: pi / 15,
                        a: 35,
                        b: 47,
                        c: 34,
                        d: 58,
                        imageName: 'girl1',
                        radius: 42,
                        color: Colors.orange,
                        position: 120,
                        position2: 70,
                        numberOfCourses: 5,
                        personName: 'Neta-Lee Hershlag',
                        translateValue: 30,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                SizedBox(
                  height: 350,
                  child: Stack(
                    overflow: Overflow.visible,
                    children: [
                      PageView.builder(
                        controller: _pageController,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return FadeIn(
                            delay: 1,
                            child: ProfileDetail(
                              index: index % 3,
                            ),
                          );
                        },
                        onPageChanged: (int pageNumber) {
                          setState(() {
                            currentPage = pageNumber;
                          });
                        },
                      ),
                      Positioned(
                        right: MediaQuery.of(context).size.width / 14,
                        top: 100,
                        child: FadeIn(
                          delay: 1.5,
                          translateXValue: 40,
                          child: FlatButton(
                            color: kThemeGreen,
                            padding: EdgeInsets.all(12),
                            shape: CircleBorder(),
                            child: Icon(
                              Icons.chevron_right,
                              color: Colors.white,
                              size: 20,
                            ),
                            onPressed: () {
                              _pageController.nextPage(
                                  duration: Duration(milliseconds: 800),
                                  curve: Curves.ease);
                            },
                          ).moveUpOnHover.showCursorOnHover,
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width / 14,
                        top: 100,
                        child: FadeIn(
                          delay: 1.5,
                          translateXValue: 40,
                          child: FlatButton(
                            padding: EdgeInsets.all(12),
                            shape: CircleBorder(
                              side:
                                  BorderSide(color: Colors.black54, width: .2),
                            ),
                            child: Icon(
                              Icons.chevron_left,
                              color: kThemeGreen,
                              size: 20,
                            ),
                            onPressed: () {
                              _pageController.previousPage(
                                  duration: Duration(milliseconds: 800),
                                  curve: Curves.decelerate);
                            },
                          ).moveUpOnHover.showCursorOnHover,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2,
            left: 48,
            child: FadeIn(
              delay: 2,
              child: CustomPaint(
                painter: DrawTriangle(
                  color: Colors.red.shade900,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 6,
            left: 112,
            child: FadeIn(
              delay: 2,
              child: SizedBox(
                width: 70,
                height: 70,
                child: RectangleDotPattern(),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 9,
            left: MediaQuery.of(context).size.width / 1.8,
            child: FadeIn(
              delay: 3,
              child: Transform.rotate(
                //this is kind of neat, rotate from the center (don't like matrix4) -- r u sure about this?????
                angle: 125,
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
              ), //from the wave pattern
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 2.5,
            right: 64,
            child: FadeIn(
              delay: 2,
              child: SizedBox(
                height: 80,
                width: 80,
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
