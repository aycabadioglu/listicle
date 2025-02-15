import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesFacade {
  SharedPreferencesFacade();

  late final SharedPreferences sharedPrefs;

  Future<void> init() async =>
      sharedPrefs = await SharedPreferences.getInstance();

  Future<bool> save({
    required String key,
    required Object value,
  }) async {
    return _futureErrorHandler(
      () async {
        return switch (value) {
          final String value => sharedPrefs.setString(key, value),
          final int value => sharedPrefs.setInt(key, value),
          final double value => sharedPrefs.setDouble(key, value),
          final bool value => sharedPrefs.setBool(key, value),
          final List<String> value => sharedPrefs.setStringList(key, value),
          _ => throw UnsupportedError(
              'The type of this value is not supported. '
              '''
 All supported types are:
 String | int | double | bool | List<String>.
               ''',
            ),
        };
      },
    );
  }

  T? get<T>(String key) {
    return _errorHandler(
      () {
        return switch (T) {
          const (String) => sharedPrefs.getString(key) as T?,
          const (int) => sharedPrefs.getInt(key) as T?,
          const (double) => sharedPrefs.getDouble(key) as T?,
          const (bool) => sharedPrefs.getBool(key) as T?,
          const (List<String>) => sharedPrefs.getStringList(key) as T?,
          _ => throw UnsupportedError(
              'The generic type is not supported. '
              '''
 All supported types are:
 String | int | double | bool | List<String>.
               ''',
            ),
        };
      },
    );
  }

  Future<bool> clearAll() async {
    return _futureErrorHandler(
      () async {
        return sharedPrefs.clear();
      },
    );
  }

  Future<bool> clearKey(String key) async {
    return _futureErrorHandler(
      () async {
        return sharedPrefs.remove(key);
      },
    );
  }

  T _errorHandler<T>(T Function() body) {
    try {
      return body.call();
    } catch (e, st) {
      throw Error.throwWithStackTrace(e, st);
    }
  }

  Future<T> _futureErrorHandler<T>(Future<T> Function() body) async {
    try {
      return await body.call();
    } catch (e, st) {
      throw Error.throwWithStackTrace(e, st);
    }
  }
}
