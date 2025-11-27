import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timekeeper/service/activities/activities_bloc.dart';
import 'package:timekeeper/view/component/icon/custom_icon.dart';

import '../../../../service/add_activity/add_activity_bloc.dart';
import 'field/activity_type.dart';
import 'field/item.dart';

final class AddActivityForm extends StatelessWidget {
  const AddActivityForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddActivityBloc, AddActivityState>(
      listener: (context, state) {
        state.maybeMap(
          success: (value) {
            context.read<ActivitiesBloc>().add(ActivitiesEvent.activityAdded(
              value.activity,
            ));
            context.read<AddActivityBloc>().add(AddActivityEvent.reset());
          },
          orElse: () {},
        );
      },
      child: Row(
        spacing: 16,
        children: [
          // TimePickerButton(),
          Expanded(child: ItemSelection()),
          Expanded(child: ActivityTypeSelection()),
          BlocBuilder<AddActivityBloc, AddActivityState>(
            builder: (context, state) {
              return IconButton(
                onPressed: state.maybeWhen(
                    filling: (selectedType, selectedItem) {
                      return selectedType != null && selectedItem != null
                          ? () => _addActivity(context)
                          : null;
                    },
                    orElse: () => null,
                ),
                icon: CustomIcon.startActivity(),
              );
            },
          )
        ],
      ),
    );
  }

  _addActivity(BuildContext context) {
    Navigator.of(context).pop();
    context.read<AddActivityBloc>()
        .add(AddActivityEvent.submitted());
  }
}