import 'package:flutter_test/flutter_test.dart';
import 'package:timekeeper/entity/activity/activity.dart';
import 'package:timekeeper/entity/item/violon/violon.dart';

void main() {

  test('new activity must register in item.activities', () {
    final violon = Violon(
      id: 'V1',
    );
    final nettoyage = Activity(
      startedAt: DateTime.now(),
      // finishedAt: DateTime.now().add(Duration(minutes: 30)),
      maximumPaidDuration: Duration(minutes: 30),
      type: ActivityType(label: 'nettoyage'),
      item: violon,
      notes: null,
    );

    expect(violon.activities, contains(nettoyage));
  });


  group('finishedAt must be strictly after startedAt', () {

    test('finishedAt after startedAt isTrue', () {
      final violon = Violon(
        id: 'V1',
      );
      final nettoyage = Activity(
        startedAt: DateTime.now(),
        finishedAt: DateTime.now().add(Duration(minutes: 30)),
        maximumPaidDuration: Duration(minutes: 30),
        type: ActivityType(label: 'nettoyage'),
        item: violon,
        notes: null,
      );
      expect(nettoyage.finishedAt?.isAfter(nettoyage.startedAt), isTrue);
    });

    test('finishedAt before startedAt throws Exception', () {
      final violon = Violon(
        id: 'V1',
      );
      expect(() => Activity(
        startedAt: DateTime.now(),
        finishedAt: DateTime.now().subtract(Duration(minutes: 30)),
        maximumPaidDuration: Duration(minutes: 30),
        type: ActivityType(label: 'nettoyage'),
        item: violon,
        notes: null,
      ), throwsA(isA<ActivityFinishedAtException>()));
    });
  });
}