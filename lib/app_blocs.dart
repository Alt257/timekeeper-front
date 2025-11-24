import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timekeeper/data/repository/activity/mock_activity_repository.dart';
import 'package:timekeeper/service/activities/activities_bloc.dart';

class AppBlocs extends MultiBlocProvider {
  AppBlocs({super.key, required super.child}) : super(
    providers: [

      BlocProvider<ActivitiesBloc>(
        lazy: true,
        create: (context) => ActivitiesBloc(
          activityRepository: MockActivityRepository(),
        )..add(ActivitiesEvent.started()),
      ),
    ],
  );
}