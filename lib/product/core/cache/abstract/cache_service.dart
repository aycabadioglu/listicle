import 'package:hive/hive.dart';
import 'package:listicle/product/core/cache/abstract/cache_model.dart';

/// Cache service for DB Collections
/// provides [empty,box,initialize,deleteBox] as methods
/// [empty] is empty instance of cache model
/// [box] is hive box
/// [initialize] initializes hive box
/// [deleteBox] deletes hive box from disk
abstract class ICacheService<T extends ICacheModel<T>> {
  T get empty;
  String get typeIdentifier => empty.runtimeType.toString();
  T fromJson(Map<String, dynamic> json) => empty.fromJson(json);
  Box<T>? box;

  void initialize({int maxSizeMiB = 5}) {
    if (box?.isOpen ?? false) return;
    final identifier = typeIdentifier;
    box = Hive.box(name: identifier, maxSizeMiB: maxSizeMiB);
  }

  Future<void> deleteBox() async {
    box?.deleteFromDisk();
  }
}
