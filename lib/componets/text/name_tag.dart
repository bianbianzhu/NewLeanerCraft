import 'package:flutter/material.dart';

class NameTag extends StatelessWidget {
  final String name;
  final int numberOfCourses;
  NameTag({this.name = 'Yency Lorena', this.numberOfCourses = 32});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: TextStyle(
            fontFamily: 'Merriweather',
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          '$numberOfCourses courses',
          style: TextStyle(
            color: Colors.black26,
            fontWeight: FontWeight.bold,
            fontSize: 8,
          ),
        ),
      ],
    );
  }
}
