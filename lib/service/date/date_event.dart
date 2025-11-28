part of 'date_bloc.dart';

@freezed
class DateEvent with _$DateEvent {
  const factory DateEvent.started() = _Started;
  const factory DateEvent.dateSelected(DateTime date) = _DateSelected;
}
