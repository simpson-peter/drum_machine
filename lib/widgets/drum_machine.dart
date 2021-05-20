import 'package:drum_machine/constants.dart';
import 'package:drum_machine/data/app_data.dart';
import 'package:drum_machine/widgets/beat/beat_readout.dart';
import 'package:drum_machine/widgets/bpm/bpm_readout.dart';
import 'package:drum_machine/widgets/instrument/instrument_readout.dart';
import 'package:drum_machine/widgets/kit/kit_selector.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'logo.dart';

class DrumMachine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundColor,
      padding: EdgeInsets.symmetric(horizontal: kPageEdgeMargin, vertical: 5),
      child: Container(
        margin: EdgeInsets.only(bottom: kPageEdgeMargin),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: kForegroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Logo(),
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
            InstrumentReadout(instrument: Instrument.Clap),
            SizedBox(
              height: kButtonMargin,
            ),
            InstrumentReadout(instrument: Instrument.Cymbal),
            SizedBox(
              height: kButtonMargin,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BPMReadout(
                  bpm: Provider.of<AppData>(context, listen: true).bpm,
                ),
                SizedBox(
                  width: kButtonMargin,
                ),
                KitSelector(),
              ],
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
