import 'package:flutter/material.dart';

enum AppTheme {
  TrueBlack,
  AllWhite,
}

final appThemeData = {
  AppTheme.TrueBlack: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.black,
  ),
  AppTheme.AllWhite: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.white,
  ),
};
