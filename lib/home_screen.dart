import 'package:drum_machine/constants.dart';
import 'package:drum_machine/machine_line.dart';
import 'package:flutter/material.dart';

enum DrumType {
  BASS,
  SNARE,
  CLAP,
}

//Widget which contains all visual elements of the app.
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
