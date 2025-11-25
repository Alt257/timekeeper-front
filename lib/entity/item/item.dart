import 'package:timekeeper/entity/activity/activity.dart';

abstract class Item {
  final String id;
  final String? notes;
  final List<Activity> activities;

  Item({required this.id, this.notes}): activities = <Activity>[];

  get copyWith;

  @override
  String toString() => '#$id';
}