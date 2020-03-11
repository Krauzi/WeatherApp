import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:weatherapp/blocs/weather_bloc.dart';
import 'package:weatherapp/model/weather_api_response.dart';
import 'package:weatherapp/screens/weather_details_screen.dart';
import 'package:weatherapp/widgets/localization_textfield.dart';
import 'package:weatherapp/widgets/search_button.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SearchBody extends StatefulWidget {
  @override
  _SearchBodyState createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  TextEditingController _textController;

  WeatherBloc _weatherBloc;
  StreamSubscription _weatherSubscription;


  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
    _weatherBloc = BlocProvider.getBloc();
    _weatherSubscription = _weatherBloc.weatherObservable.listen(_goToDetails);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Center(
                    child: Image.asset(
                      'assets/earth.png',
                      height: 240,
                      width: 240,
                    ),
                  ),
                  SizedBox(height: 70.0),
                  SizedBox(
                    width: 320.0,
                    child: LocalizationTextField(textController: _textController),
                  ),
                  SizedBox(height: 40.0),
                  SearchButton(_onSearchClick),
                ],
              ),
            ),
          ),
        ),
        _loadPage
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _weatherSubscription.cancel();
  }

  Widget get _loadPage => StreamBuilder<bool>(
    stream: _weatherBloc.loadingWeatherObservable,
    initialData: false,
    builder: (context, snapshot) {
      if(snapshot.data) {
        return Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.grey.withAlpha(100),
          ),
          child: SpinKitDoubleBounce(
            color: Colors.red[600],
          ),
        );
      } else {
        return Container();
      }
    },
  );

  void _onSearchClick() {
    if(_textController.text != null && _textController.text.length > 2) {
      _weatherBloc.getWeatherForCity(_textController.text);
    } else {
      print("Error");
    }
  }

  void _goToDetails(WeatherApiResponse weather) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => WeatherDetailsScreen(weatherResponse: weather))
    );
  }
}
