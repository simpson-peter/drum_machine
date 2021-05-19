import 'package:flutter/material.dart';
import 'package:drum_machine/constants.dart';

//Invisible box the same width as a button which acts as a spacer
class ButtonSpacer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: kButtonMargin,
        ),
        Container(
          decoration: BoxDecoration(
            color: kButtonColor,
            borderRadius: BorderRadius.circular(kBorderRadius),
          ),
          child: SizedBox(
            width: 1,
          ),
        ),
        SizedBox(
          width: kButtonMargin,
        ),
      ],
    );
  }
}
