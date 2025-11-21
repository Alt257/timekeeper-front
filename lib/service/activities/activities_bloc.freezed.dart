// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activities_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ActivitiesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivitiesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ActivitiesEvent()';
}


}

/// @nodoc
class $ActivitiesEventCopyWith<$Res>  {
$ActivitiesEventCopyWith(ActivitiesEvent _, $Res Function(ActivitiesEvent) __);
}


/// Adds pattern-matching-related methods to [ActivitiesEvent].
extension ActivitiesEventPatterns on ActivitiesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _ActivityAdded value)?  activityAdded,TResult Function( _ActivityRemoved value)?  activityRemoved,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _ActivityAdded() when activityAdded != null:
return activityAdded(_that);case _ActivityRemoved() when activityRemoved != null:
return activityRemoved(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _ActivityAdded value)  activityAdded,required TResult Function( _ActivityRemoved value)  activityRemoved,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _ActivityAdded():
return activityAdded(_that);case _ActivityRemoved():
return activityRemoved(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _ActivityAdded value)?  activityAdded,TResult? Function( _ActivityRemoved value)?  activityRemoved,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _ActivityAdded() when activityAdded != null:
return activityAdded(_that);case _ActivityRemoved() when activityRemoved != null:
return activityRemoved(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( Activity activity)?  activityAdded,TResult Function( Activity activity)?  activityRemoved,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _ActivityAdded() when activityAdded != null:
return activityAdded(_that.activity);case _ActivityRemoved() when activityRemoved != null:
return activityRemoved(_that.activity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( Activity activity)  activityAdded,required TResult Function( Activity activity)  activityRemoved,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _ActivityAdded():
return activityAdded(_that.activity);case _ActivityRemoved():
return activityRemoved(_that.activity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( Activity activity)?  activityAdded,TResult? Function( Activity activity)?  activityRemoved,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _ActivityAdded() when activityAdded != null:
return activityAdded(_that.activity);case _ActivityRemoved() when activityRemoved != null:
return activityRemoved(_that.activity);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements ActivitiesEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ActivitiesEvent.started()';
}


}




/// @nodoc


class _ActivityAdded implements ActivitiesEvent {
  const _ActivityAdded(this.activity);
  

 final  Activity activity;

/// Create a copy of ActivitiesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityAddedCopyWith<_ActivityAdded> get copyWith => __$ActivityAddedCopyWithImpl<_ActivityAdded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivityAdded&&(identical(other.activity, activity) || other.activity == activity));
}


@override
int get hashCode => Object.hash(runtimeType,activity);

@override
String toString() {
  return 'ActivitiesEvent.activityAdded(activity: $activity)';
}


}

/// @nodoc
abstract mixin class _$ActivityAddedCopyWith<$Res> implements $ActivitiesEventCopyWith<$Res> {
  factory _$ActivityAddedCopyWith(_ActivityAdded value, $Res Function(_ActivityAdded) _then) = __$ActivityAddedCopyWithImpl;
@useResult
$Res call({
 Activity activity
});




}
/// @nodoc
class __$ActivityAddedCopyWithImpl<$Res>
    implements _$ActivityAddedCopyWith<$Res> {
  __$ActivityAddedCopyWithImpl(this._self, this._then);

  final _ActivityAdded _self;
  final $Res Function(_ActivityAdded) _then;

/// Create a copy of ActivitiesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? activity = null,}) {
  return _then(_ActivityAdded(
null == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as Activity,
  ));
}


}

/// @nodoc


class _ActivityRemoved implements ActivitiesEvent {
  const _ActivityRemoved(this.activity);
  

 final  Activity activity;

/// Create a copy of ActivitiesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityRemovedCopyWith<_ActivityRemoved> get copyWith => __$ActivityRemovedCopyWithImpl<_ActivityRemoved>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivityRemoved&&(identical(other.activity, activity) || other.activity == activity));
}


@override
int get hashCode => Object.hash(runtimeType,activity);

@override
String toString() {
  return 'ActivitiesEvent.activityRemoved(activity: $activity)';
}


}

/// @nodoc
abstract mixin class _$ActivityRemovedCopyWith<$Res> implements $ActivitiesEventCopyWith<$Res> {
  factory _$ActivityRemovedCopyWith(_ActivityRemoved value, $Res Function(_ActivityRemoved) _then) = __$ActivityRemovedCopyWithImpl;
@useResult
$Res call({
 Activity activity
});




}
/// @nodoc
class __$ActivityRemovedCopyWithImpl<$Res>
    implements _$ActivityRemovedCopyWith<$Res> {
  __$ActivityRemovedCopyWithImpl(this._self, this._then);

  final _ActivityRemoved _self;
  final $Res Function(_ActivityRemoved) _then;

/// Create a copy of ActivitiesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? activity = null,}) {
  return _then(_ActivityRemoved(
null == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as Activity,
  ));
}


}

/// @nodoc
mixin _$ActivitiesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivitiesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ActivitiesState()';
}


}

/// @nodoc
class $ActivitiesStateCopyWith<$Res>  {
$ActivitiesStateCopyWith(ActivitiesState _, $Res Function(ActivitiesState) __);
}


/// Adds pattern-matching-related methods to [ActivitiesState].
extension ActivitiesStatePatterns on ActivitiesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Ready value)?  ready,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Ready() when ready != null:
return ready(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Ready value)  ready,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Ready():
return ready(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Ready value)?  ready,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Ready() when ready != null:
return ready(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( List<Activity> activities)?  ready,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Ready() when ready != null:
return ready(_that.activities);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( List<Activity> activities)  ready,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Ready():
return ready(_that.activities);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( List<Activity> activities)?  ready,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Ready() when ready != null:
return ready(_that.activities);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ActivitiesState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ActivitiesState.initial()';
}


}




/// @nodoc


class _Ready implements ActivitiesState {
  const _Ready(final  List<Activity> activities): _activities = activities;
  

 final  List<Activity> _activities;
 List<Activity> get activities {
  if (_activities is EqualUnmodifiableListView) return _activities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_activities);
}


/// Create a copy of ActivitiesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReadyCopyWith<_Ready> get copyWith => __$ReadyCopyWithImpl<_Ready>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ready&&const DeepCollectionEquality().equals(other._activities, _activities));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_activities));

@override
String toString() {
  return 'ActivitiesState.ready(activities: $activities)';
}


}

/// @nodoc
abstract mixin class _$ReadyCopyWith<$Res> implements $ActivitiesStateCopyWith<$Res> {
  factory _$ReadyCopyWith(_Ready value, $Res Function(_Ready) _then) = __$ReadyCopyWithImpl;
@useResult
$Res call({
 List<Activity> activities
});




}
/// @nodoc
class __$ReadyCopyWithImpl<$Res>
    implements _$ReadyCopyWith<$Res> {
  __$ReadyCopyWithImpl(this._self, this._then);

  final _Ready _self;
  final $Res Function(_Ready) _then;

/// Create a copy of ActivitiesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? activities = null,}) {
  return _then(_Ready(
null == activities ? _self._activities : activities // ignore: cast_nullable_to_non_nullable
as List<Activity>,
  ));
}


}

// dart format on
