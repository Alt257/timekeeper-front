import 'package:uuid/uuid.dart';

import '../item/item.dart';

class Activity {
  late final String id;
  ActivityType type;
  DateTime startedAt;
  DateTime? finishedAt;
  Duration? maximumPaidDuration;
  Item item;
  String? notes;

  bool get isFinished => finishedAt != null;
  bool get isInProgress => !isFinished;

  Activity({
    String? id,
    required this.type,
    required this.startedAt,
    this.finishedAt,
    this.maximumPaidDuration,
    required this.item,
    this.notes,
  }) {
    this.id = id ?? Uuid().v8();
    item.activities.add(this);
    if(finishedAt == null) return;
    if(finishedAt!.isBefore(startedAt)) throw ActivityFinishedAtException(this);
    if(finishedAt!.isAtSameMomentAs(startedAt)) throw ActivityFinishedAtException(this);
  }

  @override
  bool operator ==(Object other) {
    if(identical(this, other)) return true;
    if(runtimeType != other.runtimeType) return false;
    return other is Activity
        && id == other.id
        && type == other.type
        && startedAt == other.startedAt
        && finishedAt == other.finishedAt
        && maximumPaidDuration == other.maximumPaidDuration
        && item == other.item
        && notes == other.notes;
  }

  @override
  int get hashCode => Object.hash(id, type, startedAt, finishedAt, maximumPaidDuration, item, notes);

  @override
  String toString() => '($id)'
      ' ${type.label} de $item'
      ' | début: $startedAt'
      ' | fin: $finishedAt';
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

  @override
  String toString() => message;
}