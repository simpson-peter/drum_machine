import 'package:drum_machine/constants.dart';
import 'package:drum_machine/data/app_data.dart';
import 'package:drum_machine/widgets/beat_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//Widget which holds all of the BeatButtons, which in whole make the beat readout visual element
class BeatReadout extends StatefulWidget {
  @override
  _BeatReadoutState createState() => _BeatReadoutState();
}

class _BeatReadoutState extends State<BeatReadout> {
  //Helper method to build the list of beat buttons which comprise the beatredout
  List<Widget> buildBeatReadout(BuildContext context) {
    List<BeatButton> beatButtons = List.filled(kTotalBeats, null);
    for (int i = 0; i < kTotalBeats; i++) {
      beatButtons[i] = BeatButton(
          beat: i + 1,
          //Tie the status of the button to the current beat as kept by provider
          on: Provider.of<AppData>(context, listen: true).beat == (i + 1));
    }
    return beatButtons;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundColor,
      child: Row(
        children: buildBeatReadout(context),
      ),
    );
  }
}
