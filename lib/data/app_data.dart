import 'dart:async';
import 'package:drum_machine/instrument_player.dart';
import 'package:flutter/material.dart';
import 'package:drum_machine/constants.dart';

//Class which tracks cross-app data, utilized by Provider ChangeNotifier instance
class AppData extends ChangeNotifier {
  //Tracks the beat [1, kTotalBeats] which the loop is currently on
  int beat = 0;
  //Stores the drum pattern designed by the user, begins silent
  Map<int, Map<Instrument, bool>> _pattern;
  //Beats per minute
  int bpm = 180;
  //Track whether the machine is playing
  bool playing = false;
  //Tracks the kit currently in use
  Kit kit = Kit.OldSchool;

  Map<Instrument, InstrumentPlayer> instrumentPlayers = {
    Instrument.Kick:
        InstrumentPlayer(instrument: Instrument.Kick, kit: kInitialKit),
    Instrument.Snare:
        InstrumentPlayer(instrument: Instrument.Snare, kit: kInitialKit),
    Instrument.Cymbal:
        InstrumentPlayer(instrument: Instrument.Cymbal, kit: kInitialKit),
  };

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

  void setKit(Kit newKit) {
    this.kit = newKit;
    notifyListeners();
    //re-init the audio players
    instrumentPlayers = {
      Instrument.Kick: InstrumentPlayer(instrument: Instrument.Kick, kit: kit),
      Instrument.Snare:
          InstrumentPlayer(instrument: Instrument.Snare, kit: kit),
      Instrument.Cymbal:
          InstrumentPlayer(instrument: Instrument.Cymbal, kit: kit),
    };
  }

  void setBPM(int newBPM) {
    this.bpm = newBPM;
    notifyListeners();
  }

  //Plays the sounds associated with the current beat
  void _playBeat() {
    for (Instrument instrument in _pattern[beat].keys) {
      if (_pattern[beat][instrument]) {
        instrumentPlayers[instrument].playSound();
      }
    }
  }

  //Inverts the current play/pause state, beginning beat tick if now playing
  void playPause() {
    playing = !playing;
    notifyListeners();
    if (playing) {
      tick();
    }
  }

  //Increment the beat, wait the proper amount of time, then trigger the next beat
  void tick() {
    if (!playing) {
      beat = 0;
      notifyListeners();
      return;
    }
    beat++;
    //Restart the loop if we've finished
    if (beat > kTotalBeats) {
      beat = 1;
    }

    notifyListeners();
    _playBeat();

    //Calculate time (milliseconds) to next 1/8th note
    double waitTimeMS = (1000 / (bpm.toDouble() / 60.0)) / 2.0;
    Timer(Duration(milliseconds: waitTimeMS.toInt()), tick);
  }

  //Will invert the current value of the pattern member for the given instrument at the given beat
  void changePattern({Instrument instrument, int beat}) {
    _pattern[beat][instrument] = !_pattern[beat][instrument];
  }
}
