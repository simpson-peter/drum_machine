import 'package:drum_machine/data/app_data.dart';
import 'package:drum_machine/widgets/machine_button.dart';
import 'package:flutter/material.dart';
import 'package:drum_machine/constants.dart';
import 'package:provider/provider.dart';

//Class represents a simple on/off switch for a certain instrument on a certain beat
class InstrumentButton extends StatefulWidget {
  //Tracks which beat this button is associated with
  final int beat;
  //Tracks which instrument this button is associated with
  final Instrument instrument;
  //Tracks whether this button is on or off
  bool on = false;

  InstrumentButton({@required this.beat, @required this.instrument});

  @override
  _InstrumentButtonState createState() => _InstrumentButtonState();
}

class _InstrumentButtonState extends State<InstrumentButton> {
  @override
  Widget build(BuildContext context) {
    return MachineButton(
      child: GestureDetector(
        onTap: () {
          Provider.of<AppData>(context, listen: false)
              .changePattern(instrument: widget.instrument, beat: widget.beat);
          setState(() {
            widget.on = !widget.on;
          });
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
                widget.on
                    ? Icons.radio_button_checked
                    : Icons.radio_button_unchecked,
                color: widget.on ? kHighlightColor : Colors.black,
              ),
              SizedBox(
                height: kButtonMargin,
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
