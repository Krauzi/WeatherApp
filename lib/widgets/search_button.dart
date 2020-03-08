import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      onPressed: () {},
      padding: EdgeInsets.fromLTRB(12.0, 10.0, 20.0, 10.0),
      icon: Icon ( Icons.search ),
      label: Text('Szukaj'),
      color: Colors.grey[400],
    );
  }
}
