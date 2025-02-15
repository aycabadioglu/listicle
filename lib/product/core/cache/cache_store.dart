// ignore_for_file: comment_references

import 'package:hive/hive.dart';
import 'package:listicle/product/core/cache/abstract/cache_model.dart';
import 'package:listicle/product/core/cache/abstract/cache_service.dart';
import 'package:path_provider/path_provider.dart';

/// Cache store
/// provides [init,register] as methods
/// [init] initializes hive box
/// [register] registers cache model
/// [T] is type of cache model
/// [ICacheModel] is interface of cache model
/// [ICacheService] is interface of cache service
class CacheStore {
  CacheStore();

  Future<void> init() async {
    final path = (await getApplicationDocumentsDirectory()).path;
    Hive.defaultDirectory = path;
  }

  void register<T extends ICacheModel<T>>(ICacheService<T> service) {
    final type = service.typeIdentifier;
    Hive.registerAdapter<T>(
      type,
      (json) => _safeDynamicRegister<T>(json, service),
    );
    service.initialize();
  }

  /// NOTE: This method is used to register cache model
  /// and to avoid exception in case of wrong json
  T _safeDynamicRegister<T extends ICacheModel<T>>(
    dynamic json,
    ICacheService<T> service,
  ) {
    try {
      final data = json as Map<String, dynamic>;
      final model = service.empty.fromJson(data);
      return model;
    } catch (e) {
      throw Exception('CacheStore: register error $T $e');
    }
  }
}
