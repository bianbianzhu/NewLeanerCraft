import 'package:flutter/material.dart';
import 'package:webpagetransition/constants.dart';
import 'package:webpagetransition/utils/extensions/hover_extension.dart';
import 'package:webpagetransition/utils/shapes/draw_shapes.dart';

class CourseCard extends StatelessWidget {
  final Color cardColor;
  final Color textColor;
  final String category;
  final String courseName;
  final String teacherName;
  final String backgroundImage;
  final String profileImage;
  final String standardPrice;
  final String discountedPrice;
  final String rating;
  final String reviews;
  final bool isBestSeller;

  CourseCard(
      {this.cardColor = kThemeGreen,
      this.textColor = kThemeGreen,
      this.backgroundImage = 'frontPage1',
      this.category = 'Business development',
      this.courseName = 'Microsoft Excel: Top 50\nFormulas in 50 Minutes!',
      this.teacherName = 'Tianyi Li',
      this.profileImage = 'person1',
      this.standardPrice = 'AUD 120',
      this.discountedPrice = 'AUD 19.50',
      this.rating = '4.5',
      this.reviews = '(12,760)',
      this.isBestSeller = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 365,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: .5,
          ),
        ],
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Stack(
            overflow: Overflow.visible,
            children: [
              Container(
                width: 260,
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(6),
                    topRight: Radius.circular(6),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'images/$backgroundImage.jpg',
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -15,
                left: -0.5,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                  color: cardColor,
                  child: Text(
                    category,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'SourceSansPro',
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              isBestSeller
                  ? Positioned(
                      left: 6,
                      top: -8,
                      child: Stack(
                        children: [
                          Icon(
                            Icons.bookmark,
                            color: Colors.orange,
                            size: 55,
                          ),
                          Positioned(
                            left: 15,
                            top: 10,
                            child: Text(
                              'Best\nSeller',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 8),
                            ),
                          )
                        ],
                      ),
                    )
                  : Container(
                      width: .001,
                      height: .001,
                    )
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Text(
            courseName,
            textAlign: TextAlign.start,
            style: TextStyle(
                color: textColor,
                fontSize: 18,
                fontFamily: 'Merriweather',
                fontWeight: FontWeight.w300),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomPaint(
                      painter: DrawCircle(
                        color: cardColor,
                        radius: 18,
                      ),
                    ),
                    CustomPaint(
                      painter: DrawCircle(
                        color: Colors.white,
                        radius: 17,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('images/$profileImage.png'),
                      radius: 15,
                    ),
                  ],
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  teacherName,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              color: Colors.grey,
              height: 0.2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      standardPrice,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black26,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    Text(
                      discountedPrice,
                      style: TextStyle(
                        color: kThemeGreen,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange.shade800,
                      size: 14,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      rating,
                      style: TextStyle(
                        color: Colors.orange.shade800,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      reviews,
                      style: TextStyle(
                        color: Colors.black26,
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ).moveUpOnHover.shadowOnHover.showCursorOnHover;
  }
}
