import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'date_bloc.freezed.dart';
part 'date_event.dart';
part 'date_state.dart';

class DateBloc extends Bloc<DateEvent, DateState> {
  DateBloc() : super(const DateState.initial()) {
    on<DateEvent>((event, emit) {
      event.map(

          started: (value) {
            emit(DateState.ready(DateTime.now()));
          },

          dateSelected: (value) {
            emit(DateState.ready(value.date));
          },

      );
    });
  }
}
