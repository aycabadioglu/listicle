import 'package:flutter/material.dart';
import 'package:listicle/product/init/theme/base/base_text_theme.dart';

class ProductTextTheme extends BaseTextTheme {
  const ProductTextTheme({super.primaryColor});

  @override
  TextTheme get data => TextTheme(
        displayLarge: displayLarge,
        displayMedium: displayMedium,
        displaySmall: displaySmall,
        bodyLarge: bodyLarge,
        bodyMedium: bodyMedium,
        bodySmall: bodySmall,
        headlineLarge: headlineLarge,
        headlineMedium: headlineMedium,
        headlineSmall: headlineSmall,
        titleMedium: titleMedium,
        titleSmall: titleSmall,
        titleLarge: titleLarge,
        labelLarge: labelLarge,
        labelMedium: labelMedium,
        labelSmall: labelSmall,
      );
  @override
  TextStyle get displayLarge => TextStyle(
        fontSize: 57,
        height: _calculatePixelHeight(64, 57),
        fontWeight: FontWeight.w500,
        letterSpacing: -0.25,
        color: primaryColor,
        fontFamily: fontFamily,
      );

  @override
  TextStyle get displayMedium => TextStyle(
        fontSize: 45,
        height: _calculatePixelHeight(52, 45),
        fontWeight: FontWeight.w600,
        color: primaryColor,
        fontFamily: fontFamily,
      );

  @override
  TextStyle get displaySmall => TextStyle(
        fontSize: 36,
        height: _calculatePixelHeight(44, 36),
        fontWeight: FontWeight.w600,
        color: primaryColor,
        fontFamily: fontFamily,
      );

  @override
  TextStyle get headlineLarge => TextStyle(
        fontSize: 32,
        height: _calculatePixelHeight(40, 32),
        fontWeight: FontWeight.w400,
        color: primaryColor,
        fontFamily: fontFamily,
      );

  @override
  TextStyle get headlineMedium => TextStyle(
        fontSize: 28,
        height: _calculatePixelHeight(32, 28),
        fontWeight: FontWeight.w600,
        color: primaryColor,
        fontFamily: fontFamily,
        letterSpacing: 0.2,
      );

  @override
  TextStyle get headlineSmall => TextStyle(
        fontSize: 24,
        height: _calculatePixelHeight(32, 24),
        fontWeight: FontWeight.w600,
        color: primaryColor,
        fontFamily: fontFamily,
      );

  @override
  TextStyle get titleLarge => TextStyle(
        fontSize: 22,
        height: _calculatePixelHeight(28, 22),
        fontWeight: FontWeight.w600,
        color: primaryColor,
        fontFamily: fontFamily,
      );

  @override
  TextStyle get titleMedium => TextStyle(
        fontSize: 18,
        height: _calculatePixelHeight(20, 18),
        letterSpacing: .15,
        fontWeight: FontWeight.w600,
        color: primaryColor,
        fontFamily: fontFamily,
      );

  @override
  TextStyle get titleSmall => TextStyle(
        fontSize: 16,
        height: _calculatePixelHeight(16, 14),
        letterSpacing: .1,
        fontWeight: FontWeight.w600,
        color: primaryColor,
        fontFamily: fontFamily,
      );

  @override
  TextStyle get labelLarge => TextStyle(
        fontSize: 14,
        height: _calculatePixelHeight(18, 14),
        letterSpacing: .1,
        fontWeight: FontWeight.w600,
        color: primaryColor,
        fontFamily: fontFamily,
      );

  @override
  TextStyle get labelMedium => TextStyle(
        fontSize: 12,
        height: _calculatePixelHeight(16, 12),
        letterSpacing: .5,
        fontWeight: FontWeight.w700,
        color: primaryColor,
        fontFamily: fontFamily,
      );

  @override
  TextStyle get labelSmall => TextStyle(
        fontSize: 10,
        height: _calculatePixelHeight(12, 10),
        letterSpacing: .5,
        fontWeight: FontWeight.w600,
        color: primaryColor,
        fontFamily: fontFamily,
      );

  @override
  TextStyle get bodyLarge => TextStyle(
        fontSize: 16,
        height: _calculatePixelHeight(24, 16),
        letterSpacing: .1,
        fontWeight: FontWeight.w500,
        color: primaryColor,
        fontFamily: fontFamily,
      );

  @override
  TextStyle get bodyMedium => TextStyle(
        fontSize: 14,
        height: _calculatePixelHeight(20, 14),
        letterSpacing: .25,
        fontWeight: FontWeight.w500,
        color: primaryColor,
        fontFamily: fontFamily,
      );

  @override
  TextStyle get bodySmall => TextStyle(
        fontSize: 12,
        height: _calculatePixelHeight(16, 12),
        fontWeight: FontWeight.w500,
        color: primaryColor,
        fontFamily: fontFamily,
      );

  @override
  String get fontFamily => 'Montserrat';

  double _calculatePixelHeight(double lineHeight, double fontSize) =>
      lineHeight / fontSize;
}
