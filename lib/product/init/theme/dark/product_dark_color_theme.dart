import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:listicle/product/init/theme/base/base_color_theme.dart';

class DarkColorTheme extends IColorTheme {
  //---------------------------------------------------------------------------
  @override
  Color get primary => ColorName.primaryDark;
  @override
  Color get onPrimary => ColorName.onPrimaryDark;
  @override
  Color get primaryContainer => ColorName.primaryContainerDark;
  @override
  Color get onPrimaryContainer => ColorName.onPrimaryContainerDark;
  //---------------------------------------------------------------------------
  @override
  Color get secondary => ColorName.secondaryDark;
  @override
  Color get onSecondary => ColorName.onSecondaryDark;
  @override
  Color get secondaryContainer => ColorName.secondaryContainerDark;
  @override
  Color get onSecondaryContainer => ColorName.onSecondaryContainerDark;
  //---------------------------------------------------------------------------
  @override
  Color get surfaceDim => ColorName.surfaceDimDark;
  @override
  Color get scrim => ColorName.scrimDark;
  //---------------------------------------------------------------------------
  @override
  Color get surface => ColorName.surfaceDark;
  @override
  Color get onSurface => ColorName.onSurfaceDark;
  @override
  Color get surfaceContainerHighest => ColorName.surfaceContainerHighestDark;
  @override
  Color get onSurfaceVariant => ColorName.onSurfaceVariantDark;
  //---------------------------------------------------------------------------
  @override
  Color get error => ColorName.errorDark;
  @override
  Color get onError => ColorName.onErrorDark;
  @override
  Color get errorContainer => ColorName.errorContainerDark;
  @override
  Color get onErrorContainer => ColorName.onErrorContainerDark;
  //---------------------------------------------------------------------------
  @override
  Color get outline => ColorName.outlineDark;
  @override
  Color get outlineVariant => ColorName.outlineVariantDark;
  //---------------------------------------------------------------------------
  @override
  Color get tertiary => ColorName.tertiaryDark;
  @override
  Color get onTertiary => ColorName.onTertiaryDark;
  @override
  Color get tertiaryContainer => ColorName.tertiaryContainerDark;
  @override
  Color get onTertiaryContainer => ColorName.onTertiaryContainerDark;
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
