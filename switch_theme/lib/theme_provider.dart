import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool _isPink = false;

  bool get isPink => _isPink;

  void toggleTheme() {
    _isPink = !_isPink;
    notifyListeners();
  }
}
