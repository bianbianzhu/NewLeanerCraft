import 'package:flutter/material.dart';
import 'package:webpagetransition/componets/cards/course_card.dart';
import 'package:webpagetransition/componets/logos/sponser_logos.dart';
import 'package:webpagetransition/constants.dart';
import 'package:webpagetransition/utils/animations/fade_in_effect.dart';
import 'package:webpagetransition/utils/extensions/hover_extension.dart';
import 'package:webpagetransition/utils/responsive_layout/responsive_lay_out_main.dart';

//used a wrap widget to solve the overflow problem.. nice.. but grid view will be better???

class OverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    print('Rendering course overview page now');
    if (ResponsiveLayOut.isDesktopVersion(context)) {
      return SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: 32, horizontal: MediaQuery.of(context).size.width / 12),
          child: Column(
            children: [
              TrustedLogos(),
              Padding(
                //this padding is to align with the logos
                padding: EdgeInsets.only(
                  left: 42,
                  right: 42,
                  top: 64,
                ),
                child: Column(
                  children: [
                    Row(
                      // row of Text [popular course + view all]///
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Popular Courses',
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
                    SizedBox(
                      height: 22,
                    ),
                    Wrap(
                      // wrap of the cards to avoid overflow of row//
                      spacing: 32,
                      runSpacing: 24,
                      children: create4CourseCard(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    } else if (ResponsiveLayOut.isMediumVersion(context)) {
      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 48,
          ),
          child: Column(
            children: [
              TrustedLogos(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 96,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Popular Courses',
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
              SizedBox(
                height: 22,
              ),
              Wrap(
                runSpacing: 48,
                spacing: 16,
                children: create4CourseCard(),
              ),
            ],
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 48,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Popular Courses',
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
              SizedBox(
                height: 22,
              ),
              Wrap(
                runSpacing: 48,
                spacing: 16,
                children: create4CourseCard(),
              ),
            ],
          ),
        ),
      );
    }
  }

  ///------- the CourseCard part-----
  List<Widget> create4CourseCard() {
    return [
      FadeIn(
        delay: 1.5,
        translateXValue: 230,
        child: CourseCard(
          backgroundImage: 'frontPage5',
        ),
      ),
      FadeIn(
        delay: 1.7,
        translateXValue: 230,
        child: CourseCard(
          cardColor: Colors.redAccent,
          textColor: Colors.black87,
          backgroundImage: 'frontPage6',
          courseName: 'Personas: Improve Your\nUX with Human-Centered',
          category: 'Accounting',
          teacherName: 'Yency Lorena',
          profileImage: 'person3',
          standardPrice: 'AUD 150',
          discountedPrice: 'AUD 22.90',
          rating: '4.8',
          reviews: '(131,010)',
        ),
      ),
      FadeIn(
        delay: 1.9,
        translateXValue: 230,
        child: CourseCard(
          cardColor: Colors.blueAccent,
          textColor: Colors.blueAccent,
          backgroundImage: 'frontPage7',
          courseName: 'How to Code an Flutter\nApp in 5 Minutes',
          category: 'Programming',
          teacherName: 'Jason the IceLord',
          profileImage: 'person5',
          standardPrice: 'AUD 999',
          discountedPrice: 'AUD 99.90',
          rating: '5.0',
          reviews: '(999,000)',
        ),
      ),
      FadeIn(
        delay: 2.1,
        translateXValue: 230,
        child: CourseCard(
          cardColor: Colors.purple.shade400,
          textColor: Colors.black87,
          backgroundImage: 'frontPage8',
          courseName: 'Personas: Improve Your\nUX with Human-Centered',
          category: 'Illustration',
          teacherName: 'Sushnat Chekma',
          profileImage: 'person4',
          standardPrice: 'AUD 50',
          discountedPrice: 'AUD 5.90',
          rating: '4.7',
          reviews: '(2,050)',
        ),
      ),
    ];
  }
}

///---- the trusted Logo part
class TrustedLogos extends StatefulWidget {
  const TrustedLogos({
    Key key,
  }) : super(key: key);

  @override
  _TrustedLogosState createState() => _TrustedLogosState();
}

class _TrustedLogosState extends State<TrustedLogos> {
  double _opacity = 0.1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 100), () {
      setState(() {
        _opacity = 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      curve: Curves.easeIn,
      duration: Duration(
        milliseconds: 800,
      ),
      opacity: _opacity,
      child: Column(
        children: [
          Text(
            'TRUSTED BY',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 13,
              fontWeight: FontWeight.bold,
              letterSpacing: 4,
            ),
          ),
          SponsorLogos(),
        ],
      ),
    );
  }
}

//TODO: desktopversion use a ListView to display the courses
//TODO: mediumversion use a GridView to display the courses
