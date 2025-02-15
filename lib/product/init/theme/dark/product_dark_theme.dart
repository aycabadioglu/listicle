import 'package:flutter/material.dart';
import 'package:listicle/product/init/theme/base/product_text_theme.dart';
import 'package:listicle/product/init/theme/base/product_theme.dart';
import 'package:listicle/product/init/theme/dark/product_dark_color_theme.dart';

final class ProductDarkTheme extends ProductTheme {
  @override
  final colorScheme = DarkColorTheme().colorScheme;
  @override
  late final textTheme =
      ProductTextTheme(primaryColor: colorScheme.onPrimaryContainer).data;

  @override
  ThemeData get themeData => ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: colorScheme.surfaceDim,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        colorScheme: colorScheme,
        textTheme: textTheme,
      );
}
