import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timekeeper/service/activities/activities_bloc.dart';

class AppBlocs extends MultiBlocProvider {
  AppBlocs({super.key, required super.child}) : super(
    providers: [

      BlocProvider<ActivitiesBloc>(
        lazy: true,
        create: (context) => ActivitiesBloc()..add(ActivitiesEvent.started()),
      ),
    ],
  );
}