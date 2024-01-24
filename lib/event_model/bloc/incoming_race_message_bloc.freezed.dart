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
    required TResult Function(String controllerId, Color controllerBgColor,
            Color controllerTextColor, String laptime, Driver driver)
        uiLapUpdated,
    required TResult Function(RaceStatus oldState, RaceStatus newState)
        eventStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String controllerId, Color controllerBgColor,
            Color controllerTextColor, String laptime, Driver driver)?
        uiLapUpdated,
    TResult? Function(RaceStatus oldState, RaceStatus newState)?
        eventStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String controllerId, Color controllerBgColor,
            Color controllerTextColor, String laptime, Driver driver)?
        uiLapUpdated,
    TResult Function(RaceStatus oldState, RaceStatus newState)?
        eventStatusChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RaceMsgStarted value) started,
    required TResult Function(RaceMsgUiLapUpdated value) uiLapUpdated,
    required TResult Function(RaceMsgEventStatusChanged value)
        eventStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RaceMsgStarted value)? started,
    TResult? Function(RaceMsgUiLapUpdated value)? uiLapUpdated,
    TResult? Function(RaceMsgEventStatusChanged value)? eventStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RaceMsgStarted value)? started,
    TResult Function(RaceMsgUiLapUpdated value)? uiLapUpdated,
    TResult Function(RaceMsgEventStatusChanged value)? eventStatusChanged,
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
    required TResult Function(String controllerId, Color controllerBgColor,
            Color controllerTextColor, String laptime, Driver driver)
        uiLapUpdated,
    required TResult Function(RaceStatus oldState, RaceStatus newState)
        eventStatusChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String controllerId, Color controllerBgColor,
            Color controllerTextColor, String laptime, Driver driver)?
        uiLapUpdated,
    TResult? Function(RaceStatus oldState, RaceStatus newState)?
        eventStatusChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String controllerId, Color controllerBgColor,
            Color controllerTextColor, String laptime, Driver driver)?
        uiLapUpdated,
    TResult Function(RaceStatus oldState, RaceStatus newState)?
        eventStatusChanged,
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
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RaceMsgStarted value)? started,
    TResult? Function(RaceMsgUiLapUpdated value)? uiLapUpdated,
    TResult? Function(RaceMsgEventStatusChanged value)? eventStatusChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RaceMsgStarted value)? started,
    TResult Function(RaceMsgUiLapUpdated value)? uiLapUpdated,
    TResult Function(RaceMsgEventStatusChanged value)? eventStatusChanged,
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
  $Res call(
      {String controllerId,
      Color controllerBgColor,
      Color controllerTextColor,
      String laptime,
      Driver driver});
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
    Object? controllerId = null,
    Object? controllerBgColor = null,
    Object? controllerTextColor = null,
    Object? laptime = null,
    Object? driver = null,
  }) {
    return _then(_$RaceMsgUiLapUpdatedImpl(
      null == controllerId
          ? _value.controllerId
          : controllerId // ignore: cast_nullable_to_non_nullable
              as String,
      null == controllerBgColor
          ? _value.controllerBgColor
          : controllerBgColor // ignore: cast_nullable_to_non_nullable
              as Color,
      null == controllerTextColor
          ? _value.controllerTextColor
          : controllerTextColor // ignore: cast_nullable_to_non_nullable
              as Color,
      null == laptime
          ? _value.laptime
          : laptime // ignore: cast_nullable_to_non_nullable
              as String,
      null == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Driver,
    ));
  }
}

/// @nodoc

class _$RaceMsgUiLapUpdatedImpl implements RaceMsgUiLapUpdated {
  const _$RaceMsgUiLapUpdatedImpl(this.controllerId, this.controllerBgColor,
      this.controllerTextColor, this.laptime, this.driver);

  @override
  final String controllerId;
  @override
  final Color controllerBgColor;
  @override
  final Color controllerTextColor;
  @override
  final String laptime;
  @override
  final Driver driver;

  @override
  String toString() {
    return 'IncomingRaceMessageEvent.uiLapUpdated(controllerId: $controllerId, controllerBgColor: $controllerBgColor, controllerTextColor: $controllerTextColor, laptime: $laptime, driver: $driver)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RaceMsgUiLapUpdatedImpl &&
            (identical(other.controllerId, controllerId) ||
                other.controllerId == controllerId) &&
            (identical(other.controllerBgColor, controllerBgColor) ||
                other.controllerBgColor == controllerBgColor) &&
            (identical(other.controllerTextColor, controllerTextColor) ||
                other.controllerTextColor == controllerTextColor) &&
            (identical(other.laptime, laptime) || other.laptime == laptime) &&
            (identical(other.driver, driver) || other.driver == driver));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controllerId, controllerBgColor,
      controllerTextColor, laptime, driver);

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
    required TResult Function(String controllerId, Color controllerBgColor,
            Color controllerTextColor, String laptime, Driver driver)
        uiLapUpdated,
    required TResult Function(RaceStatus oldState, RaceStatus newState)
        eventStatusChanged,
  }) {
    return uiLapUpdated(
        controllerId, controllerBgColor, controllerTextColor, laptime, driver);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String controllerId, Color controllerBgColor,
            Color controllerTextColor, String laptime, Driver driver)?
        uiLapUpdated,
    TResult? Function(RaceStatus oldState, RaceStatus newState)?
        eventStatusChanged,
  }) {
    return uiLapUpdated?.call(
        controllerId, controllerBgColor, controllerTextColor, laptime, driver);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String controllerId, Color controllerBgColor,
            Color controllerTextColor, String laptime, Driver driver)?
        uiLapUpdated,
    TResult Function(RaceStatus oldState, RaceStatus newState)?
        eventStatusChanged,
    required TResult orElse(),
  }) {
    if (uiLapUpdated != null) {
      return uiLapUpdated(controllerId, controllerBgColor, controllerTextColor,
          laptime, driver);
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
  }) {
    return uiLapUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RaceMsgStarted value)? started,
    TResult? Function(RaceMsgUiLapUpdated value)? uiLapUpdated,
    TResult? Function(RaceMsgEventStatusChanged value)? eventStatusChanged,
  }) {
    return uiLapUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RaceMsgStarted value)? started,
    TResult Function(RaceMsgUiLapUpdated value)? uiLapUpdated,
    TResult Function(RaceMsgEventStatusChanged value)? eventStatusChanged,
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
      final String controllerId,
      final Color controllerBgColor,
      final Color controllerTextColor,
      final String laptime,
      final Driver driver) = _$RaceMsgUiLapUpdatedImpl;

  String get controllerId;
  Color get controllerBgColor;
  Color get controllerTextColor;
  String get laptime;
  Driver get driver;
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
  $Res call({RaceStatus oldState, RaceStatus newState});
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
    Object? oldState = null,
    Object? newState = null,
  }) {
    return _then(_$RaceMsgEventStatusChangedImpl(
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

class _$RaceMsgEventStatusChangedImpl implements RaceMsgEventStatusChanged {
  const _$RaceMsgEventStatusChangedImpl(this.oldState, this.newState);

  @override
  final RaceStatus oldState;
  @override
  final RaceStatus newState;

  @override
  String toString() {
    return 'IncomingRaceMessageEvent.eventStatusChanged(oldState: $oldState, newState: $newState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RaceMsgEventStatusChangedImpl &&
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
  _$$RaceMsgEventStatusChangedImplCopyWith<_$RaceMsgEventStatusChangedImpl>
      get copyWith => __$$RaceMsgEventStatusChangedImplCopyWithImpl<
          _$RaceMsgEventStatusChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String controllerId, Color controllerBgColor,
            Color controllerTextColor, String laptime, Driver driver)
        uiLapUpdated,
    required TResult Function(RaceStatus oldState, RaceStatus newState)
        eventStatusChanged,
  }) {
    return eventStatusChanged(oldState, newState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String controllerId, Color controllerBgColor,
            Color controllerTextColor, String laptime, Driver driver)?
        uiLapUpdated,
    TResult? Function(RaceStatus oldState, RaceStatus newState)?
        eventStatusChanged,
  }) {
    return eventStatusChanged?.call(oldState, newState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String controllerId, Color controllerBgColor,
            Color controllerTextColor, String laptime, Driver driver)?
        uiLapUpdated,
    TResult Function(RaceStatus oldState, RaceStatus newState)?
        eventStatusChanged,
    required TResult orElse(),
  }) {
    if (eventStatusChanged != null) {
      return eventStatusChanged(oldState, newState);
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
  }) {
    return eventStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RaceMsgStarted value)? started,
    TResult? Function(RaceMsgUiLapUpdated value)? uiLapUpdated,
    TResult? Function(RaceMsgEventStatusChanged value)? eventStatusChanged,
  }) {
    return eventStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RaceMsgStarted value)? started,
    TResult Function(RaceMsgUiLapUpdated value)? uiLapUpdated,
    TResult Function(RaceMsgEventStatusChanged value)? eventStatusChanged,
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
          final RaceStatus oldState, final RaceStatus newState) =
      _$RaceMsgEventStatusChangedImpl;

  RaceStatus get oldState;
  RaceStatus get newState;
  @JsonKey(ignore: true)
  _$$RaceMsgEventStatusChangedImplCopyWith<_$RaceMsgEventStatusChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function(List<Driver> driver) updateDriversList,
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
    TResult? Function(List<Driver> driver)? updateDriversList,
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
    TResult Function(List<Driver> driver)? updateDriversList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RaceEventStatusChange value)
        raceEventStatusChange,
    required TResult Function(_RaceUiLapUpdate value) raceUiLapUpdate,
    required TResult Function(_RaceUpdateDriversList value) updateDriversList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RaceEventStatusChange value)? raceEventStatusChange,
    TResult? Function(_RaceUiLapUpdate value)? raceUiLapUpdate,
    TResult? Function(_RaceUpdateDriversList value)? updateDriversList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RaceEventStatusChange value)? raceEventStatusChange,
    TResult Function(_RaceUiLapUpdate value)? raceUiLapUpdate,
    TResult Function(_RaceUpdateDriversList value)? updateDriversList,
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
  const _$InitialImpl();

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
    required TResult Function(List<Driver> driver) updateDriversList,
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
    TResult? Function(List<Driver> driver)? updateDriversList,
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
    TResult Function(List<Driver> driver)? updateDriversList,
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
    required TResult Function(_RaceEventStatusChange value)
        raceEventStatusChange,
    required TResult Function(_RaceUiLapUpdate value) raceUiLapUpdate,
    required TResult Function(_RaceUpdateDriversList value) updateDriversList,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RaceEventStatusChange value)? raceEventStatusChange,
    TResult? Function(_RaceUiLapUpdate value)? raceUiLapUpdate,
    TResult? Function(_RaceUpdateDriversList value)? updateDriversList,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RaceEventStatusChange value)? raceEventStatusChange,
    TResult Function(_RaceUiLapUpdate value)? raceUiLapUpdate,
    TResult Function(_RaceUpdateDriversList value)? updateDriversList,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements IncomingRaceMessageState {
  const factory _Initial() = _$InitialImpl;
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

class _$RaceEventStatusChangeImpl implements _RaceEventStatusChange {
  const _$RaceEventStatusChangeImpl(this.oldState, this.newState);

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
    required TResult Function(List<Driver> driver) updateDriversList,
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
    TResult? Function(List<Driver> driver)? updateDriversList,
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
    TResult Function(List<Driver> driver)? updateDriversList,
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
    required TResult Function(_RaceEventStatusChange value)
        raceEventStatusChange,
    required TResult Function(_RaceUiLapUpdate value) raceUiLapUpdate,
    required TResult Function(_RaceUpdateDriversList value) updateDriversList,
  }) {
    return raceEventStatusChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RaceEventStatusChange value)? raceEventStatusChange,
    TResult? Function(_RaceUiLapUpdate value)? raceUiLapUpdate,
    TResult? Function(_RaceUpdateDriversList value)? updateDriversList,
  }) {
    return raceEventStatusChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RaceEventStatusChange value)? raceEventStatusChange,
    TResult Function(_RaceUiLapUpdate value)? raceUiLapUpdate,
    TResult Function(_RaceUpdateDriversList value)? updateDriversList,
    required TResult orElse(),
  }) {
    if (raceEventStatusChange != null) {
      return raceEventStatusChange(this);
    }
    return orElse();
  }
}

abstract class _RaceEventStatusChange implements IncomingRaceMessageState {
  const factory _RaceEventStatusChange(
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

class _$RaceUiLapUpdateImpl implements _RaceUiLapUpdate {
  const _$RaceUiLapUpdateImpl(this.controllerId, this.laptime,
      this.controllerBgColor, this.controllerTextColor);

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
    required TResult Function(List<Driver> driver) updateDriversList,
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
    TResult? Function(List<Driver> driver)? updateDriversList,
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
    TResult Function(List<Driver> driver)? updateDriversList,
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
    required TResult Function(_RaceEventStatusChange value)
        raceEventStatusChange,
    required TResult Function(_RaceUiLapUpdate value) raceUiLapUpdate,
    required TResult Function(_RaceUpdateDriversList value) updateDriversList,
  }) {
    return raceUiLapUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RaceEventStatusChange value)? raceEventStatusChange,
    TResult? Function(_RaceUiLapUpdate value)? raceUiLapUpdate,
    TResult? Function(_RaceUpdateDriversList value)? updateDriversList,
  }) {
    return raceUiLapUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RaceEventStatusChange value)? raceEventStatusChange,
    TResult Function(_RaceUiLapUpdate value)? raceUiLapUpdate,
    TResult Function(_RaceUpdateDriversList value)? updateDriversList,
    required TResult orElse(),
  }) {
    if (raceUiLapUpdate != null) {
      return raceUiLapUpdate(this);
    }
    return orElse();
  }
}

abstract class _RaceUiLapUpdate implements IncomingRaceMessageState {
  const factory _RaceUiLapUpdate(
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
  $Res call({List<Driver> driver});
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
    Object? driver = null,
  }) {
    return _then(_$RaceUpdateDriversListImpl(
      null == driver
          ? _value._driver
          : driver // ignore: cast_nullable_to_non_nullable
              as List<Driver>,
    ));
  }
}

/// @nodoc

class _$RaceUpdateDriversListImpl implements _RaceUpdateDriversList {
  const _$RaceUpdateDriversListImpl(final List<Driver> driver)
      : _driver = driver;

  final List<Driver> _driver;
  @override
  List<Driver> get driver {
    if (_driver is EqualUnmodifiableListView) return _driver;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_driver);
  }

  @override
  String toString() {
    return 'IncomingRaceMessageState.updateDriversList(driver: $driver)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RaceUpdateDriversListImpl &&
            const DeepCollectionEquality().equals(other._driver, _driver));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_driver));

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
    required TResult Function(List<Driver> driver) updateDriversList,
  }) {
    return updateDriversList(driver);
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
    TResult? Function(List<Driver> driver)? updateDriversList,
  }) {
    return updateDriversList?.call(driver);
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
    TResult Function(List<Driver> driver)? updateDriversList,
    required TResult orElse(),
  }) {
    if (updateDriversList != null) {
      return updateDriversList(driver);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RaceEventStatusChange value)
        raceEventStatusChange,
    required TResult Function(_RaceUiLapUpdate value) raceUiLapUpdate,
    required TResult Function(_RaceUpdateDriversList value) updateDriversList,
  }) {
    return updateDriversList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RaceEventStatusChange value)? raceEventStatusChange,
    TResult? Function(_RaceUiLapUpdate value)? raceUiLapUpdate,
    TResult? Function(_RaceUpdateDriversList value)? updateDriversList,
  }) {
    return updateDriversList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RaceEventStatusChange value)? raceEventStatusChange,
    TResult Function(_RaceUiLapUpdate value)? raceUiLapUpdate,
    TResult Function(_RaceUpdateDriversList value)? updateDriversList,
    required TResult orElse(),
  }) {
    if (updateDriversList != null) {
      return updateDriversList(this);
    }
    return orElse();
  }
}

abstract class _RaceUpdateDriversList implements IncomingRaceMessageState {
  const factory _RaceUpdateDriversList(final List<Driver> driver) =
      _$RaceUpdateDriversListImpl;

  List<Driver> get driver;
  @JsonKey(ignore: true)
  _$$RaceUpdateDriversListImplCopyWith<_$RaceUpdateDriversListImpl>
      get copyWith => throw _privateConstructorUsedError;
}
