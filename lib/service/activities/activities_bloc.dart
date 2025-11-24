import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timekeeper/data/repository/activity/i_activity_repository.dart';
import 'package:timekeeper/entity/activity/activity.dart';

part 'activities_bloc.freezed.dart';
part 'activities_event.dart';
part 'activities_state.dart';

class ActivitiesBloc extends Bloc<ActivitiesEvent, ActivitiesState> {

  final IActivityRepository _activityRepository;

  ActivitiesBloc({
    required IActivityRepository activityRepository
  }) :
        _activityRepository = activityRepository,
        super(const ActivitiesState.initial()) {
    on<ActivitiesEvent>((event, emit) {
      event.map(

        started: (event) async {
          emit(ActivitiesState.ready(await activityRepository.findAll()));
        },

        activityAdded: (event) {
          state.map(
            initial: (state) {},
            ready: (state) {
              emit(state.copyWith(
                activities: [...state.activities, event.activity],
              ));
            },
          );
        },

        activityFinished: (event) {
          state.map(
            initial: (state) {},
            ready: (state) {
              // final updatedActivity = event.activity.copyWith(
              //   finishedAt: DateTime.now(),
              // );
              final updatedActivity = Activity(
                  id: event.activity.id,
                  type: event.activity.type,
                  startedAt: event.activity.startedAt,
                  finishedAt: DateTime.now(),
                  item: event.activity.item,
              );
              emit(state.copyWith(
                activities: state.activities.map(
                    (e) => e.id == updatedActivity.id ? updatedActivity : e
                ).toList(),
              ));
            },
          );
        },

        activityRemoved: (event) {
          state.map(
            initial: (state) {},
            ready: (state) {
              emit(state.copyWith(activities: List.from(
                  state.activities.where((a) => a.id != event.activity.id)
              )));
            },
          );
        },
      );
    });
  }
}
