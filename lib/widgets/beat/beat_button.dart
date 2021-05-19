import 'package:drum_machine/constants.dart';
import 'package:drum_machine/widgets/machine_button.dart';
import 'package:flutter/material.dart';

class BeatButton extends StatelessWidget {
  //Stores the beat which this button represents (which 1/8th note the beat is)
  final int beat;
  //Stores whether this is the current beat or not (on/off)
  final bool on;
  BeatButton({@required this.beat, @required this.on});

  @override
  Widget build(BuildContext context) {
    String beatDisplay;
    //Only display labels for quarter notes
    if (beat % 2 == 1) {
      beatDisplay = ((beat / 2) + 1).toInt().toString();
    } else {
      beatDisplay = ' ';
    }
    return MachineButton(
      borderRadius: 0,
      padding: EdgeInsets.only(left: kButtonMargin),
      child: Container(
        decoration: BoxDecoration(
            color: kButtonColor,
            borderRadius: BorderRadius.circular(kBorderRadius)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: kButtonMargin,
            ),
            Text(
              beatDisplay,
              style: kLabelTextStyle,
            ),
            Icon(
              on ? Icons.circle : Icons.radio_button_unchecked,
              color: on ? kRedLightColor : Colors.black,
              size: 15,
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
