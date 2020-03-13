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
      icon: Icon ( Icons.search, color: Colors.grey[200], ),
      label: Text('Szukaj', style: TextStyle(color: Colors.grey[200], fontSize: 17.0),),
      color: Color.fromRGBO(218, 58, 71, 1),
      //borderSide: BorderSide(color: Colors.grey[900]),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0)
      ),
    );
  }
}
