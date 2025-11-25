part of 'add_activity_bloc.dart';

@freezed
class AddActivityEvent with _$AddActivityEvent {
  const factory AddActivityEvent.started() = _Started;
  const factory AddActivityEvent.typeChanged(ActivityType activityType) = _ActivityTypeChanged;
  const factory AddActivityEvent.itemChanged(Item item) = _ItemChanged;
  const factory AddActivityEvent.submitted() = _Submitted;
}
