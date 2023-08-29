part of 'home_settings_bloc.dart';

class HomeSettingsState {
  final bool multiple;

  HomeSettingsState({
    required this.multiple,
  });

  factory HomeSettingsState.initial() {
    return HomeSettingsState(
      multiple: true,
    );
  }
  HomeSettingsState copyWith({bool? multiple}) {
    return HomeSettingsState(
      multiple: multiple ?? this.multiple,
    );
  }
}
