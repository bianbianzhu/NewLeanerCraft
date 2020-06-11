import 'package:flutter/material.dart';

class InstructionCard extends StatelessWidget {
  final MaterialColor color;
  final IconData icon;
  final String title;
  final String subtitle;
  InstructionCard(
      {this.color = Colors.indigo,
      this.icon = Icons.library_books,
      this.title = 'Enroll to course',
      this.subtitle =
          'It is a long established fact that a reader\nwill be distracted by the readable content of\na page when looking at its layout.'});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 32,
      ),
      height: 220,
      width: 260,
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  color,
                  color.shade300,
                  color.shade200,
                  color
                      .shade100 // in order to use shade... should be materialColor
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                stops: [0.3, 0.5, 0.7, 1],

                ///"colors" and "colorStops" arguments must have equal length.
                /// 0.5 is from 0 - half, 0.7 is from 0.5 to 0.7, ...
                ///-------control the space of each color
              ),
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 45,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Merriweather',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 1.5,
              fontSize: 12,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
