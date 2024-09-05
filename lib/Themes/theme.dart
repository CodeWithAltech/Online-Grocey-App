import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    brightness: Brightness.light,
    primary: Colors.grey.shade200,
    secondary: Colors.blueAccent,
  ),
);



//theme for dark mode
ThemeData darkMode = ThemeData(
  colorScheme: ColorScheme.dark(
    brightness: Brightness.dark,
    primary: Colors.grey.shade900,
    secondary: Colors.blueAccent,
  ),
);

