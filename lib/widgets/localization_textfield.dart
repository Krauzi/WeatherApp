import 'package:flutter/material.dart';

class LocalizationTextField extends StatelessWidget {

  final TextEditingController textController;
  LocalizationTextField({ this.textController });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      style: TextStyle(
          color: Colors.grey[900],
          fontSize: 20.0,
          fontFamily: 'Roboto'
      ),
      decoration: InputDecoration(
        hintText: 'Lokalizacja',
        hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey[600], fontFamily: 'Roboto'),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        fillColor: Colors.grey[200],
        filled: true,
        prefixIcon: Icon(
          Icons.location_on,
          color: Colors.grey[900],
        ),
      ),
    );
  }
}
