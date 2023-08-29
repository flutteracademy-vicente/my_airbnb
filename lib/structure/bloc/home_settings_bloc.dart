import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_settings_event.dart';
part 'home_settings_state.dart';

class HomeSettingsBloc extends Bloc<HomeSettingsEvent, HomeSettingsState> {
  HomeSettingsBloc() : super(HomeSettingsState.initial()) {
    on<ChangeMultipleHomeEvent>((event, emit) {
      bool newMultiple = !state.multiple;
      print(newMultiple);
      emit(
        state.copyWith(multiple: newMultiple),
      );
    });
  }
}
