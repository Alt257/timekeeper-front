part of 'add_activity_bloc.dart';

@freezed
class AddActivityEvent with _$AddActivityEvent {
  const factory AddActivityEvent.started() = _Started;
}
