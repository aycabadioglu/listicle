import 'package:listicle/product/core/cache/index.dart';
import 'package:listicle/product/model/app_settings_model.dart';

final class AppSettingsCacheService extends ICacheService<AppSettingsModel>
    with ICacheOperations<AppSettingsModel> {
  @override
  late final AppSettingsModel empty = AppSettingsModel.empty();

  AppSettingsModel get getAppSettings {
    final settings = getBy((_) => true);
    if (settings == null) return empty;
    return settings;
  }
}
