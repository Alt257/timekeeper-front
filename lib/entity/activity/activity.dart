import 'package:freezed_annotation/freezed_annotation.dart';

import '../item/item.dart';

class Activity {
  ActivityType type;
  DateTime startedAt;
  DateTime? finishedAt;
  Duration? maximumPaidDuration;
  Item item;
  String? notes;

  bool get isFinished => finishedAt != null;
  bool get isInProgress => !isFinished;

  @Assert('finishedAt != null && finishedAt.isBefore(startedAt)', 'erreur dans le toaster')
  Activity({
    required this.type,
    required this.startedAt,
    this.finishedAt,
    this.maximumPaidDuration,
    required this.item,
    this.notes,
  }) {
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