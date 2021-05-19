import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

//Class which represents a single instrument, and can play it upon request
class InstrumentPlayer {
  Instrument instrument;
  Kit kit;
  AudioPlayer _audioPlayer = AudioPlayer();
  String _assetPath;

  InstrumentPlayer({@required this.instrument, @required this.kit}) {
    _assetPath = kInstrumentAudioPaths[this.kit][this.instrument];
    //Play the asset at zero-volume in order to pre-load it
    _audioPlayer.play(this._assetPath, isLocal: false, volume: 0);
  }

  void playSound() {
    _audioPlayer.play(this._assetPath, isLocal: false);
  }
}
