import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timekeeper/entity/activity/activity.dart';
import 'package:timekeeper/entity/item/violon/violon.dart';
import 'package:timekeeper/service/activities/activities_bloc.dart';

import 'add_activity_bloc.dart';
import 'field/activity_type.dart';

final class AddActivityForm extends StatelessWidget {
  const AddActivityForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddActivityBloc, AddActivityState>(
      listener: (context, state) {
        state.maybeMap(
          success: (value) {
            context.read<ActivitiesBloc>()
                .add(ActivitiesEvent.activityAdded(value.activity));
          },
          orElse: () {},
        );
      },
      child: Row(
        spacing: 16,
        children: [
          // TimePickerButton(),
          Expanded(
            child: ActivityTypeSelection(),
          ),
          IconButton(
            onPressed: () =>
                context.read<ActivitiesBloc>().add(
                    ActivitiesEvent.activityAdded(Activity(
                      type: ActivityType(label: 'dummy'),
                      startedAt: DateTime.now(),
                      item: Violon(id: 'dummy violon'),
                    ))
                ),
            icon: Icon(Icons.add),
          )
        ],
      ),
    );
  }


}