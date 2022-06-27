import 'package:flutter/material.dart';
import 'package:kac_yakar/core/init/theme/my_theme.dart';

class ThemeNotifier extends ChangeNotifier {
  bool isLightTheme = false;

  void toggleTheme() {
    isLightTheme = !isLightTheme;
    notifyListeners();
  }

  ThemeData get getTheme => isLightTheme ? ThemeData.light() : myTheme;
}
