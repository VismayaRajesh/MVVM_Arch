import 'package:flutter/material.dart';

class MyThemeData{
  //light theme
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 1
    ),
    colorScheme: const ColorScheme.light(
      surface: Color.fromARGB(26, 13, 184, 247)
    ));

  //dark theme
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black12,
          foregroundColor: Colors.white,
          elevation: 1
      ),
      colorScheme: const ColorScheme.dark(
        //primary color
      ));
}