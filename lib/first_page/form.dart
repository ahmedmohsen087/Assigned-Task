import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25)
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: TextFormField(
          textAlign: TextAlign.center,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            hintText: "Select city",
            hintStyle: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w500
            ),
            fillColor: Colors.white,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(
                color: Colors.blue,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(
                color: Colors.blue,
                width: 2.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
