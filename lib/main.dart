import 'package:drum_machine/data/app_data.dart';
import 'package:drum_machine/instrument_player.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:provider/provider.dart';

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
        home: Scaffold(
          body: Container(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
