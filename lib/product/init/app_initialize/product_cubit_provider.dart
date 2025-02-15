import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listicle/product/cubit/app_settings/app_settings_cubit.dart';
import 'package:listicle/product/init/state/base_stateless.dart';

final class ProductCubitProvider extends StatelessWidget with BaseStateless {
  const ProductCubitProvider({
    required this.child,
    super.key,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => AppSettingsCubit(
            cacheService: cacheStore.appSettingsStore,
          ),
        ),
      ],
      child: child,
    );
  }
}
