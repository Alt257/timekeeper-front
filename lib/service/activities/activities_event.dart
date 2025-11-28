part of 'activities_bloc.dart';

@freezed
class ActivitiesEvent with _$ActivitiesEvent {
  const factory ActivitiesEvent.started() = _Started;
  const factory ActivitiesEvent.activityAdded(Activity activity) = _ActivityAdded;
  const factory ActivitiesEvent.activityFinished(Activity activity) = _ActivityFinished;
  const factory ActivitiesEvent.activityRemoved(Activity activity) = _ActivityRemoved;
  const factory ActivitiesEvent.dateChanged(DateTime date) = _DateChanged;
}
