import 'package:freezed_annotation/freezed_annotation.dart';

import '../item.dart';

part 'violon.freezed.dart';

@freezed
abstract class Violon extends Item with _$Violon{
  Violon._({required super.id, super.notes});

  factory Violon({
    required String id,
    String? notes,
  }) = _Violon;

  @override
  String toString() => 'Violon ${super.toString()}';
}