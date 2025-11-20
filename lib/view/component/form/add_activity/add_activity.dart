import 'package:flutter/material.dart';
import 'package:timekeeper/view/component/button/time_picker/time_picker.dart';

import 'field/activity_type.dart';

final class AddActivityForm extends StatelessWidget {
  const AddActivityForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      children: [
        TimePickerButton(),
        Expanded(
          child: ActivityTypeSelection(),
        ),
        IconButton(
          onPressed: () => (),
          icon: Icon(Icons.add),
        )
      ],
    );
  }


}