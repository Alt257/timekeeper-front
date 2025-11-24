import 'package:uuid/uuid.dart';

import '../item/item.dart';

class Activity {
  late final String _id;
  late final ActivityType _type;
  late final DateTime _startedAt;
  late final DateTime? _finishedAt;
  late final Duration? _maximumPaidDuration;
  late final Item _item;
  late final String? _notes;

  String get id => _id;
  ActivityType get type => _type;
  DateTime get startedAt => _startedAt;
  DateTime? get finishedAt => _finishedAt;
  bool get isFinished => _finishedAt != null;
  bool get isInProgress => !isFinished;
  Duration? get maximumPaidDuration => _maximumPaidDuration;
  Item get item => _item;
  String? get notes => _notes;


  set id(String? value) {
    _id = id ?? Uuid().v8();
  }

  set type(ActivityType value) {
    _type = value;
  }

  set startedAt(DateTime value) {
    _startedAt = value;
  }

  set finishedAt(DateTime? value) {
    _finishedAt = value;
    if(finishedAt == null) return;
    if(finishedAt!.isBefore(startedAt)) throw ActivityFinishedAtException(this);
    if(finishedAt!.isAtSameMomentAs(startedAt)) throw ActivityFinishedAtException(this);
  }

  set maximumPaidDuration(Duration? value) {
    _maximumPaidDuration = value;
  }

  set item(Item value) {
    value.activities.add(this);
    _item = value;
  }

  set notes(String? value) {
    _notes = value;
  }


  Activity({
    String? id,
    required ActivityType type,
    required DateTime startedAt,
    DateTime? finishedAt,
    Duration? maximumPaidDuration,
    required Item item,
    String? notes,
  }) {
    this.id = id;
    this.type = type;
    this.startedAt = startedAt;
    this.finishedAt = finishedAt;
    this.maximumPaidDuration = maximumPaidDuration;
    this.item = item;
    this.notes = notes;
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