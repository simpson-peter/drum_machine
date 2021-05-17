import 'package:drum_machine/constants.dart';
import 'package:drum_machine/data/app_data.dart';
import 'package:drum_machine/widgets/beat/beat_readout.dart';
import 'package:drum_machine/widgets/bpm/bpm_readout.dart';
import 'package:drum_machine/widgets/instrument/instrument_readout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrumMachine extends StatefulWidget {
  @override
  _DrumMachineState createState() => _DrumMachineState();
}

class _DrumMachineState extends State<DrumMachine> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 1,
          ),
          Column(
            children: [
              SizedBox(
                height: kButtonMargin,
              ),
              BeatReadout(),
              SizedBox(
                height: kButtonMargin,
              ),
              InstrumentReadout(instrument: Instrument.Kick),
              SizedBox(
                height: kButtonMargin,
              ),
              InstrumentReadout(instrument: Instrument.Snare),
              SizedBox(
                height: kButtonMargin,
              ),
              InstrumentReadout(instrument: Instrument.Cymbal),
              SizedBox(
                height: kButtonMargin,
              ),
              BPMReadout(bpm: Provider.of<AppData>(context, listen: true).bpm),
              SizedBox(
                height: kButtonMargin,
              ),
            ],
          ),
          SizedBox(
            width: 1,
          ),
        ],
      ),
    );
  }
}
