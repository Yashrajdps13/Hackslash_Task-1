import 'package:flutter/material.dart';

class Themeclass {
  Color darkbackgroundColor = Color(0xff000D1D);
  Color darkbackgroundColor2 = Color(0xff001B3B);
  Color selectedBlue = Color(0xff0560FA);
  Color text1 = Color(0xff35B369);
  Color text2 = Color(0xffED3A3A);
  Color text3 = Color(0xffEC8000);
  Color lightbackgroundColor=Color(0xffffffff);
  Color lightbackgroundColor2=Color.fromARGB(255, 222, 217, 217);
  
  static ThemeData LightTheme=ThemeData(
            primaryColor: ThemeData.light().scaffoldBackgroundColor,
            colorScheme: const ColorScheme.light().copyWith(
              primary: _themeclass.lightbackgroundColor,
              secondary: _themeclass.lightbackgroundColor2
            )
  );
   static ThemeData darkTheme=ThemeData(
    primaryColor: ThemeData.dark().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.light().copyWith(
              primary: _themeclass.darkbackgroundColor,
              secondary: _themeclass.darkbackgroundColor2)
   );

}

Themeclass _themeclass=Themeclass();

