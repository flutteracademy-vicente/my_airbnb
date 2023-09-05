part of 'hotels_bloc.dart';

class HotelsState {
  final DateTime endDate;
  final DateTime startDate;

  HotelsState({
    required this.endDate,
    required this.startDate,
  });

  factory HotelsState.initial() {
    return HotelsState(
      startDate: DateTime.now(),
      endDate: DateTime.now().add(const Duration(days: 5)),
    );
  }
  HotelsState copyWith({DateTime? startDate, DateTime? endDate}) {
    return HotelsState(
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
    );
  }
}
