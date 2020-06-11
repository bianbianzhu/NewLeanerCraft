import 'package:flutter/material.dart';
import 'package:webpagetransition/componets/cards/course_card.dart';
import 'package:webpagetransition/componets/nav_bar/category_bar.dart';
import 'package:webpagetransition/utils/animations/fade_in_effect.dart';
import 'package:webpagetransition/utils/responsive_layout/responsive_lay_out_main.dart';
import 'package:webpagetransition/utils/extensions/hover_extension.dart';

import '../../constants.dart';

class BestSellerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    print('rendering best sell page now');
    if (ResponsiveLayOut.isDesktopVersion(context)) {
      return Padding(
        padding: EdgeInsets.only(
          top: 32,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: (MediaQuery.of(context).size.width / 12) + 42,
                ),
                child: Text(
                  'Popular Topics',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      fontFamily: 'Merriweather'),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              CategoryBar(),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: (MediaQuery.of(context).size.width / 12) + 42,
                    vertical: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Best Selling Courses',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          fontFamily: 'Merriweather'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'View all',
                        style: TextStyle(
                          color: kThemeGreen,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ).showCursorOnHover.moveUpOnHover,
                  ],
                ),
              ),
              Center(
                child: Wrap(
                  runSpacing: 48,
                  spacing: 48,
                  children: create4CourseCard(),
                ),
              ),
              SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      );
    } else if (ResponsiveLayOut.isMediumVersion(context)) {
      return Padding(
        padding: EdgeInsets.only(
          top: 32,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: (MediaQuery.of(context).size.width / 12) + 42,
                ),
                child: Text(
                  'Popular Topics',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      fontFamily: 'Merriweather'),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              CategoryBar(),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: (MediaQuery.of(context).size.width / 12) + 42,
                    vertical: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Best Selling Courses',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          fontFamily: 'Merriweather'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'View all',
                        style: TextStyle(
                          color: kThemeGreen,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ).showCursorOnHover.moveUpOnHover,
                  ],
                ),
              ),
              Center(
                child: Wrap(
                  runSpacing: 48,
                  spacing: 48,
                  children: create4CourseCard(),
                ),
              ),
              SizedBox(
                height: 32,
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

///------- the CourseCard part-----
List<Widget> create4CourseCard() {
  return [
    FadeIn(
      delay: 1.5,
      translateXValue: 230,
      child: CourseCard(
        isBestSeller: true,
      ),
    ),
    FadeIn(
      delay: 1.7,
      translateXValue: 230,
      child: CourseCard(
        cardColor: Colors.redAccent,
        textColor: Colors.black87,
        backgroundImage: 'frontPage2',
        courseName: 'Personas: Improve Your\nUX with Human-Centered',
        category: 'Accounting',
        teacherName: 'Yency Lorena',
        profileImage: 'person2',
        standardPrice: 'AUD 150',
        discountedPrice: 'AUD 22.90',
        rating: '4.8',
        reviews: '(131,010)',
        isBestSeller: true,
      ),
    ),
    FadeIn(
      delay: 1.9,
      translateXValue: 230,
      child: CourseCard(
        cardColor: Colors.blueAccent,
        textColor: Colors.blueAccent,
        backgroundImage: 'frontPage4',
        courseName: 'How to Code an Flutter\nApp in 5 Minutes',
        category: 'Programming',
        teacherName: 'Jason the IceLord',
        profileImage: 'person3',
        standardPrice: 'AUD 999',
        discountedPrice: 'AUD 99.90',
        rating: '5.0',
        reviews: '(999,000)',
        isBestSeller: true,
      ),
    ),
    FadeIn(
      delay: 2.1,
      translateXValue: 230,
      child: CourseCard(
        cardColor: Colors.purple.shade400,
        textColor: Colors.black87,
        backgroundImage: 'frontPage3',
        courseName: 'Personas: Improve Your\nUX with Human-Centered',
        category: 'Illustration',
        teacherName: 'Sushnat Chekma',
        profileImage: 'person6',
        standardPrice: 'AUD 50',
        discountedPrice: 'AUD 5.90',
        rating: '4.7',
        reviews: '(2,050)',
        isBestSeller: true,
      ),
    ),
  ];
}
