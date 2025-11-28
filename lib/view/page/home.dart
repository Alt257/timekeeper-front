import 'package:flutter/material.dart';
import 'package:timekeeper/view/component/button/datetime/date_picker.dart';
import 'package:timekeeper/view/component/form/add_activity/add_activity.dart';
import 'package:timekeeper/view/component/list/activities/activities_list.dart';

final class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            // title: Text(DateTime.now().toDay()),
            title: DatePickerButton(),
            backgroundColor: Colors.lightBlue,
            foregroundColor: Colors.white,
            centerTitle: true),

        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ActivitiesList(),
        ),

        floatingActionButton: FloatingActionButton(
          foregroundColor: Colors.white,
          backgroundColor: Colors.lightBlue,
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => const Dialog(
                insetPadding: EdgeInsets.all(20),
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: AddActivityForm(),
                ),
              ),
            );
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}