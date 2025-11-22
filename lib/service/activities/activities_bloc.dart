import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timekeeper/entity/activity/activity.dart';
import 'package:timekeeper/entity/item/archet/archet.dart';
import 'package:timekeeper/entity/item/violon/violon.dart';

part 'activities_bloc.freezed.dart';
part 'activities_event.dart';
part 'activities_state.dart';

class ActivitiesBloc extends Bloc<ActivitiesEvent, ActivitiesState> {

  static List<Activity> activities = [
    Activity(
      startedAt: DateTime.now(),
      finishedAt: DateTime.now().add(Duration(minutes: 20)),
      type: ActivityType(label: 'test activity 1'),
      item: Archet(id: 'A1'),
    ),
    Activity(
      startedAt: DateTime.now().add(Duration(minutes: 20)),
      finishedAt: DateTime.now().add(Duration(minutes: 45)),
      type: ActivityType(label: 'test activity 2'),
      item: Archet(id: 'A1'),
    ),
    Activity(
      startedAt: DateTime.now().add(Duration(minutes: 45)),
      finishedAt: DateTime.now().add(Duration(minutes: 60)),
      type: ActivityType(label: 'test activity 3'),
      item: Violon(id: 'V1'),
    ),
    Activity(
      startedAt: DateTime.now().add(Duration(minutes: 60)),
      finishedAt: DateTime.now().add(Duration(minutes: 95)),
      type: ActivityType(label: 'test activity 1'),
      item: Archet(id: 'A2'),
    ),
    Activity(
      startedAt: DateTime.now().add(Duration(minutes: 95)),
      type: ActivityType(label: 'test activity 2'),
      item: Archet(id: 'A2'),
    ),
  ];

  ActivitiesBloc() : super(const ActivitiesState.initial()) {
    on<ActivitiesEvent>((event, emit) {
      event.map(
        started: (value) {
          emit(ActivitiesState.ready(activities));
        },
        activityAdded: (value) {

        },
        activityFinished: (_ActivityFinished value) {
          value.activity.finishedAt = DateTime.now();
        },
        activityRemoved: (value) {

        },
      );
    });
  }
}
