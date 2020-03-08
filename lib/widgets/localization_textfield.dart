import 'package:flutter/material.dart';

class LocalizationTextField extends StatelessWidget {

  final TextEditingController textController;
  LocalizationTextField({ this.textController });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      style: TextStyle(
        color: Colors.grey[400],
      ),
      decoration: InputDecoration(
        hintText: 'Lokalizacja',
        hintStyle: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        fillColor: Colors.grey[800],
        filled: true,
        prefixIcon: Icon(
          Icons.location_on,
          color: Colors.grey[400],
        ),
      ),
    );
  }
}
