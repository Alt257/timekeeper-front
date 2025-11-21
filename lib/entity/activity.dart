import 'item.dart';

final class Activity {
  final ActivityType type;
  final DateTime startedAt;
  final DateTime? finishedAt;
  final Duration? maximumPaidDuration;
  final Item item;
  final String? notes;

  bool get isFinished => finishedAt != null;
  bool get isInProgress => !isFinished;

  Activity({required this.startedAt, this.finishedAt, this.maximumPaidDuration, required this.type, required this.item, this.notes}) {
    item.activities.add(this);
    if(finishedAt == null) return;
    if(finishedAt!.isBefore(startedAt)) throw ActivityFinishedAtException(this);
    if(finishedAt!.isAtSameMomentAs(startedAt)) throw ActivityFinishedAtException(this);
  }
}


final class ActivityType {
  final String label;
  ActivityType({required this.label});
}


final class ActivityFinishedAtException implements Exception {
  final String message;
  ActivityFinishedAtException(Activity activity):
        message = 'activity must finish after it started: '
            'startedAt(${activity.startedAt}) finishedAt(${activity.finishedAt})';
}