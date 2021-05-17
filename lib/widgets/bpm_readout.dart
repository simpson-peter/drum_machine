import 'package:drum_machine/constants.dart';
import 'package:drum_machine/widgets/bpm_readout_digit.dart';
import 'package:flutter/material.dart';

class BPMReadout extends StatefulWidget {
  int bpm;

  BPMReadout({@required this.bpm});

  @override
  _BPMReadoutState createState() => _BPMReadoutState();
}

class _BPMReadoutState extends State<BPMReadout> {
  @override
  Widget build(BuildContext context) {
    //100s digit of the bpm
    int bpmHundDig = widget.bpm ~/ 100;
    //10s digit of the bpm
    int bpmTenDig = (widget.bpm % 100) ~/ 10;
    //1s digit of the bpm
    int bpmOneDig = widget.bpm % 10;
    return Container(
      color: kBackgroundColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'BPM',
          ),
          SizedBox(
            width: kButtonMargin,
          ),
          BPMReadoutDigit(
            hasDigit: bpmHundDig != 0,
            digit: bpmHundDig.toString(),
          ),
          SizedBox(
            width: kButtonMargin,
          ),
          BPMReadoutDigit(
            hasDigit: true,
            digit: bpmTenDig.toString(),
          ),
          SizedBox(
            width: kButtonMargin,
          ),
          BPMReadoutDigit(
            hasDigit: true,
            digit: bpmOneDig.toString(),
          ),
          SizedBox(
            width: kButtonMargin,
          ),
        ],
      ),
    );
  }
}
