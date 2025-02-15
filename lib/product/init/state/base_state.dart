import 'package:flutter/material.dart';
import 'package:listicle/product/core/cache/shared_preferences_facade.dart';
import 'package:listicle/product/init/cache/product_cache_store.dart';
import 'package:listicle/product/init/navigation/app_router.dart';
import 'package:listicle/product/init/state/base_container.dart';

/// Base state for dependency injection
/// provides [cacheStore,...] as getter method
mixin BaseState<T extends StatefulWidget> on State<T> {
  AppRouter get router => BaseContainer.router;
  ProductCacheStore get cacheStore => BaseContainer.cacheStore;
  SharedPreferencesFacade get sharedPreferences => BaseContainer.sharedPrefs;
}
