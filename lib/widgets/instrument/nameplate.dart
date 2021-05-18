import 'package:drum_machine/widgets/machine_button.dart';
import 'package:flutter/material.dart';
import 'package:drum_machine/constants.dart';

//Button which displays the name of the instrument for the given readout
class Nameplate extends StatelessWidget {
  final Instrument instrument;

  Nameplate({@required this.instrument});
  @override
  Widget build(BuildContext context) {
    return MachineButton(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            kInstrumentNameMap[this.instrument],
            style: kLabelTextStyle,
          ),
        ],
      ),
    );
  }
}
