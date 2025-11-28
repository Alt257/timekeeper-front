import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timekeeper/service/activities/activities_bloc.dart';
import 'package:timekeeper/service/date/date_bloc.dart';

import 'activity_tile.dart';

final class ActivitiesList extends StatelessWidget {
  const ActivitiesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<DateBloc, DateState>(
      listener: (context, state) {
        state.map(
          initial: (value) => (),
          ready: (value) => BlocProvider.of<ActivitiesBloc>(context).add(
              ActivitiesEvent.dateChanged(value.date)
          ),
        );
      },
      child: BlocBuilder<ActivitiesBloc, ActivitiesState>(
        builder: (context, state) {
          return ListView.separated(
            itemBuilder: (context, index) => state.map(
              initial: (value) => const SizedBox.shrink(),
              ready: (value) {
                final activity = value.activities.elementAt(index);
                return ActivityListTile(activity,
                  onStopActivityPressed: () => BlocProvider.of<ActivitiesBloc>(context).add(
                      ActivitiesEvent.activityFinished(activity)
                  ),
                  onEditActivityPressed: () => (),
                  onDeleteActivityPressed: () => BlocProvider.of<ActivitiesBloc>(context).add(
                      ActivitiesEvent.activityRemoved(activity)
                  ),
                );
              },
            ),
            separatorBuilder: (BuildContext context, int index) => const Divider(),
            itemCount: state.map(
              initial: (value) => 0,
              ready: (value) => value.activities.length,
            ),
          );
        },
      ),
    );
  }
}