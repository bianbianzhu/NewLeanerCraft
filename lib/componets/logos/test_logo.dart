import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webpagetransition/utils/responsive_layout/responsive_lay_out_main.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class TestLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayOut(
      desktopVersion: LargeLogo(),
      mediumVersion: LargeLogo(),
      mobileVersion: LargeLogo(),
    );
  }
}

//************************** this gives the large Logo*********************************
class LargeLogo extends StatefulWidget {
  @override
  _LargeLogoState createState() => _LargeLogoState();
}

class _LargeLogoState extends State<LargeLogo> {
  double _opacity;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _opacity = 0;
    Future.delayed(Duration(milliseconds: 6500), () {
      setState(() {
        _opacity = 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    print('LargoLogo');
    if (ResponsiveLayOut.isDesktopVersion(context)) {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blueAccent, width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
        height: 49,
        width: 180,
        padding: EdgeInsets.only(
          left: 12,
        ),
        child: ListView(
          //this ListView is specific for the animation Text to allow it have enough space to display
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "Learner",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 21.3,
                      fontFamily: 'Merriweather',
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                ),
                Stack(
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Positioned(
                      top: 8,
                      child: AnimatedOpacity(
                        duration: Duration(milliseconds: 500),
                        opacity: _opacity,
                        child: Text(
                          'Craft.',
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: "Merriweather",
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                    ),
                    RotateAnimatedTextKit(
                      onTap: () {},
                      isRepeatingAnimation: false,
                      text: ["World", "Land", "Craft"],
                      // alignment: Alignment(1.0, 0.5),
                      textStyle: TextStyle(
                        fontSize: 24,
                        fontFamily: "Merriweather",
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    } else {
      return Container(
        alignment: Alignment.center,
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.blueAccent, width: 2),
        ),
        child: Text(
          'LC.',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
            fontFamily: 'Merriweather',
            color: Colors.blueAccent,
          ),
        ),
      );
    }
  }
}

//********************** this gives the small Logo (morel like a short form)*************
//class SmallLogo extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    print('small logo');
//    return Container(
//      alignment: Alignment.center,
//      height: 50,
//      width: 50,
//      decoration: BoxDecoration(
//        borderRadius: BorderRadius.circular(8),
//        border: Border.all(color: Colors.blueAccent, width: 2),
//      ),
//      child: Text(
//        'LC.',
//        style: TextStyle(
//          fontWeight: FontWeight.bold,
//          fontSize: 26,
//          fontFamily: 'Merriweather',
//          color: Colors.blueAccent,
//        ),
//      ),
//    );
//  }
//}
