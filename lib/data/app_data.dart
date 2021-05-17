import 'dart:async';

import 'package:flutter/material.dart';
import 'package:drum_machine/constants.dart';

//Class which tracks cross-app data, utilized by Provider ChangeNotifier instance
class AppData extends ChangeNotifier {
  //Tracks the beat [1, kTotalBeats] which the loop is currently on
  int _beat = 0;
  //Stores the drum pattern designed by the user, begins silent
  Map<int, Map<Instrument, bool>> _pattern;
  //Beats per minute
  int _bpm = 60;

  AppData() {
    //Initialize the pattern map to be empty
    _pattern = Map<int, Map<Instrument, bool>>();
    //Initialize the maps for beats [1, kTotalBeats]
    for (int i = 1; i <= kTotalBeats; i++) {
      _pattern[i] = Map<Instrument, bool>();

      //Initialize each instrument for the beat
      _pattern[i][Instrument.Kick] = false;
      _pattern[i][Instrument.Snare] = false;
      _pattern[i][Instrument.Cymbal] = false;
    }
  }

  //Increment the beat, wait the proper amount of time, then trigger the next beat
  void tick() {
    _beat++;
    //Restart the loop if we've finished
    if (_beat > kTotalBeats) {
      _beat = 0;
    }

    notifyListeners();

    //Calculate time (milliseconds) to next beat
    double waitTimeMS = 1000 / (_bpm.toDouble() / 60.0);
    Timer(Duration(milliseconds: waitTimeMS.toInt()), tick);
  }

  //Will invert the current value of the pattern member for the given instrument at the given beat
  void changePattern({Instrument instrument, int beat}) {
    _pattern[beat][instrument] = !_pattern[beat][instrument];
  }
}
