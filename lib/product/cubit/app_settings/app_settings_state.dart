part of 'app_settings_cubit.dart';

final class AppSettingsState extends Equatable {
  const AppSettingsState({required this.settings});

  factory AppSettingsState.initial() => AppSettingsState(
        settings: AppSettingsModel.empty(),
      );

  final AppSettingsModel settings;

  ThemeMode get themeMode =>
      settings.isDarkMode ? ThemeMode.dark : ThemeMode.light;

  bool get isNotificationEnabled => settings.isNotificationEnabled;

  AppSettingsState copyWith({AppSettingsModel? settings}) =>
      AppSettingsState(settings: settings ?? this.settings);

  @override
  List<Object> get props => [settings];
}
