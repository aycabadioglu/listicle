import 'package:flutter/material.dart';

abstract class BaseTextTheme {
  const BaseTextTheme({this.primaryColor});
  final Color? primaryColor;
  TextTheme get data;
  TextStyle get displayLarge;
  TextStyle get displayMedium;
  TextStyle get displaySmall;
  TextStyle get headlineLarge;
  TextStyle get headlineMedium;
  TextStyle get headlineSmall;
  TextStyle get titleLarge;
  TextStyle get titleMedium;
  TextStyle get titleSmall;
  TextStyle get labelLarge;
  TextStyle get labelMedium;
  TextStyle get labelSmall;
  TextStyle get bodyLarge;
  TextStyle get bodyMedium;
  TextStyle get bodySmall;

  String get fontFamily;
}
