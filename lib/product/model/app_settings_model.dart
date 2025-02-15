import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:listicle/product/constants/cache_constants.dart';
import 'package:listicle/product/core/cache/abstract/cache_model.dart';

part 'app_settings_model.g.dart';

@JsonSerializable()
class AppSettingsModel extends Equatable with ICacheModel<AppSettingsModel> {
  AppSettingsModel({
    required this.isDarkMode,
    required this.isNotificationEnabled,
  });

  factory AppSettingsModel.empty() => AppSettingsModel(
        isDarkMode: true,
        isNotificationEnabled: false,
      );

  final bool isDarkMode;
  final bool isNotificationEnabled;

  @override
  AppSettingsModel fromJson(Map<String, dynamic> json) =>
      _$AppSettingsModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AppSettingsModelToJson(this);

  @override
  String get id => CacheConstants.appSettings.name;

  @override
  List<Object> get props => [isDarkMode, isNotificationEnabled];

  AppSettingsModel copyWith({
    bool? isDarkMode,
    bool? isNotificationEnabled,
  }) {
    return AppSettingsModel(
      isDarkMode: isDarkMode ?? this.isDarkMode,
      isNotificationEnabled:
          isNotificationEnabled ?? this.isNotificationEnabled,
    );
  }
}
