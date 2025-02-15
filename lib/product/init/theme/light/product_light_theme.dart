import 'package:flutter/material.dart';
import 'package:listicle/product/init/theme/base/product_text_theme.dart';
import 'package:listicle/product/init/theme/base/product_theme.dart';
import 'package:listicle/product/init/theme/light/product_light_color_theme.dart';

final class ProductLightTheme extends ProductTheme {
  @override
  final colorScheme = LightColorTheme().colorScheme;
  @override
  late final textTheme =
      ProductTextTheme(primaryColor: colorScheme.onPrimaryContainer).data;

  @override
  ThemeData get themeData => ThemeData(
        brightness: colorScheme.brightness,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        colorScheme: colorScheme,
        textTheme: textTheme,
        scaffoldBackgroundColor: colorScheme.surfaceDim,
      );
}
