import 'package:drum_machine/constants.dart';
import 'package:drum_machine/widgets/beat_readout.dart';
import 'package:drum_machine/widgets/instrument_readout.dart';
import 'package:flutter/material.dart';

class DrumMachine extends StatefulWidget {
  @override
  _DrumMachineState createState() => _DrumMachineState();
}

class _DrumMachineState extends State<DrumMachine> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundColor,
      child: Center(
        child: Column(
          children: [
            BeatReadout(),
            InstrumentReadout(instrument: Instrument.Kick),
            InstrumentReadout(instrument: Instrument.Snare),
            InstrumentReadout(instrument: Instrument.Cymbal),
          ],
        ),
      ),
    );
  }
}
