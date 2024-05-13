import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Variable.dart';

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color _icon_color = Theme.of(context).highlightColor;
    return [
      Container(
        padding: EdgeInsets.all(10),
        child: Icon(
          Icons.mail_outline,
          color: _icon_color,
        ).mdClick(() {
          launchUrl(Uri.parse("mailto:" + MAIL_ID));
        }).make(),
      ),
      20.widthBox,
      Container(
        padding: EdgeInsets.all(10),
        child: Icon(
          IconData(0xe806, fontFamily: 'MySocialIcons', fontPackage: null),
          color: _icon_color,
        ).mdClick(() {
          launchUrl(Uri.parse(LINKEDLN_URL));
        }).make(),
      ),
      20.widthBox,
      Container(
        padding: EdgeInsets.all(10),
        child: Icon(
          IconData(0xe800, fontFamily: 'MySocialIcons', fontPackage: null),
          color: _icon_color,
        ).mdClick(() {
          launchUrl(Uri.parse(GITHUB_URL));
        }).make(),
      ),
      20.widthBox,
      Container(
        padding: EdgeInsets.all(10),
        child: Icon(
          IconData(0xe802, fontFamily: 'MySocialIcons', fontPackage: null),
          color: _icon_color,
        ).mdClick(() {
          launchUrl(Uri.parse(TWITTER_URL));
        }).make(),
      ),
      20.widthBox,
      Container(
        padding: EdgeInsets.all(10),
        child: Icon(
          IconData(0xe804, fontFamily: 'MySocialIcons', fontPackage: null),
          color: _icon_color,
        ).mdClick(() {
          launchUrl(Uri.parse(INSTAGRAM_URL));
        }).make(),
      ),
      20.widthBox,
      Container(
        padding: EdgeInsets.all(10),
        child: Icon(
          IconData(0xe801, fontFamily: 'MySocialIcons', fontPackage: null),
          color: _icon_color,
        ).mdClick(() {
          launchUrl(Uri.parse(FACEBOOK_URL));
        }).make(),
      ),
    ].vStack();
  }
}
