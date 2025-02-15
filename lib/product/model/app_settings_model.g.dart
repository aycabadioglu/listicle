// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppSettingsModel _$AppSettingsModelFromJson(Map<String, dynamic> json) =>
    AppSettingsModel(
      isDarkMode: json['isDarkMode'] as bool,
      isNotificationEnabled: json['isNotificationEnabled'] as bool,
    );

Map<String, dynamic> _$AppSettingsModelToJson(AppSettingsModel instance) =>
    <String, dynamic>{
      'isDarkMode': instance.isDarkMode,
      'isNotificationEnabled': instance.isNotificationEnabled,
    };
