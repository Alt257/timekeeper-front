// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_activity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddActivityEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddActivityEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddActivityEvent()';
}


}

/// @nodoc
class $AddActivityEventCopyWith<$Res>  {
$AddActivityEventCopyWith(AddActivityEvent _, $Res Function(AddActivityEvent) __);
}


/// Adds pattern-matching-related methods to [AddActivityEvent].
extension AddActivityEventPatterns on AddActivityEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _ActivityTypeChanged value)?  activityTypeChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _ActivityTypeChanged() when activityTypeChanged != null:
return activityTypeChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _ActivityTypeChanged value)  activityTypeChanged,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _ActivityTypeChanged():
return activityTypeChanged(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _ActivityTypeChanged value)?  activityTypeChanged,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _ActivityTypeChanged() when activityTypeChanged != null:
return activityTypeChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( ActivityType activityType)?  activityTypeChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _ActivityTypeChanged() when activityTypeChanged != null:
return activityTypeChanged(_that.activityType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( ActivityType activityType)  activityTypeChanged,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _ActivityTypeChanged():
return activityTypeChanged(_that.activityType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( ActivityType activityType)?  activityTypeChanged,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _ActivityTypeChanged() when activityTypeChanged != null:
return activityTypeChanged(_that.activityType);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements AddActivityEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddActivityEvent.started()';
}


}




/// @nodoc


class _ActivityTypeChanged implements AddActivityEvent {
  const _ActivityTypeChanged(this.activityType);
  

 final  ActivityType activityType;

/// Create a copy of AddActivityEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityTypeChangedCopyWith<_ActivityTypeChanged> get copyWith => __$ActivityTypeChangedCopyWithImpl<_ActivityTypeChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivityTypeChanged&&(identical(other.activityType, activityType) || other.activityType == activityType));
}


@override
int get hashCode => Object.hash(runtimeType,activityType);

@override
String toString() {
  return 'AddActivityEvent.activityTypeChanged(activityType: $activityType)';
}


}

/// @nodoc
abstract mixin class _$ActivityTypeChangedCopyWith<$Res> implements $AddActivityEventCopyWith<$Res> {
  factory _$ActivityTypeChangedCopyWith(_ActivityTypeChanged value, $Res Function(_ActivityTypeChanged) _then) = __$ActivityTypeChangedCopyWithImpl;
@useResult
$Res call({
 ActivityType activityType
});


$ActivityTypeCopyWith<$Res> get activityType;

}
/// @nodoc
class __$ActivityTypeChangedCopyWithImpl<$Res>
    implements _$ActivityTypeChangedCopyWith<$Res> {
  __$ActivityTypeChangedCopyWithImpl(this._self, this._then);

  final _ActivityTypeChanged _self;
  final $Res Function(_ActivityTypeChanged) _then;

/// Create a copy of AddActivityEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? activityType = null,}) {
  return _then(_ActivityTypeChanged(
null == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as ActivityType,
  ));
}

/// Create a copy of AddActivityEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActivityTypeCopyWith<$Res> get activityType {
  
  return $ActivityTypeCopyWith<$Res>(_self.activityType, (value) {
    return _then(_self.copyWith(activityType: value));
  });
}
}

/// @nodoc
mixin _$AddActivityState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddActivityState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddActivityState()';
}


}

/// @nodoc
class $AddActivityStateCopyWith<$Res>  {
$AddActivityStateCopyWith(AddActivityState _, $Res Function(AddActivityState) __);
}


/// Adds pattern-matching-related methods to [AddActivityState].
extension AddActivityStatePatterns on AddActivityState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Complete value)?  complete,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Complete() when complete != null:
return complete(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Complete value)  complete,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Complete():
return complete(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Complete value)?  complete,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Complete() when complete != null:
return complete(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( ActivityType activityType)?  complete,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Complete() when complete != null:
return complete(_that.activityType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( ActivityType activityType)  complete,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Complete():
return complete(_that.activityType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( ActivityType activityType)?  complete,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Complete() when complete != null:
return complete(_that.activityType);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AddActivityState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddActivityState.initial()';
}


}




/// @nodoc


class _Complete implements AddActivityState {
  const _Complete(this.activityType);
  

 final  ActivityType activityType;

/// Create a copy of AddActivityState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompleteCopyWith<_Complete> get copyWith => __$CompleteCopyWithImpl<_Complete>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Complete&&(identical(other.activityType, activityType) || other.activityType == activityType));
}


@override
int get hashCode => Object.hash(runtimeType,activityType);

@override
String toString() {
  return 'AddActivityState.complete(activityType: $activityType)';
}


}

/// @nodoc
abstract mixin class _$CompleteCopyWith<$Res> implements $AddActivityStateCopyWith<$Res> {
  factory _$CompleteCopyWith(_Complete value, $Res Function(_Complete) _then) = __$CompleteCopyWithImpl;
@useResult
$Res call({
 ActivityType activityType
});


$ActivityTypeCopyWith<$Res> get activityType;

}
/// @nodoc
class __$CompleteCopyWithImpl<$Res>
    implements _$CompleteCopyWith<$Res> {
  __$CompleteCopyWithImpl(this._self, this._then);

  final _Complete _self;
  final $Res Function(_Complete) _then;

/// Create a copy of AddActivityState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? activityType = null,}) {
  return _then(_Complete(
null == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as ActivityType,
  ));
}

/// Create a copy of AddActivityState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActivityTypeCopyWith<$Res> get activityType {
  
  return $ActivityTypeCopyWith<$Res>(_self.activityType, (value) {
    return _then(_self.copyWith(activityType: value));
  });
}
}

// dart format on
