import 'item.dart';

final class Violon extends Item {
  Violon({required super.id, super.note});

  @override
  String toString() => 'Violon ${super.toString()}';
}