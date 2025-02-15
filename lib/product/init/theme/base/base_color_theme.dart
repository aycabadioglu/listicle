import 'package:flutter/material.dart';

abstract class IColorTheme {
  ColorScheme get colorScheme;
  //--------------------------
  Color get primary;
  Color get onPrimary;
  Color get primaryContainer;
  Color get onPrimaryContainer;
  //--------------------------
  Color get secondary;
  Color get onSecondary;
  Color get secondaryContainer;
  Color get onSecondaryContainer;
  //--------------------------
  Color get surfaceDim;
  Color get scrim;
  //--------------------------
  Color get surface;
  Color get onSurface;
  Color get surfaceContainerHighest;
  Color get onSurfaceVariant;
  //--------------------------
  Color get error;
  Color get onError;
  Color get errorContainer;
  Color get onErrorContainer;
  //--------------------------
  Color get outline;
  Color get outlineVariant;
  //--------------------------
  Color get tertiary;
  Color get onTertiary;
  Color get tertiaryContainer;
  Color get onTertiaryContainer;
}
