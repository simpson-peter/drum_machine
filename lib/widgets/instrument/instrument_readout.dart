import 'package:drum_machine/constants.dart';
import 'package:drum_machine/widgets/instrument/instrument_button.dart';
import 'package:drum_machine/widgets/instrument/nameplate.dart';
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
    List<Widget> instrumentButtons = List.filled(kTotalBeats + 1, null);
    instrumentButtons[0] = Nameplate(instrument: widget.instrument);
    for (int i = 1; i <= kTotalBeats; i++) {
      instrumentButtons[i] = InstrumentButton(
        beat: i,
        instrument: widget.instrument,
      );
    }
    return instrumentButtons;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kBackgroundColor,
      ),
      child: Row(
        children: buildInstrumentReadout(),
      ),
    );
  }
}
