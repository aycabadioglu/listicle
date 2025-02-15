import 'package:flutter/material.dart';
import 'package:listicle/product/constants/colors/dark_colors.dart';
import 'package:listicle/product/init/theme/base/base_color_theme.dart';

class DarkColorTheme extends IColorTheme {
  //---------------------------------------------------------------------------
  @override
  Color get primary => DarkColors.primaryDark;
  @override
  Color get onPrimary => DarkColors.onPrimaryDark;
  @override
  Color get primaryContainer => DarkColors.primaryContainerDark;
  @override
  Color get onPrimaryContainer => DarkColors.onPrimaryContainerDark;
  //---------------------------------------------------------------------------
  @override
  Color get secondary => DarkColors.secondaryDark;
  @override
  Color get onSecondary => DarkColors.onSecondaryDark;
  @override
  Color get secondaryContainer => DarkColors.secondaryContainerDark;
  @override
  Color get onSecondaryContainer => DarkColors.onSecondaryContainerDark;
  //---------------------------------------------------------------------------
  @override
  Color get surfaceDim => DarkColors.surfaceDimDark;
  @override
  Color get scrim => DarkColors.scrimDark;
  //---------------------------------------------------------------------------
  @override
  Color get surface => DarkColors.surfaceDark;
  @override
  Color get onSurface => DarkColors.onSurfaceDark;
  @override
  Color get surfaceContainerHighest => DarkColors.surfaceContainerHighestDark;
  @override
  Color get onSurfaceVariant => DarkColors.onSurfaceVariantDark;
  //---------------------------------------------------------------------------
  @override
  Color get error => DarkColors.errorDark;
  @override
  Color get onError => DarkColors.onErrorDark;
  @override
  Color get errorContainer => DarkColors.errorContainerDark;
  @override
  Color get onErrorContainer => DarkColors.onErrorContainerDark;
  //---------------------------------------------------------------------------
  @override
  Color get outline => DarkColors.outlineDark;
  @override
  Color get outlineVariant => DarkColors.outlineVariantDark;
  //---------------------------------------------------------------------------
  @override
  Color get tertiary => DarkColors.tertiaryDark;
  @override
  Color get onTertiary => DarkColors.onTertiaryDark;
  @override
  Color get tertiaryContainer => DarkColors.tertiaryContainerDark;
  @override
  Color get onTertiaryContainer => DarkColors.onTertiaryContainerDark;
  //---------------------------------------------------------------------------

  @override
  ColorScheme get colorScheme => ColorScheme(
        brightness: Brightness.dark,
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
