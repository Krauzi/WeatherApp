import 'package:flutter/material.dart';

class LocalizationTextField extends StatelessWidget {

  final TextEditingController textController;
  LocalizationTextField({ this.textController });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      style: TextStyle(
          color: Color.fromRGBO(28, 36, 51, 1),
          fontSize: 20.0,
          fontFamily: 'Roboto'
      ),
      decoration: InputDecoration(
        hintText: 'Lokalizacja',
        hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey[600], fontFamily: 'Roboto'),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        fillColor: Color.fromRGBO(234, 234, 234, 1),
        filled: true,
        prefixIcon: Icon(
          Icons.location_on,
          color: Color.fromRGBO(28, 36, 51, 1),
        ),
      ),
    );
  }
}
