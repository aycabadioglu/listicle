import 'package:flutter/material.dart';
import 'package:listicle/product/constants/colors/light_colors.dart';
import 'package:listicle/product/init/theme/base/base_color_theme.dart';

class LightColorTheme extends IColorTheme {
  //---------------------------------------------------------------------------
  @override
  Color get primary => LightColors.primaryLight;
  @override
  Color get onPrimary => LightColors.onPrimaryLight;
  @override
  Color get primaryContainer => LightColors.primaryContainerLight;
  @override
  Color get onPrimaryContainer => LightColors.onPrimaryContainerLight;
  //---------------------------------------------------------------------------
  @override
  Color get secondary => LightColors.secondaryLight;
  @override
  Color get onSecondary => LightColors.onSecondaryLight;
  @override
  Color get secondaryContainer => LightColors.secondaryContainerLight;
  @override
  Color get onSecondaryContainer => LightColors.onSecondaryContainerLight;
  //---------------------------------------------------------------------------
  @override
  Color get surfaceDim => LightColors.surfaceDimLight;
  @override
  Color get scrim => LightColors.scrimLight;
  //---------------------------------------------------------------------------
  @override
  Color get surface => LightColors.surfaceLight;
  @override
  Color get onSurface => LightColors.onSurfaceLight;
  @override
  Color get surfaceContainerHighest => LightColors.surfaceContainerHighestLight;
  @override
  Color get onSurfaceVariant => LightColors.onSurfaceVariantLight;
  //---------------------------------------------------------------------------
  @override
  Color get error => LightColors.errorLight;
  @override
  Color get onError => LightColors.onErrorLight;
  @override
  Color get errorContainer => LightColors.errorContainerLight;
  @override
  Color get onErrorContainer => LightColors.onErrorContainerLight;
  //---------------------------------------------------------------------------
  @override
  Color get outline => LightColors.outlineLight;
  @override
  Color get outlineVariant => LightColors.outlineVariantLight;
  //---------------------------------------------------------------------------
  @override
  Color get tertiary => LightColors.tertiaryLight;
  @override
  Color get onTertiary => LightColors.onTertiaryLight;
  @override
  Color get tertiaryContainer => LightColors.tertiaryContainerLight;
  @override
  Color get onTertiaryContainer => LightColors.onTertiaryContainerLight;
  //---------------------------------------------------------------------------

  @override
  ColorScheme get colorScheme => ColorScheme(
        brightness: Brightness.light,
        primary: primary,
        onPrimary: onPrimary,
        primaryContainer: primaryContainer,
        onPrimaryContainer: onPrimaryContainer,
        secondary: secondary,
        onSecondary: onSecondary,
        secondaryContainer: secondaryContainer,
        onSecondaryContainer: onSecondaryContainer,
        surfaceDim: surfaceDim,
        scrim: scrim,
        surface: surface,
        onSurface: onSurface,
        surfaceContainerHighest: surfaceContainerHighest,
        onSurfaceVariant: onSurfaceVariant,
        error: error,
        onError: onError,
        errorContainer: errorContainer,
        onErrorContainer: onErrorContainer,
        outline: outline,
        outlineVariant: outlineVariant,
        tertiary: tertiary,
        tertiaryContainer: tertiaryContainer,
        onTertiary: onTertiary,
        onTertiaryContainer: onTertiaryContainer,
      );
}
