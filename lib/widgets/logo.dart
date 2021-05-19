import 'package:drum_machine/constants.dart';
import 'package:flutter/material.dart';

//"FLUTTER TR-404 title widget"
class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kDarkForeground,
        borderRadius: BorderRadius.circular(kBorderRadius),
      ),
      child: Row(
        children: [
          SizedBox(
            width: kButtonMargin * 2,
          ),
          Text(
            'FLUTTER TR-404',
            style: kLogoTextStyle,
          ),
        ],
      ),
    );
  }
}
