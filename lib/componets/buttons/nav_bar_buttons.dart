import 'package:flutter/material.dart';
import 'package:webpagetransition/constants.dart';
import 'package:webpagetransition/utils/responsive_layout/responsive_lay_out_main.dart';
import 'package:webpagetransition/utils/extensions/hover_extension.dart';

class NavBarButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (ResponsiveLayOut.isMobileVersion(context)) {
      return IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.menu,
          color: kThemeGreen,
          size: 32,
        ),
      );
    } else {
      return Row(
        children: <Widget>[
          AnimatedContainer(
            curve: Curves.bounceOut,
            duration: Duration(milliseconds: 500),
            width: ResponsiveLayOut.isDesktopVersion(context) ? 100 : 50,
            child: FlatButton(
              padding: EdgeInsets.symmetric(horizontal: 2),
              color: Colors.transparent,
              child: Text(
                'Sign in',
                style: TextStyle(
                    color: Colors.black54, fontFamily: 'SourceSansPro'),
              ),
              onPressed: () {},
            ).showCursorOnHover.moveUpOnHover,
          ),
          FlatButton(
            color: kThemeGreen,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            child: ResponsiveLayOut.isDesktopVersion(context)
                ? Text(
                    'Get started',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'SourceSansPro'),
                  )
                : Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                  ),
            onPressed: () {},
          ).showCursorOnHover.moveUpOnHover,
        ],
      );
    }
  }
}

//------------
