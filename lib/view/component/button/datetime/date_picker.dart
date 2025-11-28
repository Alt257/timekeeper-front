import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timekeeper/service/date/date_bloc.dart';
import 'package:timekeeper/utils/datetime_format.dart';

final class DatePickerButton extends StatelessWidget {
  const DatePickerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DateBloc, DateState>(
      builder: (context, state) {
        return state.when(

            initial: () => Text(DateTime.now().MMMMEEEEd),

            ready: (date) => OutlinedButton(
              style: ButtonStyle(
                foregroundColor: WidgetStateProperty.all(Colors.white),
              ),
              onPressed: () async {
                final dateBloc = context.read<DateBloc>();
                final selected = await showDatePicker(
                  context: context,
                  initialDate: date,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2050),
                  currentDate: DateTime.now(),
                );
                dateBloc.add(DateEvent.dateSelected(selected!));
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 6,
                children: [
                  Icon(Icons.calendar_today),
                  Text(date.MMMMEEEEdy),
                ],
              ),
            ),

        );
      },
    );
  }
}