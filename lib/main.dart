import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern.dart';

import 'screens/search_screen.dart';

import 'utils/primary_color.dart';


void main() => runApp(Weather());

class Weather extends StatelessWidget {
  final MaterialColor customColor = MaterialColor(0xFF626262, color);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: MaterialApp(
        title: 'Weather',
        theme: ThemeData(
          primarySwatch: customColor,
        ),
        home: SearchScreen(),
      ),
    );
  }
}
