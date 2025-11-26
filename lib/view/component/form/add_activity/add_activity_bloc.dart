import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timekeeper/entity/activity/activity.dart';
import 'package:timekeeper/entity/item/item.dart';

part 'add_activity_bloc.freezed.dart';
part 'add_activity_event.dart';
part 'add_activity_state.dart';

class AddActivityBloc extends Bloc<AddActivityEvent, AddActivityState> {
  AddActivityBloc() : super(const AddActivityState.initial()) {

    on<AddActivityEvent>((event, emit) {
      event.map(

          started: (event) {
            emit(AddActivityState.filling());
          },

          reset: (event) {
            emit(AddActivityState.filling(
              selectedItem: null,
              selectedType: null,
            ));
          },

          typeChanged: (event) {
            state.maybeMap(
                filling: (state) {
                  emit(state.copyWith(selectedType: event.activityType));
                },
                orElse: () {},
            );
          },

          itemChanged: (event) {
            state.maybeMap(
                filling: (state) {
                  emit(state.copyWith(selectedItem: event.item));
                },
                orElse: () {},
            );
          },

          submitted: (event) {
            state.maybeMap(
                filling: (state) {
                  emit(AddActivityState.submitting());

                  try {
                    final activity = Activity(
                      type: state.selectedType!,
                      startedAt: DateTime.now(),
                      item: state.selectedItem!,
                    );
                    emit(AddActivityState.success(activity));
                  } catch(e) {
                    print(e);
                    emit(AddActivityState.failure('Erreur nouvelle activité'));
                  }
                },
                orElse: () {},
            );
          },

      );
    });
  }
}
