import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isDark = false;

  swap() {
    if (_isDark) {
      _isDark = false;
    } else {
      _isDark = true;
    }
    notifyListeners();
  }

  bool get themeMode => _isDark;
}
