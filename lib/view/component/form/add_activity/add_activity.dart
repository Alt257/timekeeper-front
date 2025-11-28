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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 16,
        children: [
          // TimePickerButton(),
          buildItemSelectionField(),
          buildActivityTypeSelectionField(),
          buildStartActivityButton(),
        ],
      ),
    );
  }

  _addActivity(BuildContext context) {
    Navigator.of(context).pop();
    context.read<AddActivityBloc>()
        .add(AddActivityEvent.submitted());
  }

  buildItemSelectionField() => const ItemSelection();

  buildActivityTypeSelectionField() => const ActivityTypeSelection();

  buildStartActivityButton() => BlocBuilder<AddActivityBloc, AddActivityState>(
    builder: (context, state) {
      final formComplete = state.maybeWhen(
        filling: (selectedType, selectedItem) => selectedType != null && selectedItem != null,
        orElse: () => false,
      );
      return IconButton(
        onPressed: formComplete ? () => _addActivity(context) : null,
        icon: CustomIcon.startActivity(
          size: 82,
          color: formComplete ? Colors.green : null,
        ),
      );
    },
  );
}