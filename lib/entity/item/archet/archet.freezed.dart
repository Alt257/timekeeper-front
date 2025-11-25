// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'archet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Archet {

 String get id; String? get notes;
/// Create a copy of Archet
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArchetCopyWith<Archet> get copyWith => _$ArchetCopyWithImpl<Archet>(this as Archet, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Archet&&(identical(other.id, id) || other.id == id)&&(identical(other.notes, notes) || other.notes == notes));
}


@override
int get hashCode => Object.hash(runtimeType,id,notes);



}

/// @nodoc
abstract mixin class $ArchetCopyWith<$Res>  {
  factory $ArchetCopyWith(Archet value, $Res Function(Archet) _then) = _$ArchetCopyWithImpl;
@useResult
$Res call({
 String id, String? notes
});




}
/// @nodoc
class _$ArchetCopyWithImpl<$Res>
    implements $ArchetCopyWith<$Res> {
  _$ArchetCopyWithImpl(this._self, this._then);

  final Archet _self;
  final $Res Function(Archet) _then;

/// Create a copy of Archet
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? notes = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Archet].
extension ArchetPatterns on Archet {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Archet value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Archet() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Archet value)  $default,){
final _that = this;
switch (_that) {
case _Archet():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Archet value)?  $default,){
final _that = this;
switch (_that) {
case _Archet() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Archet() when $default != null:
return $default(_that.id,_that.notes);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _Archet():
return $default(_that.id,_that.notes);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _Archet() when $default != null:
return $default(_that.id,_that.notes);case _:
  return null;

}
}

}

/// @nodoc


class _Archet extends Archet {
   _Archet({required final  String id, final  String? notes}): super._(id: id, notes: notes);
  



/// Create a copy of Archet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArchetCopyWith<_Archet> get copyWith => __$ArchetCopyWithImpl<_Archet>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Archet&&(identical(other.id, id) || other.id == id)&&(identical(other.notes, notes) || other.notes == notes));
}


@override
int get hashCode => Object.hash(runtimeType,id,notes);



}

/// @nodoc
abstract mixin class _$ArchetCopyWith<$Res> implements $ArchetCopyWith<$Res> {
  factory _$ArchetCopyWith(_Archet value, $Res Function(_Archet) _then) = __$ArchetCopyWithImpl;
@override @useResult
$Res call({
 String id, String? notes
});




}
/// @nodoc
class __$ArchetCopyWithImpl<$Res>
    implements _$ArchetCopyWith<$Res> {
  __$ArchetCopyWithImpl(this._self, this._then);

  final _Archet _self;
  final $Res Function(_Archet) _then;

/// Create a copy of Archet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? notes = freezed,}) {
  return _then(_Archet(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
