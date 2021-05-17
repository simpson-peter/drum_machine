import 'package:drum_machine/data/app_data.dart';
import 'package:flutter/material.dart';
import 'package:drum_machine/constants.dart';
import 'package:provider/provider.dart';
import 'machine_button.dart';

class PauseButton extends StatelessWidget {
  final bool playing;

  PauseButton({@required this.playing});

  @override
  Widget build(BuildContext context) {
    return MachineButton(
      child: GestureDetector(
        onTap: () {
          Provider.of<AppData>(context, listen: false).playPause();
        },
        child: Container(
          width: kButtonWidth,
          decoration: BoxDecoration(
              color: kButtonColor,
              borderRadius: BorderRadius.circular(kBorderRadius)),
          child: Column(
            children: [
              SizedBox(
                height: kButtonMargin,
              ),
              Icon(
                playing ? Icons.pause : Icons.play_arrow,
              ),
              SizedBox(
                height: kButtonMargin,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
