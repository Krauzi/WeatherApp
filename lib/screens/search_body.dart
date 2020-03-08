import 'package:flutter/material.dart';
import 'package:weatherapp/widgets/localization_textfield.dart';
import 'package:weatherapp/widgets/search_button.dart';

class SearchBody extends StatefulWidget {
  @override
  _SearchBodyState createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
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
                  SizedBox(height: 30.0),
                  SearchButton(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
