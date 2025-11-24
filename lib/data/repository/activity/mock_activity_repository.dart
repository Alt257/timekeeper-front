import 'package:timekeeper/data/repository/activity/i_activity_repository.dart';
import 'package:timekeeper/entity/activity/activity.dart';
import 'package:timekeeper/entity/item/archet/archet.dart';
import 'package:timekeeper/entity/item/violon/violon.dart';

class MockActivityRepository implements IActivityRepository {
  static final time = DateTime.now().subtract(Duration(
      hours: 4,
  ));

  static List<Activity> activities = [
    Activity(
      startedAt: time,
      finishedAt: time.add(Duration(minutes: 20)),
      type: ActivityType(label: 'test activity 1'),
      item: Archet(id: 'A1'),
    ),
    Activity(
      startedAt: time.add(Duration(minutes: 20)),
      finishedAt: time.add(Duration(minutes: 45)),
      type: ActivityType(label: 'test activity 2'),
      item: Archet(id: 'A1'),
    ),
    Activity(
      startedAt: time.add(Duration(minutes: 45)),
      finishedAt: time.add(Duration(minutes: 60)),
      type: ActivityType(label: 'test activity 3'),
      item: Violon(id: 'V1'),
    ),
    Activity(
      startedAt: time.add(Duration(minutes: 60)),
      finishedAt: time.add(Duration(minutes: 95)),
      type: ActivityType(label: 'test activity 1'),
      item: Archet(id: 'A2'),
    ),
    Activity(
      startedAt: time.add(Duration(minutes: 95)),
      type: ActivityType(label: 'test activity 2'),
      item: Archet(id: 'A2'),
    ),
  ];

  @override
  Future<Activity> find(String id) async {
    return activities.firstWhere((element) => element.id == id);
  }

  @override
  Future<List<Activity>> findAll() async {
    return activities;
  }
}