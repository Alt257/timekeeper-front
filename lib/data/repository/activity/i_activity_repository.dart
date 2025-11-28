import 'package:timekeeper/entity/activity/activity.dart';

abstract interface class IActivityRepository {

  Future<List<Activity>> findAll();
  Future<Activity> find(String id);
  Future<List<Activity>> findByDate(DateTime date);
  Future<Activity> save(Activity activity);
  Future<void> delete(Activity activity);
}
