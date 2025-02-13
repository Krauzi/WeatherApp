import 'dart:async';

import 'package:toast/toast.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:weatherapp/blocs/weather_bloc.dart';
import 'package:weatherapp/model/weather_api_response.dart';
import 'package:weatherapp/screens/weather_details_screen.dart';
import 'package:weatherapp/widgets/localization_textfield.dart';
import 'package:weatherapp/widgets/search_button.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weatherapp/utils/details_palette.dart';

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
            color: Color.fromRGBO(28, 36, 51, 1),
          ),
          child: SpinKitDoubleBounce(
            size: MediaQuery.of(context).size.shortestSide * 0.4,
            color: Color.fromRGBO(218, 58, 71, 1),
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
      _showToast("Wpisz nazwę miejscowości");
    }
  }

  void _showToast(String mess) {
    Toast.show(mess, context, duration: Toast.LENGTH_LONG, gravity:  Toast.BOTTOM);
  }

  void _goToDetails(WeatherApiResponse weather) {
    List<Color> _colorList = colorPalette(weather.weather[0].id, weather.weather[0].icon);
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => WeatherDetailsScreen(weatherResponse: weather, colorList: _colorList))
    );
  }
}
