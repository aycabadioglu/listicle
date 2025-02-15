import 'package:get_it/get_it.dart';
import 'package:listicle/product/core/cache/shared_preferences_facade.dart';
import 'package:listicle/product/init/cache/product_cache_store.dart';
import 'package:listicle/product/init/navigation/app_router.dart';

/// Base container for dependency injection
/// provides [setup] as constructor method
/// provides [read] as getter method
final class BaseContainer {
  const BaseContainer._();
  static final _getIt = GetIt.instance;

  static void setup() {
    _getIt
      //? Non Dependent Services Injection
      ..registerSingleton(SharedPreferencesFacade())
      ..registerSingleton(ProductCacheStore())
      ..registerSingleton<AppRouter>(AppRouter());
    //! Dependent Services Injection
  }

  // ---------------------------------------------------------------------- //
  static T read<T extends Object>() => _getIt.get<T>();

  static AppRouter get router => _getIt.get<AppRouter>();

  static ProductCacheStore get cacheStore => _getIt.get<ProductCacheStore>();

  static SharedPreferencesFacade get sharedPrefs =>
      _getIt.get<SharedPreferencesFacade>();
}
