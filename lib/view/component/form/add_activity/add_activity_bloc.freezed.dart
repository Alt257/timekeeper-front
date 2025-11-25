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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _ActivityTypeChanged value)?  typeChanged,TResult Function( _ItemChanged value)?  itemChanged,TResult Function( _Submitted value)?  submitted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _ActivityTypeChanged() when typeChanged != null:
return typeChanged(_that);case _ItemChanged() when itemChanged != null:
return itemChanged(_that);case _Submitted() when submitted != null:
return submitted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _ActivityTypeChanged value)  typeChanged,required TResult Function( _ItemChanged value)  itemChanged,required TResult Function( _Submitted value)  submitted,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _ActivityTypeChanged():
return typeChanged(_that);case _ItemChanged():
return itemChanged(_that);case _Submitted():
return submitted(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _ActivityTypeChanged value)?  typeChanged,TResult? Function( _ItemChanged value)?  itemChanged,TResult? Function( _Submitted value)?  submitted,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _ActivityTypeChanged() when typeChanged != null:
return typeChanged(_that);case _ItemChanged() when itemChanged != null:
return itemChanged(_that);case _Submitted() when submitted != null:
return submitted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( ActivityType activityType)?  typeChanged,TResult Function( Item item)?  itemChanged,TResult Function()?  submitted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _ActivityTypeChanged() when typeChanged != null:
return typeChanged(_that.activityType);case _ItemChanged() when itemChanged != null:
return itemChanged(_that.item);case _Submitted() when submitted != null:
return submitted();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( ActivityType activityType)  typeChanged,required TResult Function( Item item)  itemChanged,required TResult Function()  submitted,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _ActivityTypeChanged():
return typeChanged(_that.activityType);case _ItemChanged():
return itemChanged(_that.item);case _Submitted():
return submitted();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( ActivityType activityType)?  typeChanged,TResult? Function( Item item)?  itemChanged,TResult? Function()?  submitted,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _ActivityTypeChanged() when typeChanged != null:
return typeChanged(_that.activityType);case _ItemChanged() when itemChanged != null:
return itemChanged(_that.item);case _Submitted() when submitted != null:
return submitted();case _:
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
  return 'AddActivityEvent.typeChanged(activityType: $activityType)';
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


class _ItemChanged implements AddActivityEvent {
  const _ItemChanged(this.item);
  

 final  Item item;

/// Create a copy of AddActivityEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemChangedCopyWith<_ItemChanged> get copyWith => __$ItemChangedCopyWithImpl<_ItemChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemChanged&&(identical(other.item, item) || other.item == item));
}


@override
int get hashCode => Object.hash(runtimeType,item);

@override
String toString() {
  return 'AddActivityEvent.itemChanged(item: $item)';
}


}

/// @nodoc
abstract mixin class _$ItemChangedCopyWith<$Res> implements $AddActivityEventCopyWith<$Res> {
  factory _$ItemChangedCopyWith(_ItemChanged value, $Res Function(_ItemChanged) _then) = __$ItemChangedCopyWithImpl;
@useResult
$Res call({
 Item item
});




}
/// @nodoc
class __$ItemChangedCopyWithImpl<$Res>
    implements _$ItemChangedCopyWith<$Res> {
  __$ItemChangedCopyWithImpl(this._self, this._then);

  final _ItemChanged _self;
  final $Res Function(_ItemChanged) _then;

/// Create a copy of AddActivityEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? item = null,}) {
  return _then(_ItemChanged(
null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as Item,
  ));
}


}

/// @nodoc


class _Submitted implements AddActivityEvent {
  const _Submitted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Submitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddActivityEvent.submitted()';
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Filling value)?  filling,TResult Function( _Submitting value)?  submitting,TResult Function( _Success value)?  success,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Filling() when filling != null:
return filling(_that);case _Submitting() when submitting != null:
return submitting(_that);case _Success() when success != null:
return success(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Filling value)  filling,required TResult Function( _Submitting value)  submitting,required TResult Function( _Success value)  success,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Filling():
return filling(_that);case _Submitting():
return submitting(_that);case _Success():
return success(_that);case _Failure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Filling value)?  filling,TResult? Function( _Submitting value)?  submitting,TResult? Function( _Success value)?  success,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Filling() when filling != null:
return filling(_that);case _Submitting() when submitting != null:
return submitting(_that);case _Success() when success != null:
return success(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( ActivityType? selectedType,  Item? selectedItem)?  filling,TResult Function()?  submitting,TResult Function( Activity activity)?  success,TResult Function( String errorMessage)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Filling() when filling != null:
return filling(_that.selectedType,_that.selectedItem);case _Submitting() when submitting != null:
return submitting();case _Success() when success != null:
return success(_that.activity);case _Failure() when failure != null:
return failure(_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( ActivityType? selectedType,  Item? selectedItem)  filling,required TResult Function()  submitting,required TResult Function( Activity activity)  success,required TResult Function( String errorMessage)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Filling():
return filling(_that.selectedType,_that.selectedItem);case _Submitting():
return submitting();case _Success():
return success(_that.activity);case _Failure():
return failure(_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( ActivityType? selectedType,  Item? selectedItem)?  filling,TResult? Function()?  submitting,TResult? Function( Activity activity)?  success,TResult? Function( String errorMessage)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Filling() when filling != null:
return filling(_that.selectedType,_that.selectedItem);case _Submitting() when submitting != null:
return submitting();case _Success() when success != null:
return success(_that.activity);case _Failure() when failure != null:
return failure(_that.errorMessage);case _:
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


class _Filling implements AddActivityState {
  const _Filling({this.selectedType, this.selectedItem});
  

 final  ActivityType? selectedType;
 final  Item? selectedItem;

/// Create a copy of AddActivityState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FillingCopyWith<_Filling> get copyWith => __$FillingCopyWithImpl<_Filling>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Filling&&(identical(other.selectedType, selectedType) || other.selectedType == selectedType)&&(identical(other.selectedItem, selectedItem) || other.selectedItem == selectedItem));
}


@override
int get hashCode => Object.hash(runtimeType,selectedType,selectedItem);

@override
String toString() {
  return 'AddActivityState.filling(selectedType: $selectedType, selectedItem: $selectedItem)';
}


}

/// @nodoc
abstract mixin class _$FillingCopyWith<$Res> implements $AddActivityStateCopyWith<$Res> {
  factory _$FillingCopyWith(_Filling value, $Res Function(_Filling) _then) = __$FillingCopyWithImpl;
@useResult
$Res call({
 ActivityType? selectedType, Item? selectedItem
});


$ActivityTypeCopyWith<$Res>? get selectedType;

}
/// @nodoc
class __$FillingCopyWithImpl<$Res>
    implements _$FillingCopyWith<$Res> {
  __$FillingCopyWithImpl(this._self, this._then);

  final _Filling _self;
  final $Res Function(_Filling) _then;

/// Create a copy of AddActivityState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedType = freezed,Object? selectedItem = freezed,}) {
  return _then(_Filling(
selectedType: freezed == selectedType ? _self.selectedType : selectedType // ignore: cast_nullable_to_non_nullable
as ActivityType?,selectedItem: freezed == selectedItem ? _self.selectedItem : selectedItem // ignore: cast_nullable_to_non_nullable
as Item?,
  ));
}

/// Create a copy of AddActivityState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActivityTypeCopyWith<$Res>? get selectedType {
    if (_self.selectedType == null) {
    return null;
  }

  return $ActivityTypeCopyWith<$Res>(_self.selectedType!, (value) {
    return _then(_self.copyWith(selectedType: value));
  });
}
}

/// @nodoc


class _Submitting implements AddActivityState {
  const _Submitting();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Submitting);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddActivityState.submitting()';
}


}




/// @nodoc


class _Success implements AddActivityState {
  const _Success(this.activity);
  

 final  Activity activity;

/// Create a copy of AddActivityState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&(identical(other.activity, activity) || other.activity == activity));
}


@override
int get hashCode => Object.hash(runtimeType,activity);

@override
String toString() {
  return 'AddActivityState.success(activity: $activity)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $AddActivityStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 Activity activity
});


$ActivityCopyWith<$Res> get activity;

}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of AddActivityState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? activity = null,}) {
  return _then(_Success(
null == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as Activity,
  ));
}

/// Create a copy of AddActivityState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActivityCopyWith<$Res> get activity {
  
  return $ActivityCopyWith<$Res>(_self.activity, (value) {
    return _then(_self.copyWith(activity: value));
  });
}
}

/// @nodoc


class _Failure implements AddActivityState {
  const _Failure(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of AddActivityState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'AddActivityState.failure(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $AddActivityStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) = __$FailureCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

/// Create a copy of AddActivityState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(_Failure(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
