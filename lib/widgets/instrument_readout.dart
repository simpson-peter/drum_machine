import 'package:drum_machine/constants.dart';
import 'package:drum_machine/widgets/instrument_button.dart';
import 'package:flutter/material.dart';

//Widget which holds all of the instrument buttons, which represent the pattern for the given instrument
class InstrumentReadout extends StatefulWidget {
  final Instrument instrument;

  InstrumentReadout({@required this.instrument});
  @override
  _InstrumentReadoutState createState() => _InstrumentReadoutState();
}

class _InstrumentReadoutState extends State<InstrumentReadout> {
  List<Widget> buildInstrumentReadout() {
    List<InstrumentButton> instrumentButtons = List.filled(kTotalBeats, null);
    for (int i = 0; i < kTotalBeats; i++) {
      instrumentButtons[i] = InstrumentButton(
        beat: i + 1,
        instrument: widget.instrument,
      );
    }
    return instrumentButtons;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundColor,
      child: Row(
        //TODO: Include Instrument nameplate
        children: buildInstrumentReadout(),
      ),
    );
  }
}
