import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

//Class which represents a single instrument, and can play it upon request
class InstrumentPlayer {
  Instrument instrument;
  AudioPlayer _audioPlayer = AudioPlayer();
  String _assetPath;

  InstrumentPlayer({@required this.instrument}) {
    _assetPath = kInstrumentAudioPaths[this.instrument];
    _audioPlayer.play(this._assetPath, isLocal: false, volume: 0);
  }

  void playSound() {
    _audioPlayer.play(this._assetPath, isLocal: false);
  }
}
