part of 'activities_bloc.dart';

@freezed
class ActivitiesState with _$ActivitiesState {
  const factory ActivitiesState.initial() = _Initial;
  const factory ActivitiesState.ready(List<Activity> activities) = _Ready;
}
