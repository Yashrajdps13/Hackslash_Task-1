import'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.white,
    primary: Color(0xff0560FA),
    secondary: Color(0xffCFCFCF),
    tertiary: Color(0xff3A3A3A)
  )
);


ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Color(0xff000D1D),
    primary: Color(0xff001B3B),
    secondary: Color(0xff001B3B),
    tertiary: Colors.white
  )
);