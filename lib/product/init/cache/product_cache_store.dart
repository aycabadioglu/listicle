import 'package:listicle/product/core/cache/cache_store.dart';
import 'package:listicle/product/init/cache/app_settings_cache_service.dart';
import 'package:listicle/product/model/app_settings_model.dart';

final class ProductCacheStore {
  Future<void> init() async {
    final store = CacheStore();
    await store.init();
    store.register<AppSettingsModel>(appSettingsStore);
  }

  final appSettingsStore = AppSettingsCacheService();
}
