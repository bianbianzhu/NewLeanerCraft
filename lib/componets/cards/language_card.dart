import 'package:flutter/material.dart';
import 'package:webpagetransition/componets/drop_down_button/language_drop_down.dart';
import 'package:webpagetransition/constants.dart';

class LanguageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'LearnerCraft',
          style: TextStyle(
            fontSize: 26,
//            fontFamily: 'SourceSansPro',
            color: kThemeGreen,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          '@ 2012-2020 LearnerCraft Inc. All right reserved',
          style: TextStyle(
            fontSize: 8,
            color: Color(0xff999999),
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 32,
        ),
        LanguageDropDown(),
      ],
    );
  }
}
