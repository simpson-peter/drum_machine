import 'package:drum_machine/constants.dart';
import 'package:flutter/material.dart';

//Widget which holds all of the instrument buttons, which represent the pattern for the given instrument
class InstrumentReadout extends StatefulWidget {
  @override
  _InstrumentReadoutState createState() => _InstrumentReadoutState();
}

class _InstrumentReadoutState extends State<InstrumentReadout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundColor,
      child: Row(
          //TODO: Include Instrument nameplate

          ),
    );
  }
}
