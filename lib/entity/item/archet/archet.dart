import 'package:freezed_annotation/freezed_annotation.dart';

import '../item.dart';

part 'archet.freezed.dart';

@freezed
abstract class Archet extends Item with _$Archet {
  Archet._({required super.id, super.notes});

  factory Archet({
    required String id,
    String? notes,
  }) = _Archet;

  @override
  String toString() => 'Archet ${super.toString()}';
}