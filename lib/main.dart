import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listicle/product/cubit/app_settings/app_settings_cubit.dart';
import 'package:listicle/product/init/app_initialize/application_initialize.dart';
import 'package:listicle/product/init/app_initialize/material_app_builder.dart';
import 'package:listicle/product/init/app_initialize/product_cubit_provider.dart';
import 'package:listicle/product/init/state/base_stateless.dart';
import 'package:listicle/product/init/theme/dark/product_dark_theme.dart';
import 'package:listicle/product/init/theme/light/product_light_theme.dart';

void main() async {
  await ApplicationInitialize.make();
  runApp(const _MyApp());
}

final class _MyApp extends StatelessWidget with BaseStateless {
  const _MyApp();

  @override
  Widget build(BuildContext context) => ProductCubitProvider(
        child: BlocSelector<AppSettingsCubit, AppSettingsState, ThemeMode>(
          selector: (state) => state.themeMode,
          builder: (context, themeMode) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              routerConfig: router.config(),
              builder: MaterialAppBuilder.builder,
              onGenerateTitle: (context) => 'Listicle',
              theme: ProductLightTheme.instance.themeData,
              darkTheme: ProductDarkTheme.instance.themeData,
              themeMode: themeMode,
            );
          },
        ),
      );
}
