import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
colorScheme: ColorScheme.light(
  background: Colors.white,
  secondary: Colors.black,
  primaryContainer: Colors.grey,
  primary: Colors.grey,
));

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
colorScheme: ColorScheme.dark(
  background: Color.fromRGBO(0, 13, 29, 1),
  secondary: Colors.white,
  primaryContainer: Color.fromRGBO(0, 27, 59, 1),
  primary: Color.fromRGBO(0, 27, 59, 1),

));