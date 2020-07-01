import 'package:flutter/material.dart';
import 'package:webpagetransition/constants.dart';
import 'package:webpagetransition/utils/extensions/hover_extension.dart';

class ComInfoCard extends StatelessWidget {
  final String title;
  final String sub1;
  final String sub2;
  final String sub3;
  final String sub4;
  final String sub5;
  final String sub6;

  ComInfoCard(
      {this.title = 'About LearnerCraft',
      this.sub1 = 'About',
      this.sub2 = 'Open edx',
      this.sub3 = 'News',
      this.sub4 = 'Press center',
      this.sub5 = 'Become a teacher',
      this.sub6 = 'Team'});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 15,
            letterSpacing: .4,
            fontFamily: 'Merriweather',
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          sub1,
          style: kSmallText,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          sub2,
          style: kSmallText,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          sub3,
          style: kSmallText,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          sub4,
          style: kSmallText,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          sub5,
          style: kSmallText,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          sub6,
          style: kSmallText,
        ),
      ],
    ).showCursorOnHover;
  }
}
