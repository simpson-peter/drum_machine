import 'package:drum_machine/constants.dart';
import 'package:flutter/material.dart';

//Displays a single digit from the BPM
class BPMReadoutDigit extends StatelessWidget {
  //Tracks whether there is a digit to display
  final bool hasDigit;
  //If display = true, this must have a value
  final String digit;

  BPMReadoutDigit({@required this.hasDigit, this.digit});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Text(
        hasDigit ? digit : '',
        style: kBPMTextStyle,
      ),
    );
  }
}
