import 'package:flutter/material.dart';
import 'package:drum_machine/constants.dart';

//Class which tracks cross-app data, utilized by Provider ChangeNotifier instance
class AppData extends ChangeNotifier {
  int _beat = 0;
  Map<int, Map<Instrument, bool>> _pattern;
  int _bmp = 60;

  AppData(){
    _pattern
  }
}
