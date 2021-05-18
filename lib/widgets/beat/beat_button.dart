import 'package:drum_machine/constants.dart';
import 'package:drum_machine/widgets/machine_button.dart';
import 'package:flutter/material.dart';

class BeatButton extends StatelessWidget {
  //Stores the beat which this button represents
  final int beat;
  //Stores whether this is the current beat or not (on/off)
  final bool on;
  BeatButton({@required this.beat, @required this.on});

  @override
  Widget build(BuildContext context) {
    return MachineButton(
      borderRadius: 0,
      child: Container(
        decoration: BoxDecoration(
            color: kButtonColor,
            borderRadius: BorderRadius.circular(kBorderRadius)),
        child: Column(
          children: [
            SizedBox(
              height: kButtonMargin,
            ),
            Text(
              beat.toString(),
              style: kLabelTextStyle,
            ),
            Icon(
              on ? Icons.radio_button_checked : Icons.radio_button_unchecked,
              color: on ? kHighlightColor : Colors.black,
            ),
            SizedBox(
              height: kButtonMargin,
            ),
          ],
        ),
      ),
    );
  }
}
