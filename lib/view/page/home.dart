import 'package:flutter/material.dart';
import 'package:timekeeper/view/component/form/add_activity/add_activity.dart';
import 'package:timekeeper/view/component/list/activities/activities_list.dart';

final class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(title: Text('COUCOU!!'), centerTitle: true),

        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ActivitiesList(),
        ),

        bottomSheet: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AddActivityForm(),
        ),
      ),
    );
  }
}