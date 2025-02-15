part of 'application_initialize.dart';

abstract interface class _Initializer {
  Future<void> make();
}

final class _SharedPreferencesInitializer extends _Initializer {
  @override
  Future<void> make() async => BaseContainer.sharedPrefs.init();
}

final class _BaseContainerInitialize extends _Initializer {
  @override
  Future<void> make() async => BaseContainer.setup();
}

final class _CacheStoreInitialize extends _Initializer {
  @override
  Future<void> make() async => BaseContainer.cacheStore.init();
}

final class _StatusBarInitializer extends _Initializer {
  @override
  Future<void> make() async => SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top],
      );
}

final class _OrientationsConfiguration extends _Initializer {
  @override
  Future<void> make() async => SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);
}
