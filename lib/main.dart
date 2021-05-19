import 'package:drum_machine/data/app_data.dart';
import 'package:drum_machine/widgets/drum_machine.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/*
* MAJOR TODOs
* TODO: Fix bug where rapidly playing/pausing screws up beat counting
* TODO: Fix stutter on initial playback after a long period of non-use
* TOOD: Remove Halo from BPMModulator
* TODO: Logo looks washed-out against background
* TODO: Bottom Right corner of BeatReadout isn't rounded
* TODO: Fix Fonts (especially on kit selector)
*/

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter TR-404 Drum Machine',
        theme: ThemeData(
          fontFamily: 'Exo',
        ),
        home: Scaffold(
          body: DrumMachine(),
        ),
      ),
    );
  }
}
