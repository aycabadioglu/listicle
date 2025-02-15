import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:listicle/product/init/theme/base/base_color_theme.dart';

class LightColorTheme extends IColorTheme {
  //---------------------------------------------------------------------------
  @override
  Color get primary => ColorName.primaryLight;
  @override
  Color get onPrimary => ColorName.onPrimaryLight;
  @override
  Color get primaryContainer => ColorName.primaryContainerLight;
  @override
  Color get onPrimaryContainer => ColorName.onPrimaryContainerLight;
  //---------------------------------------------------------------------------
  @override
  Color get secondary => ColorName.secondaryLight;
  @override
  Color get onSecondary => ColorName.onSecondaryLight;
  @override
  Color get secondaryContainer => ColorName.secondaryContainerLight;
  @override
  Color get onSecondaryContainer => ColorName.onSecondaryContainerLight;
  //---------------------------------------------------------------------------
  @override
  Color get surfaceDim => ColorName.surfaceDimLight;
  @override
  Color get scrim => ColorName.scrimLight;
  //---------------------------------------------------------------------------
  @override
  Color get surface => ColorName.surfaceLight;
  @override
  Color get onSurface => ColorName.onSurfaceLight;
  @override
  Color get surfaceContainerHighest => ColorName.surfaceContainerHighestLight;
  @override
  Color get onSurfaceVariant => ColorName.onSurfaceVariantLight;
  //---------------------------------------------------------------------------
  @override
  Color get error => ColorName.errorLight;
  @override
  Color get onError => ColorName.onErrorLight;
  @override
  Color get errorContainer => ColorName.errorContainerLight;
  @override
  Color get onErrorContainer => ColorName.onErrorContainerLight;
  //---------------------------------------------------------------------------
  @override
  Color get outline => ColorName.outlineLight;
  @override
  Color get outlineVariant => ColorName.outlineVariantLight;
  //---------------------------------------------------------------------------
  @override
  Color get tertiary => ColorName.tertiaryLight;
  @override
  Color get onTertiary => ColorName.onTertiaryLight;
  @override
  Color get tertiaryContainer => ColorName.tertiaryContainerLight;
  @override
  Color get onTertiaryContainer => ColorName.onTertiaryContainerLight;
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
