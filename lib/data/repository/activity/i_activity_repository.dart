import 'package:timekeeper/entity/activity/activity.dart';

abstract interface class IActivityRepository {

  Future<List<Activity>> findAll();
  Future<Activity> find(String id);
}