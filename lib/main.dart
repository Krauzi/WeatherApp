import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/services.dart';
import 'package:intl/date_symbol_data_file.dart';
import 'package:intl/intl.dart';
import 'package:weatherapp/blocs/weather_bloc.dart';
import 'package:weatherapp/repositories/weather_repository.dart';
import 'package:weatherapp/screens/weather_details_screen.dart';

import 'screens/search_screen.dart';

import 'utils/primary_color.dart';


void main() => runApp(Weather());

class Weather extends StatelessWidget {
  final MaterialColor customColor = MaterialColor(0xFF626262, color);

  List<Bloc> get _blocs => [
    Bloc((i) => WeatherBloc(i.get()))
  ];

  List<Dependency> get _dependencies => [
    Dependency((_) => WeatherRepository())
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp
    ]);

    return BlocProvider(
      blocs: _blocs,
      dependencies: _dependencies,
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
