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
const int kBeatsPerMeasure = 8;
//Number (1-indexed) of measures in the loop
const int kNumMeasures = 2;
//Number (1-indexed) of beats per loop (must be = kBeatsPerMeasure * kNumMeasures)
const int kTotalBeats = 16;

//Style constants
//Color constants
const Color kBackgroundColor = Color(0xFFf5efdc);
const Color kForeGroundColor = Color(0xFFa35709);
const Color kButtonColor = Color(0xFFf0e3ca);
const Color dark = Color(0xFF1b1a17);
const Color kHighlightColor = Color(0xFFff8303);
const Color kRedLightColor = Color(0xFFcf0000);
//Text constants
const TextStyle kLabelTextStyle = TextStyle(
  fontSize: 16,
  color: Colors.black,
  fontWeight: FontWeight.w900,
);
const TextStyle kBPMTextStyle = TextStyle(
  fontSize: 46,
  color: Color(0xFFcf0000),
  fontFamily: 'Ds',
);

//Layout Constants
const double kBorderThickness = 3;
const double kButtonMargin = 10;
const double kBorderRadius = 10;
const double kBPMDigitBoxWidth = 35;
const double kBPMDigitMargin = 2;
const double kButtonHeight = 90;
const double kPageEdgeMargin = 40;
