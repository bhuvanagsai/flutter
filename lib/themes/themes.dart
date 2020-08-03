import 'package:flutterproject/themes/colors.dart';
import 'package:flutter/material.dart';

class Themes {
  static final ThemeData lightTheme = _lightTheme();

  static ThemeData _lightTheme() {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.COLOR_WHITE,
      primaryColor: AppColors.COLOR_BLUE,
      accentColor: AppColors.COLOR_WHITE,
      fontFamily: 'AvenirNext',
      appBarTheme: AppBarTheme(color: AppColors.COLOR_WHITE, elevation: 0),
    );
  }
}
