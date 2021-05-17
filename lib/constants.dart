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

//Technical constants
//Number (1-indexed) of beats per measure
const int kBeatsPerMeasure = 4;
//Number (1-indexed) of measures in the loop
const int kNumMeasures = 2;
//Number (1-indexed) of beats per loop (must be = kBeatsPerMeasure * kNumMeasures)
const int kTotalBeats = 8;

//Color constants
const Color kBackgroundColor = Color(0x1b1a17);
const Color kForeGroundColor = Color(0xa35709);
const Color kButtonColor = Color(0xf0e3ca);
const Color kHighlightColor = Color(0xff8303);

//Layout Constants
const double kLineMargin = 24;
const double kInteriorMargin = 24;
