import 'package:flutter/material.dart';
import 'package:webpagetransition/componets/buttons/text_button.dart';
import 'package:webpagetransition/componets/cards/company_info_card.dart';
import 'package:webpagetransition/componets/cards/join_card.dart';
import 'package:webpagetransition/componets/cards/language_card.dart';
import 'package:webpagetransition/utils/responsive_layout/responsive_lay_out_main.dart';

class CompanyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (ResponsiveLayOut.isDesktopVersion(context)) {
      return Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width / 12 + 42,
          right: MediaQuery.of(context).size.width / 12 + 42,
          top: 64,
        ),
        child: Column(
          children: [
            Container(
//            color: Colors.grey.shade300,
              width: MediaQuery.of(context).size.width -
                  2 * (MediaQuery.of(context).size.width / 12 + 42),
              height: 250,
              child: JoinCard(),
            ),
            SizedBox(
              height: 96,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LanguageCard(),
                ComInfoCard(),
                ComInfoCard(
                  title: 'Connect with us',
                  sub1: 'Blog',
                  sub2: 'Contact Us',
                  sub3: 'Help Center',
                  sub4: 'Career',
                  sub5: 'Donate',
                  sub6: 'Affiliate',
                ),
                ComInfoCard(
                  title: 'Products',
                  sub1: 'Our Plans',
                  sub2: 'Free Trial',
                  sub3: 'Academic Solutions',
                  sub4: 'Business Solutions',
                  sub5: 'Government Solutions',
                  sub6: 'Enterprise',
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              children: [
                TextButton(),
                SizedBox(
                  width: 32,
                ),
                TextButton(
                  btnName: 'Privacy Policy',
                ),
                SizedBox(
                  width: 32,
                ),
                TextButton(
                  btnName: 'Cookie Policy',
                ),
              ],
            ),
          ],
        ),
      );
    } else if (ResponsiveLayOut.isMediumVersion(context)) {
      return Padding(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 64,
        ),
        child: Column(
          children: [
            Container(
//            color: Colors.grey.shade300,
              width: MediaQuery.of(context).size.width - 32,
              height: 250,
              child: JoinCard(),
            ),
            SizedBox(
              height: 96,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LanguageCard(),
                ComInfoCard(),
                ComInfoCard(
                  title: 'Connect with us',
                  sub1: 'Blog',
                  sub2: 'Contact Us',
                  sub3: 'Help Center',
                  sub4: 'Career',
                  sub5: 'Donate',
                  sub6: 'Affiliate',
                ),
                ComInfoCard(
                  title: 'Products',
                  sub1: 'Our Plans',
                  sub2: 'Free Trial',
                  sub3: 'Academic Solutions',
                  sub4: 'Business Solutions',
                  sub5: 'Government Solutions',
                  sub6: 'Enterprise',
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              children: [
                TextButton(),
                SizedBox(
                  width: 32,
                ),
                TextButton(
                  btnName: 'Privacy Policy',
                ),
                SizedBox(
                  width: 32,
                ),
                TextButton(
                  btnName: 'Cookie Policy',
                ),
              ],
            ),
          ],
        ),
      );
    } else {
      return Container();
    }
  }
}
