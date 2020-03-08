import 'package:flutter/material.dart';
import 'package:weatherapp/screens/search_body.dart';
import 'package:weatherapp/utils/primary_color.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color[300],
        body: SearchBody()
    );
  }
}
