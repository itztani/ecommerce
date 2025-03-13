import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle boldTextFieldStyle() {
    return TextStyle(
      fontFamily: 'Poppins',
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle HeadLineFieldStyle() {
    return TextStyle(
      fontFamily: 'Poppins',
      color: Colors.black,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle LightTextFieldStyle() {
    return TextStyle(
      fontFamily: 'Poppins',
      color: Colors.black54,
      fontSize: 15,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle semiBoldTextFieldStyle() {
    return TextStyle(
      fontFamily: 'Poppins',
      color: Colors.black54,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    );
  }
}
