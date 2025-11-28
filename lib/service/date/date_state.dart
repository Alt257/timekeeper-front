part of 'date_bloc.dart';

@freezed
class DateState with _$DateState {
  const factory DateState.initial() = _Initial;
  const factory DateState.ready(DateTime date) = _Ready;
}
