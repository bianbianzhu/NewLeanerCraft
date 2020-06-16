import 'dart:math';

import 'package:flutter/material.dart';
import 'package:webpagetransition/componets/decorated_images/cliped_image.dart';
import 'package:webpagetransition/constants.dart';
import 'package:webpagetransition/utils/data/author_book.dart';
import 'package:webpagetransition/utils/responsive_layout/responsive_lay_out_main.dart';

class ProfileDetail extends StatefulWidget {
  final int index;

  ProfileDetail({this.index = 0});

  @override
  _ProfileDetailState createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail> {
  final AuthorBook _authorBook = AuthorBook();

  @override
  Widget build(BuildContext context) {
    double horizontalPadding = MediaQuery.of(context).size.width / 8;
    if (ResponsiveLayOut.isDesktopVersion(context)) {
      return AnimatedContainer(
        duration: Duration(milliseconds: 300),
        padding: EdgeInsets.symmetric(
          vertical: 16,
          horizontal: horizontalPadding,
        ),
        child: Row(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 120,
                ),
                ClippedImage(
                  imageName: _authorBook.favAuthors[widget.index].imageName,
                  angleUnit: pi / 8,
                  a: (35.0 + widget.index * 12),
                  b: 39.0 + widget.index * 13,
                  c: 53.0 + widget.index * 14.88,
                  d: 63.0 + widget.index * 15.12,
                ),
              ],
            ),
            SizedBox(
              width: horizontalPadding > 176 ? 150 : 100,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '"',
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: kThemeGreen,
                      fontFamily: 'SourceSansPro'),
                ),
                SizedBox(
                  height: 3,
                ),
                SizedBox(
                  width: horizontalPadding > 176 ? 500 : 400,
                  child: Text(
                    _authorBook.favAuthors[widget.index].quote,
                    style: TextStyle(
                      height: 2,
                      fontFamily: 'Merriweather',
                      fontWeight: FontWeight.w500,
                      fontSize: horizontalPadding > 156 ? 16 : 12,
                      color: Colors.black87,
                    ),
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                Text(
                  _authorBook.favAuthors[widget.index].name,
                  style: TextStyle(
                    color: kThemeGreen,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  _authorBook.favAuthors[widget.index].job,
                  style: TextStyle(
                    color: Colors.black26,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    } else if (ResponsiveLayOut.isMediumVersion(context)) {
      return AnimatedContainer(
        duration: Duration(milliseconds: 300),
        padding: EdgeInsets.symmetric(
          vertical: 16,
          horizontal: horizontalPadding,
        ),
        child: Row(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 120,
                ),
                ClippedImage(
                  imageName: _authorBook.favAuthors[widget.index].imageName,
                  angleUnit: pi / 8,
                  a: (35.0 + widget.index * 12),
                  b: 39.0 + widget.index * 13,
                  c: 53.0 + widget.index * 14.88,
                  d: 63.0 + widget.index * 15.12,
                ),
              ],
            ),
            SizedBox(
              width: 100,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '"',
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: kThemeGreen,
                      fontFamily: 'SourceSansPro'),
                ),
                SizedBox(
                  height: 3,
                ),
                SizedBox(
                  width: 300,
                  child: Text(
                    _authorBook.favAuthors[widget.index].quote,
                    style: TextStyle(
                      height: 2,
                      fontFamily: 'Merriweather',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Colors.black87,
                    ),
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                Text(
                  _authorBook.favAuthors[widget.index].name,
                  style: TextStyle(
                    color: kThemeGreen,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  _authorBook.favAuthors[widget.index].job,
                  style: TextStyle(
                    color: Colors.black26,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    } else {
      return Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '"',
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: kThemeGreen,
                  fontFamily: 'SourceSansPro'),
            ),
            SizedBox(
              height: 3,
            ),
            SizedBox(
              width: 300,
              child: Text(
                _authorBook.favAuthors[widget.index].quote,
                style: TextStyle(
                  height: 2,
                  fontFamily: 'Merriweather',
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Colors.black87,
                ),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Text(
              _authorBook.favAuthors[widget.index].name,
              style: TextStyle(
                color: kThemeGreen,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              _authorBook.favAuthors[widget.index].job,
              style: TextStyle(
                color: Colors.black26,
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            ),
          ],
        ),
      );
    }
  }
}
