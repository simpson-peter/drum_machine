import 'package:drum_machine/constants.dart';
import 'package:flutter/material.dart';

class BeatButton extends StatelessWidget {
  //Stores the beat which this button represents
  final int beat;
  //Stores whether this is the current beat or not (on/off)
  final bool on;
  BeatButton({@required this.beat, @required this.on});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: kButtonMargin,
        ),
        Container(
          width: kButtonWidth,
          decoration: BoxDecoration(
              color: kButtonColor,
              borderRadius: BorderRadius.circular(kBorderRadius)),
          child: Column(
            children: [
              Text(
                beat.toString(),
              ),
              Icon(
                on ? Icons.radio_button_checked : Icons.radio_button_unchecked,
                color: on ? kHighlightColor : Colors.black,
              ),
            ],
          ),
        ),
        SizedBox(
          width: kButtonMargin,
        ),
      ],
    );
  }
}
