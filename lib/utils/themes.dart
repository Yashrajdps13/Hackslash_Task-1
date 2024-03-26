import 'package:flutter/material.dart';

import 'colors.dart';
class MyAppTheme{
  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: primaryColor,onSurface: Colors.black),
    iconTheme: IconThemeData(color: Colors.white),
    fontFamily: 'Roboto',
    useMaterial3: true,
  );
  static final darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Roboto',
      appBarTheme: AppBarTheme(titleTextStyle: TextStyle(color: Colors.white70),backgroundColor: lightBackgroundColor),
      iconTheme: IconThemeData(color: Colors.white),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(unselectedItemColor: Colors.white70,backgroundColor: darkBackgroundColor),
      colorScheme: ColorScheme.fromSeed(seedColor: primaryColor,background: darkBackgroundColor,onSurface: Colors.white)
  );
}