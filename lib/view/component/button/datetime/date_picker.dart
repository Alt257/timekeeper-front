import 'package:flutter/material.dart';
import 'package:timekeeper/utils/datetime_format.dart';

final class DatePickerButton extends StatefulWidget {
  const DatePickerButton({super.key});

  @override
  State<DatePickerButton> createState() => _DatePickerButtonState();
}

class _DatePickerButtonState extends State<DatePickerButton> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all(Colors.white),
      ),
      onPressed: () async {
        final selected = await showDatePicker(
            context: context,
            initialDate: date,
            firstDate: DateTime(2000),
            lastDate: DateTime(2050),
            currentDate: DateTime.now(),
        );
        setState(() {
          date = selected ?? DateTime.now();
        });
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 6,
        children: [
          Icon(Icons.calendar_today),
          Text(date.MMMMEEEEdy),
        ],
      ),
    );
  }
}