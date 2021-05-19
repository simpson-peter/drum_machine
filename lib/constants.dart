import 'package:flutter/material.dart';

//Enum used to track the differing kinds of instruments
enum Instrument {
  Kick,
  Snare,
  Cymbal,
}

enum Kit {
  OldSchool,
  Trap,
  House,
}

const Map<Kit, Map<Instrument, String>> kInstrumentAudioPaths = {
  Kit.OldSchool: {
    Instrument.Kick:
        'https://petersimpson.me/hosting/drum_machine_assets/wtc/wtc_kick.wav',
    Instrument.Cymbal:
        'https://petersimpson.me/hosting/drum_machine_assets/wtc/wtc_cymb2.wav',
    Instrument.Snare:
        'https://petersimpson.me/hosting/drum_machine_assets/wtc/wtc_snare.wav',
  },
  Kit.Trap: {
    Instrument.Kick:
        'https://petersimpson.me/hosting/drum_machine_assets/trap/trap_kick.wav',
    Instrument.Cymbal:
        'https://petersimpson.me/hosting/drum_machine_assets/trap/trap_cymb.wav',
    Instrument.Snare:
        'https://petersimpson.me/hosting/drum_machine_assets/trap/trap_snare.wav',
  },
};

const Map<Instrument, String> kInstrumentNameMap = {
  Instrument.Kick: 'KICK',
  Instrument.Snare: 'SNARE',
  Instrument.Cymbal: 'HI-HAT',
};

const Map<Kit, String> kKitNameMap = {
  Kit.OldSchool: 'Old School',
  Kit.Trap: 'Trap',
  Kit.House: 'House',
};

//Technical constants
//Which drum kit the machine starts on
const Kit kInitialKit = Kit.OldSchool;
//Number (1-indexed) of beats per measure
const int kBeatsPerMeasure = 8;
//Number (1-indexed) of measures in the loop
const int kNumMeasures = 2;
//Number (1-indexed) of beats per loop (must be = kBeatsPerMeasure * kNumMeasures)
const int kTotalBeats = 16;

//Style constants
//Color constants
const Color kBackgroundColor = Color(0xFF3b3b3b);
const Color kForegroundColor = Color(0xFFf5efdc);
const Color kDarkForeground = Color(0xFFf0e3ca);
const Color kButtonColor = Color(0xFFe8d4ae);
const Color dark = Color(0xFF1b1a17);
const Color kHighlightColor = Color(0xFFff8303);
const Color kRedLightColor = Color(0xFFcf0000);
const Color kRedLightOffColor = Color(0xFF600000);

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
const TextStyle kLogoTextStyle = TextStyle(
  fontSize: 50,
  color: kHighlightColor,
  fontFamily: 'Orbitron',
  fontWeight: FontWeight.bold,
  letterSpacing: 4,
);

//Layout Constants
const double kBorderThickness = 3;
const double kButtonMargin = 10;
const double kBorderRadius = 10;
const double kBPMDigitBoxWidth = 35;
const double kBPMDigitMargin = 2;
const double kButtonHeight = 90;
const double kPageEdgeMargin = 40;
const double kInstrumentButtonIconSize = 20;
const double kSmallLEDSize = 15;
