// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'incoming_race_message_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IncomingRaceMessageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DateTime timestamp, UiLapUpdate eventData)
        uiLapUpdated,
    required TResult Function(DateTime timestamp, EventChangeStatus eventData)
        eventStatusChanged,
    required TResult Function() eventStart,
    required TResult Function() resetDriversListPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DateTime timestamp, UiLapUpdate eventData)? uiLapUpdated,
    TResult? Function(DateTime timestamp, EventChangeStatus eventData)?
        eventStatusChanged,
    TResult? Function()? eventStart,
    TResult? Function()? resetDriversListPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTime timestamp, UiLapUpdate eventData)? uiLapUpdated,
    TResult Function(DateTime timestamp, EventChangeStatus eventData)?
        eventStatusChanged,
    TResult Function()? eventStart,
    TResult Function()? resetDriversListPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RaceMsgStarted value) started,
    required TResult Function(RaceMsgUiLapUpdated value) uiLapUpdated,
    required TResult Function(RaceMsgEventStatusChanged value)
        eventStatusChanged,
    required TResult Function(RaceMsgEventStart value) eventStart,
    required TResult Function(RaceMsgResetDriversListPressed value)
        resetDriversListPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RaceMsgStarted value)? started,
    TResult? Function(RaceMsgUiLapUpdated value)? uiLapUpdated,
    TResult? Function(RaceMsgEventStatusChanged value)? eventStatusChanged,
    TResult? Function(RaceMsgEventStart value)? eventStart,
    TResult? Function(RaceMsgResetDriversListPressed value)?
        resetDriversListPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RaceMsgStarted value)? started,
    TResult Function(RaceMsgUiLapUpdated value)? uiLapUpdated,
    TResult Function(RaceMsgEventStatusChanged value)? eventStatusChanged,
    TResult Function(RaceMsgEventStart value)? eventStart,
    TResult Function(RaceMsgResetDriversListPressed value)?
        resetDriversListPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomingRaceMessageEventCopyWith<$Res> {
  factory $IncomingRaceMessageEventCopyWith(IncomingRaceMessageEvent value,
          $Res Function(IncomingRaceMessageEvent) then) =
      _$IncomingRaceMessageEventCopyWithImpl<$Res, IncomingRaceMessageEvent>;
}

/// @nodoc
class _$IncomingRaceMessageEventCopyWithImpl<$Res,
        $Val extends IncomingRaceMessageEvent>
    implements $IncomingRaceMessageEventCopyWith<$Res> {
  _$IncomingRaceMessageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RaceMsgStartedImplCopyWith<$Res> {
  factory _$$RaceMsgStartedImplCopyWith(_$RaceMsgStartedImpl value,
          $Res Function(_$RaceMsgStartedImpl) then) =
      __$$RaceMsgStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RaceMsgStartedImplCopyWithImpl<$Res>
    extends _$IncomingRaceMessageEventCopyWithImpl<$Res, _$RaceMsgStartedImpl>
    implements _$$RaceMsgStartedImplCopyWith<$Res> {
  __$$RaceMsgStartedImplCopyWithImpl(
      _$RaceMsgStartedImpl _value, $Res Function(_$RaceMsgStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RaceMsgStartedImpl implements RaceMsgStarted {
  const _$RaceMsgStartedImpl();

  @override
  String toString() {
    return 'IncomingRaceMessageEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RaceMsgStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DateTime timestamp, UiLapUpdate eventData)
        uiLapUpdated,
    required TResult Function(DateTime timestamp, EventChangeStatus eventData)
        eventStatusChanged,
    required TResult Function() eventStart,
    required TResult Function() resetDriversListPressed,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DateTime timestamp, UiLapUpdate eventData)? uiLapUpdated,
    TResult? Function(DateTime timestamp, EventChangeStatus eventData)?
        eventStatusChanged,
    TResult? Function()? eventStart,
    TResult? Function()? resetDriversListPressed,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTime timestamp, UiLapUpdate eventData)? uiLapUpdated,
    TResult Function(DateTime timestamp, EventChangeStatus eventData)?
        eventStatusChanged,
    TResult Function()? eventStart,
    TResult Function()? resetDriversListPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RaceMsgStarted value) started,
    required TResult Function(RaceMsgUiLapUpdated value) uiLapUpdated,
    required TResult Function(RaceMsgEventStatusChanged value)
        eventStatusChanged,
    required TResult Function(RaceMsgEventStart value) eventStart,
    required TResult Function(RaceMsgResetDriversListPressed value)
        resetDriversListPressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RaceMsgStarted value)? started,
    TResult? Function(RaceMsgUiLapUpdated value)? uiLapUpdated,
    TResult? Function(RaceMsgEventStatusChanged value)? eventStatusChanged,
    TResult? Function(RaceMsgEventStart value)? eventStart,
    TResult? Function(RaceMsgResetDriversListPressed value)?
        resetDriversListPressed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RaceMsgStarted value)? started,
    TResult Function(RaceMsgUiLapUpdated value)? uiLapUpdated,
    TResult Function(RaceMsgEventStatusChanged value)? eventStatusChanged,
    TResult Function(RaceMsgEventStart value)? eventStart,
    TResult Function(RaceMsgResetDriversListPressed value)?
        resetDriversListPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class RaceMsgStarted implements IncomingRaceMessageEvent {
  const factory RaceMsgStarted() = _$RaceMsgStartedImpl;
}

/// @nodoc
abstract class _$$RaceMsgUiLapUpdatedImplCopyWith<$Res> {
  factory _$$RaceMsgUiLapUpdatedImplCopyWith(_$RaceMsgUiLapUpdatedImpl value,
          $Res Function(_$RaceMsgUiLapUpdatedImpl) then) =
      __$$RaceMsgUiLapUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime timestamp, UiLapUpdate eventData});
}

/// @nodoc
class __$$RaceMsgUiLapUpdatedImplCopyWithImpl<$Res>
    extends _$IncomingRaceMessageEventCopyWithImpl<$Res,
        _$RaceMsgUiLapUpdatedImpl>
    implements _$$RaceMsgUiLapUpdatedImplCopyWith<$Res> {
  __$$RaceMsgUiLapUpdatedImplCopyWithImpl(_$RaceMsgUiLapUpdatedImpl _value,
      $Res Function(_$RaceMsgUiLapUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? eventData = null,
  }) {
    return _then(_$RaceMsgUiLapUpdatedImpl(
      null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == eventData
          ? _value.eventData
          : eventData // ignore: cast_nullable_to_non_nullable
              as UiLapUpdate,
    ));
  }
}

/// @nodoc

class _$RaceMsgUiLapUpdatedImpl implements RaceMsgUiLapUpdated {
  const _$RaceMsgUiLapUpdatedImpl(this.timestamp, this.eventData);

  @override
  final DateTime timestamp;
  @override
  final UiLapUpdate eventData;

  @override
  String toString() {
    return 'IncomingRaceMessageEvent.uiLapUpdated(timestamp: $timestamp, eventData: $eventData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RaceMsgUiLapUpdatedImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.eventData, eventData) ||
                other.eventData == eventData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timestamp, eventData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RaceMsgUiLapUpdatedImplCopyWith<_$RaceMsgUiLapUpdatedImpl> get copyWith =>
      __$$RaceMsgUiLapUpdatedImplCopyWithImpl<_$RaceMsgUiLapUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DateTime timestamp, UiLapUpdate eventData)
        uiLapUpdated,
    required TResult Function(DateTime timestamp, EventChangeStatus eventData)
        eventStatusChanged,
    required TResult Function() eventStart,
    required TResult Function() resetDriversListPressed,
  }) {
    return uiLapUpdated(timestamp, eventData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DateTime timestamp, UiLapUpdate eventData)? uiLapUpdated,
    TResult? Function(DateTime timestamp, EventChangeStatus eventData)?
        eventStatusChanged,
    TResult? Function()? eventStart,
    TResult? Function()? resetDriversListPressed,
  }) {
    return uiLapUpdated?.call(timestamp, eventData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTime timestamp, UiLapUpdate eventData)? uiLapUpdated,
    TResult Function(DateTime timestamp, EventChangeStatus eventData)?
        eventStatusChanged,
    TResult Function()? eventStart,
    TResult Function()? resetDriversListPressed,
    required TResult orElse(),
  }) {
    if (uiLapUpdated != null) {
      return uiLapUpdated(timestamp, eventData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RaceMsgStarted value) started,
    required TResult Function(RaceMsgUiLapUpdated value) uiLapUpdated,
    required TResult Function(RaceMsgEventStatusChanged value)
        eventStatusChanged,
    required TResult Function(RaceMsgEventStart value) eventStart,
    required TResult Function(RaceMsgResetDriversListPressed value)
        resetDriversListPressed,
  }) {
    return uiLapUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RaceMsgStarted value)? started,
    TResult? Function(RaceMsgUiLapUpdated value)? uiLapUpdated,
    TResult? Function(RaceMsgEventStatusChanged value)? eventStatusChanged,
    TResult? Function(RaceMsgEventStart value)? eventStart,
    TResult? Function(RaceMsgResetDriversListPressed value)?
        resetDriversListPressed,
  }) {
    return uiLapUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RaceMsgStarted value)? started,
    TResult Function(RaceMsgUiLapUpdated value)? uiLapUpdated,
    TResult Function(RaceMsgEventStatusChanged value)? eventStatusChanged,
    TResult Function(RaceMsgEventStart value)? eventStart,
    TResult Function(RaceMsgResetDriversListPressed value)?
        resetDriversListPressed,
    required TResult orElse(),
  }) {
    if (uiLapUpdated != null) {
      return uiLapUpdated(this);
    }
    return orElse();
  }
}

abstract class RaceMsgUiLapUpdated implements IncomingRaceMessageEvent {
  const factory RaceMsgUiLapUpdated(
          final DateTime timestamp, final UiLapUpdate eventData) =
      _$RaceMsgUiLapUpdatedImpl;

  DateTime get timestamp;
  UiLapUpdate get eventData;
  @JsonKey(ignore: true)
  _$$RaceMsgUiLapUpdatedImplCopyWith<_$RaceMsgUiLapUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RaceMsgEventStatusChangedImplCopyWith<$Res> {
  factory _$$RaceMsgEventStatusChangedImplCopyWith(
          _$RaceMsgEventStatusChangedImpl value,
          $Res Function(_$RaceMsgEventStatusChangedImpl) then) =
      __$$RaceMsgEventStatusChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime timestamp, EventChangeStatus eventData});
}

/// @nodoc
class __$$RaceMsgEventStatusChangedImplCopyWithImpl<$Res>
    extends _$IncomingRaceMessageEventCopyWithImpl<$Res,
        _$RaceMsgEventStatusChangedImpl>
    implements _$$RaceMsgEventStatusChangedImplCopyWith<$Res> {
  __$$RaceMsgEventStatusChangedImplCopyWithImpl(
      _$RaceMsgEventStatusChangedImpl _value,
      $Res Function(_$RaceMsgEventStatusChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? eventData = null,
  }) {
    return _then(_$RaceMsgEventStatusChangedImpl(
      null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == eventData
          ? _value.eventData
          : eventData // ignore: cast_nullable_to_non_nullable
              as EventChangeStatus,
    ));
  }
}

/// @nodoc

class _$RaceMsgEventStatusChangedImpl implements RaceMsgEventStatusChanged {
  const _$RaceMsgEventStatusChangedImpl(this.timestamp, this.eventData);

  @override
  final DateTime timestamp;
  @override
  final EventChangeStatus eventData;

  @override
  String toString() {
    return 'IncomingRaceMessageEvent.eventStatusChanged(timestamp: $timestamp, eventData: $eventData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RaceMsgEventStatusChangedImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.eventData, eventData) ||
                other.eventData == eventData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timestamp, eventData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RaceMsgEventStatusChangedImplCopyWith<_$RaceMsgEventStatusChangedImpl>
      get copyWith => __$$RaceMsgEventStatusChangedImplCopyWithImpl<
          _$RaceMsgEventStatusChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DateTime timestamp, UiLapUpdate eventData)
        uiLapUpdated,
    required TResult Function(DateTime timestamp, EventChangeStatus eventData)
        eventStatusChanged,
    required TResult Function() eventStart,
    required TResult Function() resetDriversListPressed,
  }) {
    return eventStatusChanged(timestamp, eventData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DateTime timestamp, UiLapUpdate eventData)? uiLapUpdated,
    TResult? Function(DateTime timestamp, EventChangeStatus eventData)?
        eventStatusChanged,
    TResult? Function()? eventStart,
    TResult? Function()? resetDriversListPressed,
  }) {
    return eventStatusChanged?.call(timestamp, eventData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTime timestamp, UiLapUpdate eventData)? uiLapUpdated,
    TResult Function(DateTime timestamp, EventChangeStatus eventData)?
        eventStatusChanged,
    TResult Function()? eventStart,
    TResult Function()? resetDriversListPressed,
    required TResult orElse(),
  }) {
    if (eventStatusChanged != null) {
      return eventStatusChanged(timestamp, eventData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RaceMsgStarted value) started,
    required TResult Function(RaceMsgUiLapUpdated value) uiLapUpdated,
    required TResult Function(RaceMsgEventStatusChanged value)
        eventStatusChanged,
    required TResult Function(RaceMsgEventStart value) eventStart,
    required TResult Function(RaceMsgResetDriversListPressed value)
        resetDriversListPressed,
  }) {
    return eventStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RaceMsgStarted value)? started,
    TResult? Function(RaceMsgUiLapUpdated value)? uiLapUpdated,
    TResult? Function(RaceMsgEventStatusChanged value)? eventStatusChanged,
    TResult? Function(RaceMsgEventStart value)? eventStart,
    TResult? Function(RaceMsgResetDriversListPressed value)?
        resetDriversListPressed,
  }) {
    return eventStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RaceMsgStarted value)? started,
    TResult Function(RaceMsgUiLapUpdated value)? uiLapUpdated,
    TResult Function(RaceMsgEventStatusChanged value)? eventStatusChanged,
    TResult Function(RaceMsgEventStart value)? eventStart,
    TResult Function(RaceMsgResetDriversListPressed value)?
        resetDriversListPressed,
    required TResult orElse(),
  }) {
    if (eventStatusChanged != null) {
      return eventStatusChanged(this);
    }
    return orElse();
  }
}

abstract class RaceMsgEventStatusChanged implements IncomingRaceMessageEvent {
  const factory RaceMsgEventStatusChanged(
          final DateTime timestamp, final EventChangeStatus eventData) =
      _$RaceMsgEventStatusChangedImpl;

  DateTime get timestamp;
  EventChangeStatus get eventData;
  @JsonKey(ignore: true)
  _$$RaceMsgEventStatusChangedImplCopyWith<_$RaceMsgEventStatusChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RaceMsgEventStartImplCopyWith<$Res> {
  factory _$$RaceMsgEventStartImplCopyWith(_$RaceMsgEventStartImpl value,
          $Res Function(_$RaceMsgEventStartImpl) then) =
      __$$RaceMsgEventStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RaceMsgEventStartImplCopyWithImpl<$Res>
    extends _$IncomingRaceMessageEventCopyWithImpl<$Res,
        _$RaceMsgEventStartImpl>
    implements _$$RaceMsgEventStartImplCopyWith<$Res> {
  __$$RaceMsgEventStartImplCopyWithImpl(_$RaceMsgEventStartImpl _value,
      $Res Function(_$RaceMsgEventStartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RaceMsgEventStartImpl implements RaceMsgEventStart {
  const _$RaceMsgEventStartImpl();

  @override
  String toString() {
    return 'IncomingRaceMessageEvent.eventStart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RaceMsgEventStartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DateTime timestamp, UiLapUpdate eventData)
        uiLapUpdated,
    required TResult Function(DateTime timestamp, EventChangeStatus eventData)
        eventStatusChanged,
    required TResult Function() eventStart,
    required TResult Function() resetDriversListPressed,
  }) {
    return eventStart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DateTime timestamp, UiLapUpdate eventData)? uiLapUpdated,
    TResult? Function(DateTime timestamp, EventChangeStatus eventData)?
        eventStatusChanged,
    TResult? Function()? eventStart,
    TResult? Function()? resetDriversListPressed,
  }) {
    return eventStart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTime timestamp, UiLapUpdate eventData)? uiLapUpdated,
    TResult Function(DateTime timestamp, EventChangeStatus eventData)?
        eventStatusChanged,
    TResult Function()? eventStart,
    TResult Function()? resetDriversListPressed,
    required TResult orElse(),
  }) {
    if (eventStart != null) {
      return eventStart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RaceMsgStarted value) started,
    required TResult Function(RaceMsgUiLapUpdated value) uiLapUpdated,
    required TResult Function(RaceMsgEventStatusChanged value)
        eventStatusChanged,
    required TResult Function(RaceMsgEventStart value) eventStart,
    required TResult Function(RaceMsgResetDriversListPressed value)
        resetDriversListPressed,
  }) {
    return eventStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RaceMsgStarted value)? started,
    TResult? Function(RaceMsgUiLapUpdated value)? uiLapUpdated,
    TResult? Function(RaceMsgEventStatusChanged value)? eventStatusChanged,
    TResult? Function(RaceMsgEventStart value)? eventStart,
    TResult? Function(RaceMsgResetDriversListPressed value)?
        resetDriversListPressed,
  }) {
    return eventStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RaceMsgStarted value)? started,
    TResult Function(RaceMsgUiLapUpdated value)? uiLapUpdated,
    TResult Function(RaceMsgEventStatusChanged value)? eventStatusChanged,
    TResult Function(RaceMsgEventStart value)? eventStart,
    TResult Function(RaceMsgResetDriversListPressed value)?
        resetDriversListPressed,
    required TResult orElse(),
  }) {
    if (eventStart != null) {
      return eventStart(this);
    }
    return orElse();
  }
}

abstract class RaceMsgEventStart implements IncomingRaceMessageEvent {
  const factory RaceMsgEventStart() = _$RaceMsgEventStartImpl;
}

/// @nodoc
abstract class _$$RaceMsgResetDriversListPressedImplCopyWith<$Res> {
  factory _$$RaceMsgResetDriversListPressedImplCopyWith(
          _$RaceMsgResetDriversListPressedImpl value,
          $Res Function(_$RaceMsgResetDriversListPressedImpl) then) =
      __$$RaceMsgResetDriversListPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RaceMsgResetDriversListPressedImplCopyWithImpl<$Res>
    extends _$IncomingRaceMessageEventCopyWithImpl<$Res,
        _$RaceMsgResetDriversListPressedImpl>
    implements _$$RaceMsgResetDriversListPressedImplCopyWith<$Res> {
  __$$RaceMsgResetDriversListPressedImplCopyWithImpl(
      _$RaceMsgResetDriversListPressedImpl _value,
      $Res Function(_$RaceMsgResetDriversListPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RaceMsgResetDriversListPressedImpl
    implements RaceMsgResetDriversListPressed {
  const _$RaceMsgResetDriversListPressedImpl();

  @override
  String toString() {
    return 'IncomingRaceMessageEvent.resetDriversListPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RaceMsgResetDriversListPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DateTime timestamp, UiLapUpdate eventData)
        uiLapUpdated,
    required TResult Function(DateTime timestamp, EventChangeStatus eventData)
        eventStatusChanged,
    required TResult Function() eventStart,
    required TResult Function() resetDriversListPressed,
  }) {
    return resetDriversListPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DateTime timestamp, UiLapUpdate eventData)? uiLapUpdated,
    TResult? Function(DateTime timestamp, EventChangeStatus eventData)?
        eventStatusChanged,
    TResult? Function()? eventStart,
    TResult? Function()? resetDriversListPressed,
  }) {
    return resetDriversListPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTime timestamp, UiLapUpdate eventData)? uiLapUpdated,
    TResult Function(DateTime timestamp, EventChangeStatus eventData)?
        eventStatusChanged,
    TResult Function()? eventStart,
    TResult Function()? resetDriversListPressed,
    required TResult orElse(),
  }) {
    if (resetDriversListPressed != null) {
      return resetDriversListPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RaceMsgStarted value) started,
    required TResult Function(RaceMsgUiLapUpdated value) uiLapUpdated,
    required TResult Function(RaceMsgEventStatusChanged value)
        eventStatusChanged,
    required TResult Function(RaceMsgEventStart value) eventStart,
    required TResult Function(RaceMsgResetDriversListPressed value)
        resetDriversListPressed,
  }) {
    return resetDriversListPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RaceMsgStarted value)? started,
    TResult? Function(RaceMsgUiLapUpdated value)? uiLapUpdated,
    TResult? Function(RaceMsgEventStatusChanged value)? eventStatusChanged,
    TResult? Function(RaceMsgEventStart value)? eventStart,
    TResult? Function(RaceMsgResetDriversListPressed value)?
        resetDriversListPressed,
  }) {
    return resetDriversListPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RaceMsgStarted value)? started,
    TResult Function(RaceMsgUiLapUpdated value)? uiLapUpdated,
    TResult Function(RaceMsgEventStatusChanged value)? eventStatusChanged,
    TResult Function(RaceMsgEventStart value)? eventStart,
    TResult Function(RaceMsgResetDriversListPressed value)?
        resetDriversListPressed,
    required TResult orElse(),
  }) {
    if (resetDriversListPressed != null) {
      return resetDriversListPressed(this);
    }
    return orElse();
  }
}

abstract class RaceMsgResetDriversListPressed
    implements IncomingRaceMessageEvent {
  const factory RaceMsgResetDriversListPressed() =
      _$RaceMsgResetDriversListPressedImpl;
}

/// @nodoc
mixin _$IncomingRaceMessageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(RaceStatus oldState, RaceStatus newState)
        raceEventStatusChange,
    required TResult Function(String controllerId, String laptime,
            Color controllerBgColor, Color controllerTextColor)
        raceUiLapUpdate,
    required TResult Function(List<Driver> driversList) updateDriversList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(RaceStatus oldState, RaceStatus newState)?
        raceEventStatusChange,
    TResult? Function(String controllerId, String laptime,
            Color controllerBgColor, Color controllerTextColor)?
        raceUiLapUpdate,
    TResult? Function(List<Driver> driversList)? updateDriversList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(RaceStatus oldState, RaceStatus newState)?
        raceEventStatusChange,
    TResult Function(String controllerId, String laptime,
            Color controllerBgColor, Color controllerTextColor)?
        raceUiLapUpdate,
    TResult Function(List<Driver> driversList)? updateDriversList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(RaceEventStatusChange value)
        raceEventStatusChange,
    required TResult Function(RaceUiLapUpdate value) raceUiLapUpdate,
    required TResult Function(RaceUpdateDriversList value) updateDriversList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(RaceEventStatusChange value)? raceEventStatusChange,
    TResult? Function(RaceUiLapUpdate value)? raceUiLapUpdate,
    TResult? Function(RaceUpdateDriversList value)? updateDriversList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(RaceEventStatusChange value)? raceEventStatusChange,
    TResult Function(RaceUiLapUpdate value)? raceUiLapUpdate,
    TResult Function(RaceUpdateDriversList value)? updateDriversList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomingRaceMessageStateCopyWith<$Res> {
  factory $IncomingRaceMessageStateCopyWith(IncomingRaceMessageState value,
          $Res Function(IncomingRaceMessageState) then) =
      _$IncomingRaceMessageStateCopyWithImpl<$Res, IncomingRaceMessageState>;
}

/// @nodoc
class _$IncomingRaceMessageStateCopyWithImpl<$Res,
        $Val extends IncomingRaceMessageState>
    implements $IncomingRaceMessageStateCopyWith<$Res> {
  _$IncomingRaceMessageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$IncomingRaceMessageStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  _$InitialImpl();

  @override
  String toString() {
    return 'IncomingRaceMessageState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(RaceStatus oldState, RaceStatus newState)
        raceEventStatusChange,
    required TResult Function(String controllerId, String laptime,
            Color controllerBgColor, Color controllerTextColor)
        raceUiLapUpdate,
    required TResult Function(List<Driver> driversList) updateDriversList,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(RaceStatus oldState, RaceStatus newState)?
        raceEventStatusChange,
    TResult? Function(String controllerId, String laptime,
            Color controllerBgColor, Color controllerTextColor)?
        raceUiLapUpdate,
    TResult? Function(List<Driver> driversList)? updateDriversList,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(RaceStatus oldState, RaceStatus newState)?
        raceEventStatusChange,
    TResult Function(String controllerId, String laptime,
            Color controllerBgColor, Color controllerTextColor)?
        raceUiLapUpdate,
    TResult Function(List<Driver> driversList)? updateDriversList,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(RaceEventStatusChange value)
        raceEventStatusChange,
    required TResult Function(RaceUiLapUpdate value) raceUiLapUpdate,
    required TResult Function(RaceUpdateDriversList value) updateDriversList,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(RaceEventStatusChange value)? raceEventStatusChange,
    TResult? Function(RaceUiLapUpdate value)? raceUiLapUpdate,
    TResult? Function(RaceUpdateDriversList value)? updateDriversList,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(RaceEventStatusChange value)? raceEventStatusChange,
    TResult Function(RaceUiLapUpdate value)? raceUiLapUpdate,
    TResult Function(RaceUpdateDriversList value)? updateDriversList,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements IncomingRaceMessageState {
  factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$RaceEventStatusChangeImplCopyWith<$Res> {
  factory _$$RaceEventStatusChangeImplCopyWith(
          _$RaceEventStatusChangeImpl value,
          $Res Function(_$RaceEventStatusChangeImpl) then) =
      __$$RaceEventStatusChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RaceStatus oldState, RaceStatus newState});
}

/// @nodoc
class __$$RaceEventStatusChangeImplCopyWithImpl<$Res>
    extends _$IncomingRaceMessageStateCopyWithImpl<$Res,
        _$RaceEventStatusChangeImpl>
    implements _$$RaceEventStatusChangeImplCopyWith<$Res> {
  __$$RaceEventStatusChangeImplCopyWithImpl(_$RaceEventStatusChangeImpl _value,
      $Res Function(_$RaceEventStatusChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldState = null,
    Object? newState = null,
  }) {
    return _then(_$RaceEventStatusChangeImpl(
      null == oldState
          ? _value.oldState
          : oldState // ignore: cast_nullable_to_non_nullable
              as RaceStatus,
      null == newState
          ? _value.newState
          : newState // ignore: cast_nullable_to_non_nullable
              as RaceStatus,
    ));
  }
}

/// @nodoc

class _$RaceEventStatusChangeImpl implements RaceEventStatusChange {
  _$RaceEventStatusChangeImpl(this.oldState, this.newState);

  @override
  final RaceStatus oldState;
  @override
  final RaceStatus newState;

  @override
  String toString() {
    return 'IncomingRaceMessageState.raceEventStatusChange(oldState: $oldState, newState: $newState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RaceEventStatusChangeImpl &&
            (identical(other.oldState, oldState) ||
                other.oldState == oldState) &&
            (identical(other.newState, newState) ||
                other.newState == newState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldState, newState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RaceEventStatusChangeImplCopyWith<_$RaceEventStatusChangeImpl>
      get copyWith => __$$RaceEventStatusChangeImplCopyWithImpl<
          _$RaceEventStatusChangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(RaceStatus oldState, RaceStatus newState)
        raceEventStatusChange,
    required TResult Function(String controllerId, String laptime,
            Color controllerBgColor, Color controllerTextColor)
        raceUiLapUpdate,
    required TResult Function(List<Driver> driversList) updateDriversList,
  }) {
    return raceEventStatusChange(oldState, newState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(RaceStatus oldState, RaceStatus newState)?
        raceEventStatusChange,
    TResult? Function(String controllerId, String laptime,
            Color controllerBgColor, Color controllerTextColor)?
        raceUiLapUpdate,
    TResult? Function(List<Driver> driversList)? updateDriversList,
  }) {
    return raceEventStatusChange?.call(oldState, newState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(RaceStatus oldState, RaceStatus newState)?
        raceEventStatusChange,
    TResult Function(String controllerId, String laptime,
            Color controllerBgColor, Color controllerTextColor)?
        raceUiLapUpdate,
    TResult Function(List<Driver> driversList)? updateDriversList,
    required TResult orElse(),
  }) {
    if (raceEventStatusChange != null) {
      return raceEventStatusChange(oldState, newState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(RaceEventStatusChange value)
        raceEventStatusChange,
    required TResult Function(RaceUiLapUpdate value) raceUiLapUpdate,
    required TResult Function(RaceUpdateDriversList value) updateDriversList,
  }) {
    return raceEventStatusChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(RaceEventStatusChange value)? raceEventStatusChange,
    TResult? Function(RaceUiLapUpdate value)? raceUiLapUpdate,
    TResult? Function(RaceUpdateDriversList value)? updateDriversList,
  }) {
    return raceEventStatusChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(RaceEventStatusChange value)? raceEventStatusChange,
    TResult Function(RaceUiLapUpdate value)? raceUiLapUpdate,
    TResult Function(RaceUpdateDriversList value)? updateDriversList,
    required TResult orElse(),
  }) {
    if (raceEventStatusChange != null) {
      return raceEventStatusChange(this);
    }
    return orElse();
  }
}

abstract class RaceEventStatusChange implements IncomingRaceMessageState {
  factory RaceEventStatusChange(
          final RaceStatus oldState, final RaceStatus newState) =
      _$RaceEventStatusChangeImpl;

  RaceStatus get oldState;
  RaceStatus get newState;
  @JsonKey(ignore: true)
  _$$RaceEventStatusChangeImplCopyWith<_$RaceEventStatusChangeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RaceUiLapUpdateImplCopyWith<$Res> {
  factory _$$RaceUiLapUpdateImplCopyWith(_$RaceUiLapUpdateImpl value,
          $Res Function(_$RaceUiLapUpdateImpl) then) =
      __$$RaceUiLapUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String controllerId,
      String laptime,
      Color controllerBgColor,
      Color controllerTextColor});
}

/// @nodoc
class __$$RaceUiLapUpdateImplCopyWithImpl<$Res>
    extends _$IncomingRaceMessageStateCopyWithImpl<$Res, _$RaceUiLapUpdateImpl>
    implements _$$RaceUiLapUpdateImplCopyWith<$Res> {
  __$$RaceUiLapUpdateImplCopyWithImpl(
      _$RaceUiLapUpdateImpl _value, $Res Function(_$RaceUiLapUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controllerId = null,
    Object? laptime = null,
    Object? controllerBgColor = null,
    Object? controllerTextColor = null,
  }) {
    return _then(_$RaceUiLapUpdateImpl(
      null == controllerId
          ? _value.controllerId
          : controllerId // ignore: cast_nullable_to_non_nullable
              as String,
      null == laptime
          ? _value.laptime
          : laptime // ignore: cast_nullable_to_non_nullable
              as String,
      null == controllerBgColor
          ? _value.controllerBgColor
          : controllerBgColor // ignore: cast_nullable_to_non_nullable
              as Color,
      null == controllerTextColor
          ? _value.controllerTextColor
          : controllerTextColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$RaceUiLapUpdateImpl implements RaceUiLapUpdate {
  _$RaceUiLapUpdateImpl(this.controllerId, this.laptime, this.controllerBgColor,
      this.controllerTextColor);

  @override
  final String controllerId;
  @override
  final String laptime;
  @override
  final Color controllerBgColor;
  @override
  final Color controllerTextColor;

  @override
  String toString() {
    return 'IncomingRaceMessageState.raceUiLapUpdate(controllerId: $controllerId, laptime: $laptime, controllerBgColor: $controllerBgColor, controllerTextColor: $controllerTextColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RaceUiLapUpdateImpl &&
            (identical(other.controllerId, controllerId) ||
                other.controllerId == controllerId) &&
            (identical(other.laptime, laptime) || other.laptime == laptime) &&
            (identical(other.controllerBgColor, controllerBgColor) ||
                other.controllerBgColor == controllerBgColor) &&
            (identical(other.controllerTextColor, controllerTextColor) ||
                other.controllerTextColor == controllerTextColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controllerId, laptime,
      controllerBgColor, controllerTextColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RaceUiLapUpdateImplCopyWith<_$RaceUiLapUpdateImpl> get copyWith =>
      __$$RaceUiLapUpdateImplCopyWithImpl<_$RaceUiLapUpdateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(RaceStatus oldState, RaceStatus newState)
        raceEventStatusChange,
    required TResult Function(String controllerId, String laptime,
            Color controllerBgColor, Color controllerTextColor)
        raceUiLapUpdate,
    required TResult Function(List<Driver> driversList) updateDriversList,
  }) {
    return raceUiLapUpdate(
        controllerId, laptime, controllerBgColor, controllerTextColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(RaceStatus oldState, RaceStatus newState)?
        raceEventStatusChange,
    TResult? Function(String controllerId, String laptime,
            Color controllerBgColor, Color controllerTextColor)?
        raceUiLapUpdate,
    TResult? Function(List<Driver> driversList)? updateDriversList,
  }) {
    return raceUiLapUpdate?.call(
        controllerId, laptime, controllerBgColor, controllerTextColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(RaceStatus oldState, RaceStatus newState)?
        raceEventStatusChange,
    TResult Function(String controllerId, String laptime,
            Color controllerBgColor, Color controllerTextColor)?
        raceUiLapUpdate,
    TResult Function(List<Driver> driversList)? updateDriversList,
    required TResult orElse(),
  }) {
    if (raceUiLapUpdate != null) {
      return raceUiLapUpdate(
          controllerId, laptime, controllerBgColor, controllerTextColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(RaceEventStatusChange value)
        raceEventStatusChange,
    required TResult Function(RaceUiLapUpdate value) raceUiLapUpdate,
    required TResult Function(RaceUpdateDriversList value) updateDriversList,
  }) {
    return raceUiLapUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(RaceEventStatusChange value)? raceEventStatusChange,
    TResult? Function(RaceUiLapUpdate value)? raceUiLapUpdate,
    TResult? Function(RaceUpdateDriversList value)? updateDriversList,
  }) {
    return raceUiLapUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(RaceEventStatusChange value)? raceEventStatusChange,
    TResult Function(RaceUiLapUpdate value)? raceUiLapUpdate,
    TResult Function(RaceUpdateDriversList value)? updateDriversList,
    required TResult orElse(),
  }) {
    if (raceUiLapUpdate != null) {
      return raceUiLapUpdate(this);
    }
    return orElse();
  }
}

abstract class RaceUiLapUpdate implements IncomingRaceMessageState {
  factory RaceUiLapUpdate(
      final String controllerId,
      final String laptime,
      final Color controllerBgColor,
      final Color controllerTextColor) = _$RaceUiLapUpdateImpl;

  String get controllerId;
  String get laptime;
  Color get controllerBgColor;
  Color get controllerTextColor;
  @JsonKey(ignore: true)
  _$$RaceUiLapUpdateImplCopyWith<_$RaceUiLapUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RaceUpdateDriversListImplCopyWith<$Res> {
  factory _$$RaceUpdateDriversListImplCopyWith(
          _$RaceUpdateDriversListImpl value,
          $Res Function(_$RaceUpdateDriversListImpl) then) =
      __$$RaceUpdateDriversListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Driver> driversList});
}

/// @nodoc
class __$$RaceUpdateDriversListImplCopyWithImpl<$Res>
    extends _$IncomingRaceMessageStateCopyWithImpl<$Res,
        _$RaceUpdateDriversListImpl>
    implements _$$RaceUpdateDriversListImplCopyWith<$Res> {
  __$$RaceUpdateDriversListImplCopyWithImpl(_$RaceUpdateDriversListImpl _value,
      $Res Function(_$RaceUpdateDriversListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driversList = null,
  }) {
    return _then(_$RaceUpdateDriversListImpl(
      null == driversList
          ? _value._driversList
          : driversList // ignore: cast_nullable_to_non_nullable
              as List<Driver>,
    ));
  }
}

/// @nodoc

class _$RaceUpdateDriversListImpl implements RaceUpdateDriversList {
  _$RaceUpdateDriversListImpl(final List<Driver> driversList)
      : _driversList = driversList;

  final List<Driver> _driversList;
  @override
  List<Driver> get driversList {
    if (_driversList is EqualUnmodifiableListView) return _driversList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_driversList);
  }

  @override
  String toString() {
    return 'IncomingRaceMessageState.updateDriversList(driversList: $driversList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RaceUpdateDriversListImpl &&
            const DeepCollectionEquality()
                .equals(other._driversList, _driversList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_driversList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RaceUpdateDriversListImplCopyWith<_$RaceUpdateDriversListImpl>
      get copyWith => __$$RaceUpdateDriversListImplCopyWithImpl<
          _$RaceUpdateDriversListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(RaceStatus oldState, RaceStatus newState)
        raceEventStatusChange,
    required TResult Function(String controllerId, String laptime,
            Color controllerBgColor, Color controllerTextColor)
        raceUiLapUpdate,
    required TResult Function(List<Driver> driversList) updateDriversList,
  }) {
    return updateDriversList(driversList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(RaceStatus oldState, RaceStatus newState)?
        raceEventStatusChange,
    TResult? Function(String controllerId, String laptime,
            Color controllerBgColor, Color controllerTextColor)?
        raceUiLapUpdate,
    TResult? Function(List<Driver> driversList)? updateDriversList,
  }) {
    return updateDriversList?.call(driversList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(RaceStatus oldState, RaceStatus newState)?
        raceEventStatusChange,
    TResult Function(String controllerId, String laptime,
            Color controllerBgColor, Color controllerTextColor)?
        raceUiLapUpdate,
    TResult Function(List<Driver> driversList)? updateDriversList,
    required TResult orElse(),
  }) {
    if (updateDriversList != null) {
      return updateDriversList(driversList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(RaceEventStatusChange value)
        raceEventStatusChange,
    required TResult Function(RaceUiLapUpdate value) raceUiLapUpdate,
    required TResult Function(RaceUpdateDriversList value) updateDriversList,
  }) {
    return updateDriversList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(RaceEventStatusChange value)? raceEventStatusChange,
    TResult? Function(RaceUiLapUpdate value)? raceUiLapUpdate,
    TResult? Function(RaceUpdateDriversList value)? updateDriversList,
  }) {
    return updateDriversList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(RaceEventStatusChange value)? raceEventStatusChange,
    TResult Function(RaceUiLapUpdate value)? raceUiLapUpdate,
    TResult Function(RaceUpdateDriversList value)? updateDriversList,
    required TResult orElse(),
  }) {
    if (updateDriversList != null) {
      return updateDriversList(this);
    }
    return orElse();
  }
}

abstract class RaceUpdateDriversList implements IncomingRaceMessageState {
  factory RaceUpdateDriversList(final List<Driver> driversList) =
      _$RaceUpdateDriversListImpl;

  List<Driver> get driversList;
  @JsonKey(ignore: true)
  _$$RaceUpdateDriversListImplCopyWith<_$RaceUpdateDriversListImpl>
      get copyWith => throw _privateConstructorUsedError;
}
