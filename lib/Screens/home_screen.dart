import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webpagetransition/Screens/pages/2nd_landing_page.dart';
import 'package:webpagetransition/Screens/pages/author_page.dart';
import 'package:webpagetransition/Screens/pages/best_sell_page.dart';
import 'package:webpagetransition/Screens/pages/instruction_page.dart';
import 'package:webpagetransition/Screens/pages/landing_page.dart';
import 'package:webpagetransition/utils/responsive_layout/responsive_lay_out_main.dart';
import 'pages/course_overview_page.dart';
import 'package:webpagetransition/constants.dart';
import 'package:webpagetransition/utils/extensions/hover_extension.dart';
import 'pages/company_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    if (ResponsiveLayOut.isMobileVersion(context)) {
      return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.question_answer,
              size: 26,
            ),
            backgroundColor: kThemeGreen,
            elevation: 3,
          ).showCursorOnHover,
          body: PageView(
            dragStartBehavior: DragStartBehavior.start,
            scrollDirection: Axis.vertical,
            pageSnapping: true,
            children: <Widget>[
              LandingPage(),
              Center(
                child: OverviewPage(),
              ),
              BestSellerPage(),
              StartLearningPage(),
              AuthorPage(),
              InstructionPage(),
              CompanyPage(),
            ],
          ));
    } else {
      return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.question_answer,
              size: 26,
            ),
            backgroundColor: kThemeGreen,
            elevation: 3,
          ).showCursorOnHover,
          body: PageView(
            dragStartBehavior: DragStartBehavior.start,
            scrollDirection: Axis.vertical,
            pageSnapping: true,
            children: <Widget>[
              LandingPage(),
              Center(
                child: OverviewPage(),
              ),
              BestSellerPage(),
              StartLearningPage(),
              AuthorPage(),
              InstructionPage(),
              CompanyPage(),
            ],
          ));
    }
  }
}
