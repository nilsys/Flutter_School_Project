import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school/utilities/constants.dart';

class SocialIcon extends StatelessWidget {
  final String icon;
  final Function press;
  const SocialIcon({Key key, this.icon, this.press}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: lightColor,
            ),
            shape: BoxShape.circle),
        child: SvgPicture.asset(
          icon,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
