import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ModeProvider extends ChangeNotifier {
  ThemeMode currentMode = ThemeMode.light;

  saveTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isDark = prefs.getBool('isDark');
    if (isDark != null) {
      if (isDark) {
        currentMode = ThemeMode.dark;
      } else {
        currentMode = ThemeMode.light;
      }
      notifyListeners();
    }
  }

  changeMode(ThemeMode mode) async {
    currentMode = mode;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDark', mode == ThemeMode.dark);

    notifyListeners();
  }
}
