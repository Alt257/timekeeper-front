import 'package:flutter/material.dart';

final class TimePickerButton extends StatefulWidget {
  const TimePickerButton({super.key});

  @override
  State<TimePickerButton> createState() => _TimePickerButtonState();
}

class _TimePickerButtonState extends State<TimePickerButton> {
  TimeOfDay time = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        showTimePicker(context: context, initialTime: TimeOfDay.now());
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        spacing: 6,
        children: [
          Icon(Icons.access_time_outlined),
          Text('heure'),
        ],
      ),
    );
  }
}