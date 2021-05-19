import 'package:drum_machine/data/app_data.dart';
import 'package:drum_machine/widgets/drum_machine.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:provider/provider.dart';

/*
* MAJOR TODOs
* TODO: Fix bug where rapidly playing/pausing screws up beat counting
* TODO: Add more drum packs
* TOOD: Remove Halo from BPMModulator
* TODO: Remove outline from around play/pause container
* TODO: Logo looks washed-out against background
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
