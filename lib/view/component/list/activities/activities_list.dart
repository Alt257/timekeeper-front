import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timekeeper/service/activities/activities_bloc.dart';

import 'activity_tile.dart';

final class ActivitiesList extends StatelessWidget {
  const ActivitiesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivitiesBloc, ActivitiesState>(
      builder: (context, state) {
        return ListView.separated(
          itemBuilder: (context, index) => state.map(
              initial: (value) => const SizedBox.shrink(),
              ready: (value) => ActivityListTile(value.activities.elementAt(index)),
          ),
          separatorBuilder: (BuildContext context, int index) => const Divider(),
          itemCount: state.map(
              initial: (value) => 0,
              ready: (value) => value.activities.length,
          ),
        );
      },
    );
  }
}