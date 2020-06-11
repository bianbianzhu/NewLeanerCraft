import 'package:flutter/material.dart';
import 'package:webpagetransition/componets/drop_down_button/drop_down.dart';
import 'package:webpagetransition/componets/buttons/nav_bar_buttons.dart';
import 'package:webpagetransition/componets/logos/website_logo.dart';
import 'package:webpagetransition/componets/search_bar/search_bar.dart';
import 'package:webpagetransition/utils/responsive_layout/responsive_lay_out_main.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  double _opacity;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _opacity = 0;
    Future.delayed(Duration(milliseconds: 5), () {
      setState(() {
        _opacity = 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (ResponsiveLayOut.isMobileVersion(context)) {
      return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 26,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.longestSide,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: WebLogo(),
                )),
            Stack(
              children: <Widget>[
                SearchBarWidget(),
                Positioned(top: 60, left: 100, child: DropDownComp()),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14),
              child: NavBarButtons(),
            ),
          ],
        ),
      );
    } else {
      return AnimatedOpacity(
        duration: Duration(milliseconds: 1500),
        curve: Curves.bounceInOut,
        opacity: _opacity,
        child: Padding(
          padding: ResponsiveLayOut.isDesktopVersion(context)
              ? EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 12,
                  vertical: 26,
                )
              : EdgeInsets.symmetric(
                  horizontal: 64,
                  vertical: 26,
                ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
//                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.longestSide,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 14),
                        child: WebLogo(),
                      )),
                  SizedBox(
                    width: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 14),
                    child: DropDownComp(),
                  ),
                  SearchBarWidget(),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14),
                child: NavBarButtons(),
              ),
            ],
          ),
        ),
      );
    }
  }
}
