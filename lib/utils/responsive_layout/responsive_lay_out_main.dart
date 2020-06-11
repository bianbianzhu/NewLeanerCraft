import 'package:flutter/material.dart';

//WHEN PUT ANYTHING responsiveLayout widget inside a row, which has a unbound width (double.infinity), this won't work
//********** as long as its in the row, the constraints.maxWith passed to this, will be width: double.infinity
//********* Wrap it with a ConstraintBox, give the MaxWidth as MediaQuery

//**************** HOWEVER; use static bool isDesktopVersion, the buildContext is only for the class??? So it's always the website page context???  webLogo vs testLogo
class ResponsiveLayOut extends StatelessWidget {
  final Widget desktopVersion;
  final Widget mediumVersion;
  final Widget mobileVersion;

  ResponsiveLayOut(
      {this.desktopVersion, this.mediumVersion, this.mobileVersion});

  //refer to the static youtube video
  //it becomes class method\
  //can be accessed via ResponsiveLayOut.is... but not via a object
  static bool isDesktopVersion(BuildContext context) {
    return MediaQuery.of(context).size.width > 1100;
  }

  static bool isMediumVersion(BuildContext context) {
    return MediaQuery.of(context).size.width < 1100 &&
        MediaQuery.of(context).size.width > 740;
  }

  static bool isMobileVersion(BuildContext context) {
    return MediaQuery.of(context).size.width < 740;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1100) {
          print('large ${constraints.maxWidth}');
          return desktopVersion;
        } else if (constraints.maxWidth < 1100 && constraints.maxWidth > 740) {
          print('medium ${constraints.maxWidth}');
          return mediumVersion ?? desktopVersion;
        } else {
          print('small ${constraints.maxWidth}');
          return mobileVersion ?? desktopVersion;
          //also use ?? to give a default value
        }
      },
    );
  }
}
