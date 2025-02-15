/// Common Interface for Cache models.
/// For any model that is to be cached
/// implementing this interface would be enough.
/// Requires [id] for Primary Key
mixin ICacheModel<T extends ICacheModel<T>> {
  String get id;
  T fromJson(Map<String, dynamic> json);
  Map<String, dynamic> toJson();
}
