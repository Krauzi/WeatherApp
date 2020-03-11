import 'package:flutter/material.dart';

typedef void OnClick();

class SearchButton extends StatelessWidget {
  final OnClick onPressed;

  SearchButton(this.onPressed);

  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      onPressed: onPressed,
      padding: EdgeInsets.fromLTRB(12.0, 10.0, 20.0, 10.0),
      icon: Icon ( Icons.search ),
      label: Text('Szukaj'),
      color: Colors.grey[200],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0)
      ),
    );
  }
}
