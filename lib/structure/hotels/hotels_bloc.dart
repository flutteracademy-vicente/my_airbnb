import 'package:flutter_bloc/flutter_bloc.dart';

part 'hotels_event.dart';
part 'hotels_state.dart';

class HotelsBloc extends Bloc<HotelsEvent, HotelsState> {
  HotelsBloc() : super(HotelsState.initial()) {
    on<ChangeTotalDate>((event, emit) {
      DateTime newStartDate = event.startDate;
      DateTime newEndDate = event.endDate;

      emit(
        state.copyWith(
          startDate: newStartDate,
          endDate: newEndDate,
        ),
      );
    });
  }
}
