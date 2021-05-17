import 'package:flutter/material.dart';

//Enum used to track the differing kinds of instruments
enum Instrument {
  Kick,
  Snare,
  Cymbal,
}

const Map<Instrument, String> kInstrumentAudioPaths = {
  Instrument.Kick:
      'https://petersimpson.me/hosting/drum_machine_assets/wtc_kick.wav',
  Instrument.Cymbal:
      'https://petersimpson.me/hosting/drum_machine_assets/wtc_cymb.wav',
  Instrument.Snare:
      'https://petersimpson.me/hosting/drum_machine_assets/wtc_snare.wav',
};

const Map<Instrument, String> kInstrumentNameMap = {
  Instrument.Kick: 'KICK',
  Instrument.Snare: 'SNARE',
  Instrument.Cymbal: 'CYMBAL',
};

//Technical constants
//Number (1-indexed) of beats per measure
const int kBeatsPerMeasure = 4;
//Number (1-indexed) of measures in the loop
const int kNumMeasures = 2;
//Number (1-indexed) of beats per loop (must be = kBeatsPerMeasure * kNumMeasures)
const int kTotalBeats = 8;

//Style constants
//Color constants
const Color kBackgroundColor = Color(0xFFf5efdc);
const Color kForeGroundColor = Color(0xFFa35709);
const Color kButtonColor = Color(0xFFf0e3ca);
const Color kHighlightColor = Color(0xFFD2042D);
//Text constants
const TextStyle kLabelTextStyle = TextStyle(
  fontSize: 16,
  color: Colors.black,
  fontWeight: FontWeight.w900,
);

//Layout Constants
const double kButtonWidth = 75;
const double kButtonMargin = 5;
const double kBorderRadius = 10;
