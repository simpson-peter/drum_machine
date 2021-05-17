import 'package:drum_machine/data/app_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BPMModulator extends StatefulWidget {
  @override
  _BPMModulatorState createState() => _BPMModulatorState();
}

class _BPMModulatorState extends State<BPMModulator> {
  @override
  Widget build(BuildContext context) {
    int bpm = Provider.of<AppData>(context, listen: false).bpm;
    return Slider(
      value: bpm.toDouble(),
      min: 60,
      max: 200,
      onChanged: (double newVal) {
        setState(() {
          bpm = newVal.toInt();
        });
        Provider.of<AppData>(context, listen: false).setBPM(bpm);
      },
    );
  }
}
