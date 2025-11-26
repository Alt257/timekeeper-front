import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timekeeper/entity/activity/activity.dart';
import 'package:timekeeper/service/add_activity/add_activity_bloc.dart';
import 'package:timekeeper/view/component/form/field/search_or_create.dart';

final class ActivityTypeSelection extends StatelessWidget {
  const ActivityTypeSelection({super.key});

  static List<ActivityType> activities = [
    ActivityType(label: 'garniture (metal)'),
    ActivityType(label: 'garniture (cuir)'),
    ActivityType(label: 'remêchage'),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddActivityBloc, AddActivityState>(
      buildWhen: (previous, current) => current.maybeWhen(
        filling: (currentSelectedType, _) => previous.maybeWhen(
          success: (activity) => true,
          filling: (previousSelectedType, _) => currentSelectedType != previousSelectedType,
          orElse: () => false,
        ),
        orElse: () => false,
      ),
      builder: (context, state) {
        return SearchOrCreateField(
          controller: TextEditingController(text: state.maybeWhen(
            filling: (selectedType, selectedItem) => selectedType?.label,
            orElse: () => null,
          )),
          placeholder: 'activité',
          items: activities,
          searchIn: (item) => item.label,
          onSelected: (item) => context.read<AddActivityBloc>()
                  .add(AddActivityEvent.typeChanged(item)),
        );
      },
    );
  }
}