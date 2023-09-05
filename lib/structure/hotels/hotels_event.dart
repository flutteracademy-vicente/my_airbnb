part of 'hotels_bloc.dart';

abstract class HotelsEvent {}

class ChangeStartDateEvent extends HotelsEvent {
  final DateTime startDate;

  ChangeStartDateEvent({required this.startDate});
}

class ChangeEndDateEvent extends HotelsEvent {
  final DateTime endDate;

  ChangeEndDateEvent({required this.endDate});
}

class ChangeTotalDate extends HotelsEvent {
  final DateTime startDate;
  final DateTime endDate;

  ChangeTotalDate({
    required this.startDate,
    required this.endDate,
  });
}
