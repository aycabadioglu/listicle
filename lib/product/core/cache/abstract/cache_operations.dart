import 'package:listicle/product/core/cache/abstract/cache_model.dart';
import 'package:listicle/product/core/cache/abstract/cache_service.dart';

/// Cache operations
/// provides [add,addAll,update,delete,getBy,getAll] as methods
/// [add] adds item to cache
/// [addAll] adds items to cache
/// [update] updates item in cache
/// [delete] deletes item from cache
/// [getBy] gets item from cache by predicate
/// [getAll] gets all items from cache
/// [T] is type of cache model
mixin ICacheOperations<T extends ICacheModel<T>> on ICacheService<T> {
  bool add(T item) {
    box?.put(item.id, item);
    return box?.get(item.id) == item;
  }

  void addAll(List<T> items) {
    final cacheItems = items.map((e) => MapEntry(e.id, e));
    final cacheEntry = Map<String, T>.fromEntries(cacheItems);
    box?.putAll(cacheEntry);
  }

  bool update(T item) {
    box?.put(item.id, item);
    return box?.get(item.id) == item;
  }

  bool delete(T item) {
    box?.delete(item.id);
    return box?.containsKey(item.id) == false;
  }

  T? getBy(bool Function(T instance) predicate) {
    final keys = box?.keys;
    if (keys == null || box == null) return null;
    return box!
        .getAll(box!.keys)
        .where((element) => element != null)
        .cast<T>()
        .where(predicate)
        .firstOrNull;
  }

  List<T> getAll() {
    final keys = box?.keys;
    if (keys == null || box == null) return [];
    return box!
        .getAll(box!.keys)
        .where((element) => element != null)
        .cast<T>()
        .toList();
  }

  bool clear() {
    box?.clear();
    return box?.isEmpty ?? false;
  }
}
