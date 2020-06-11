import 'package:flutter/material.dart';
import 'package:webpagetransition/utils/responsive_layout/responsive_lay_out_main.dart';

class SponsorLogos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (ResponsiveLayOut.isMobileVersion(context)) {
      return Container();
    } else {
      return Container(
        padding: ResponsiveLayOut.isDesktopVersion(context)
            ? EdgeInsets.symmetric(
//                horizontal: MediaQuery.of(context).size.width / 12,
                )
            : EdgeInsets.symmetric(
                horizontal: 64,
                vertical: 0,
              ),
        height:
            100, // this is very important... coz the padding is not relevant COZ YOU USE THE BACKGROUND IMAGE
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: createGreyOutImage(),
        ),
      );
    }
  }
}

class GreyOutImage extends StatelessWidget {
  final int index;
  GreyOutImage(this.index);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: .3,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: ResponsiveLayOut.isDesktopVersion(context) ? 100 : 70,
        height: ResponsiveLayOut.isDesktopVersion(context) ? 100 : 70,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/lg$index.png',
            ),
//                  colorFilter: ColorFilter.mode(
//                    Colors.grey,
//                    BlendMode.saturation,
//                  )
          ),
        ),
      ),
    );
  }
}

List<Widget> createGreyOutImage() {
  return [
    GreyOutImage(1),
    GreyOutImage(2),
    GreyOutImage(3),
    GreyOutImage(4),
    GreyOutImage(5),
    GreyOutImage(6),
    GreyOutImage(7),
  ];
}
