import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listicle/product/init/cache/app_settings_cache_service.dart';
import 'package:listicle/product/init/state/base_cubit.dart';
import 'package:listicle/product/model/app_settings_model.dart';

part 'app_settings_state.dart';

class AppSettingsCubit extends Cubit<AppSettingsState> with BaseCubit {
  AppSettingsCubit({
    required AppSettingsCacheService cacheService,
  })  : _cacheService = cacheService,
        super(AppSettingsState.initial());

  final AppSettingsCacheService _cacheService;

  void toggleTheme() {
    final settings =
        state.settings.copyWith(isDarkMode: !state.settings.isDarkMode);
    _updateCacheAndEmit(settings);
  }

  void _updateCacheAndEmit(AppSettingsModel settings) {
    _cacheService.update(settings);
    emit(AppSettingsState(settings: settings));
  }
}
