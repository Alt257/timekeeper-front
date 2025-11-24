import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timekeeper/entity/activity/activity.dart';

part 'add_activity_bloc.freezed.dart';
part 'add_activity_event.dart';
part 'add_activity_state.dart';

class AddActivityBloc extends Bloc<AddActivityEvent, AddActivityState> {
  AddActivityBloc() : super(const AddActivityState.initial()) {
    on<AddActivityEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
