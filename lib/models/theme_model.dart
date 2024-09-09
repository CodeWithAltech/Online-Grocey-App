import 'package:flutter/material.dart';
import 'package:online_grocey_app/Themes/theme.dart';

class ThemeProvider with ChangeNotifier {
final  ThemeData _themeData = lightMode;
  ThemeData get themeData => _themeData;
  set themeData(ThemeData themeData) {
    themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
