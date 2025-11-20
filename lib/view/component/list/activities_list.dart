import 'package:flutter/material.dart';
import 'package:timekeeper/entity/activity.dart';
import 'package:timekeeper/entity/archet.dart';
import 'package:timekeeper/entity/violon.dart';

final class ActivitiesList extends StatelessWidget {
  const ActivitiesList({super.key});

  static List<Activity> activities = [
    Activity(
      startedAt: DateTime.now(),
      type: ActivityType(label: 'test activity 1'),
      item: Archet(id: 'A1'),
    ),
    Activity(
      startedAt: DateTime.now(),
      type: ActivityType(label: 'test activity 2'),
      item: Archet(id: 'A1'),
    ),
    Activity(
      startedAt: DateTime.now(),
      type: ActivityType(label: 'test activity 3'),
      item: Violon(id: 'V1'),
    ),
    Activity(
      startedAt: DateTime.now(),
      type: ActivityType(label: 'test activity 1'),
      item: Archet(id: 'A2'),
    ),
    Activity(
      startedAt: DateTime.now(),
      type: ActivityType(label: 'test activity 2'),
      item: Archet(id: 'A2'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => ListTile(
        title: Text(activities.elementAt(index).type.label),
        subtitle: Text(activities.elementAt(index).item.toString()),
      ),
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      itemCount: activities.length,
    );
  }
}