import 'package:drum_machine/data/app_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class BPMModulator extends StatefulWidget {
  @override
  _BPMModulatorState createState() => _BPMModulatorState();
}

class _BPMModulatorState extends State<BPMModulator> {
  @override
  Widget build(BuildContext context) {
    int bpm = Provider.of<AppData>(context, listen: false).bpm;
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        trackShape: RectangularSliderTrackShape(),
        trackHeight: 5,
        overlayShape: RoundSliderOverlayShape(overlayRadius: 0),
        overlayColor: Color(0x00FFFFFF),
      ),
      child: Slider(
        value: bpm.toDouble(),
        min: 60,
        max: 200,
        activeColor: Color(0xFF3b3b3b),
        inactiveColor: Colors.black,
        onChanged: (double newVal) {
          setState(() {
            bpm = newVal.toInt();
          });
          Provider.of<AppData>(context, listen: false).setBPM(bpm);
        },
      ),
    );
  }
}
