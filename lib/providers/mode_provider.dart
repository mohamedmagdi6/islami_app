import 'package:flutter/material.dart';

class ModeProvider extends ChangeNotifier {
  ThemeMode currentMode = ThemeMode.light;
  changeMode(ThemeMode mode) {
    currentMode = mode;
    notifyListeners();
  }
}
