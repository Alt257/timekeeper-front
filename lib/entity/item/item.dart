import 'package:timekeeper/entity/activity/activity.dart';

abstract class Item {
  final String id;
  String? note;
  List<Activity> activities;

  Item({required this.id, this.note}): activities = <Activity>[];

  @override
  String toString() => '#$id';
}