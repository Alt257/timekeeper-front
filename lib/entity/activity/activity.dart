import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import '../item/item.dart';

part 'activity.freezed.dart';

@freezed
abstract class Activity with _$Activity {

  bool get isFinished => finishedAt != null;
  bool get isInProgress => !isFinished;

  Activity._({
    String? id,
    required ActivityType type,
    required DateTime startedAt,
    DateTime? finishedAt,
    Duration? maximumPaidDuration,
    required Item item,
    String? notes,
  }) :
      id = id ?? Uuid().v8(),
      type = type,
      startedAt = startedAt,
      finishedAt = finishedAt,
      maximumPaidDuration = maximumPaidDuration,
      item = item,
      notes = notes {
    item.activities.add(this);
    if(finishedAt?.isBefore(startedAt) ?? false) throw ActivityFinishedAtException(this);
    if(finishedAt?.isAtSameMomentAs(startedAt) ?? false) throw ActivityFinishedAtException(this);
  }


  factory Activity({
    String? id,
    required ActivityType type,
    required DateTime startedAt,
    DateTime? finishedAt,
    Duration? maximumPaidDuration,
    required Item item,
    String? notes,
  }) = _Activity;

  @override final String? id;
  @override final DateTime? finishedAt;
  @override final ActivityType type;
  @override final DateTime startedAt;
  @override final Duration? maximumPaidDuration;
  @override final Item item;
  @override final String? notes;

  @override
  String toString() => '${type.label} pour $item';
}


@freezed
final class ActivityType with _$ActivityType {
  @override final String label;
  ActivityType({required this.label}): assert(label.isNotEmpty);

  @override
  String toString() => label;
}


final class ActivityFinishedAtException implements Exception {
  final String message;
  ActivityFinishedAtException(Activity activity):
        message = 'activity must finish after it started: '
            'startedAt(${activity.startedAt}) finishedAt(${activity.finishedAt})';

  @override
  String toString() => message;
}