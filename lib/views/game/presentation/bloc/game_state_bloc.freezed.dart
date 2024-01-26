// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameStateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int duration) timerStarted,
    required TResult Function() timerPaused,
    required TResult Function() timerResumed,
    required TResult Function() timerReset,
    required TResult Function(int duration) timerTicked,
    required TResult Function(Color actualColor) lapUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int duration)? timerStarted,
    TResult? Function()? timerPaused,
    TResult? Function()? timerResumed,
    TResult? Function()? timerReset,
    TResult? Function(int duration)? timerTicked,
    TResult? Function(Color actualColor)? lapUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int duration)? timerStarted,
    TResult Function()? timerPaused,
    TResult Function()? timerResumed,
    TResult Function()? timerReset,
    TResult Function(int duration)? timerTicked,
    TResult Function(Color actualColor)? lapUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStarted value) started,
    required TResult Function(TimerStarted value) timerStarted,
    required TResult Function(TimerPaused value) timerPaused,
    required TResult Function(TimerResumed value) timerResumed,
    required TResult Function(TimerReset value) timerReset,
    required TResult Function(TimerTicked value) timerTicked,
    required TResult Function(_LapUpdated value) lapUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStarted value)? started,
    TResult? Function(TimerStarted value)? timerStarted,
    TResult? Function(TimerPaused value)? timerPaused,
    TResult? Function(TimerResumed value)? timerResumed,
    TResult? Function(TimerReset value)? timerReset,
    TResult? Function(TimerTicked value)? timerTicked,
    TResult? Function(_LapUpdated value)? lapUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStarted value)? started,
    TResult Function(TimerStarted value)? timerStarted,
    TResult Function(TimerPaused value)? timerPaused,
    TResult Function(TimerResumed value)? timerResumed,
    TResult Function(TimerReset value)? timerReset,
    TResult Function(TimerTicked value)? timerTicked,
    TResult Function(_LapUpdated value)? lapUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateEventCopyWith<$Res> {
  factory $GameStateEventCopyWith(
          GameStateEvent value, $Res Function(GameStateEvent) then) =
      _$GameStateEventCopyWithImpl<$Res, GameStateEvent>;
}

/// @nodoc
class _$GameStateEventCopyWithImpl<$Res, $Val extends GameStateEvent>
    implements $GameStateEventCopyWith<$Res> {
  _$GameStateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GameStartedImplCopyWith<$Res> {
  factory _$$GameStartedImplCopyWith(
          _$GameStartedImpl value, $Res Function(_$GameStartedImpl) then) =
      __$$GameStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GameStartedImplCopyWithImpl<$Res>
    extends _$GameStateEventCopyWithImpl<$Res, _$GameStartedImpl>
    implements _$$GameStartedImplCopyWith<$Res> {
  __$$GameStartedImplCopyWithImpl(
      _$GameStartedImpl _value, $Res Function(_$GameStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GameStartedImpl implements GameStarted {
  const _$GameStartedImpl();

  @override
  String toString() {
    return 'GameStateEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GameStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int duration) timerStarted,
    required TResult Function() timerPaused,
    required TResult Function() timerResumed,
    required TResult Function() timerReset,
    required TResult Function(int duration) timerTicked,
    required TResult Function(Color actualColor) lapUpdated,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int duration)? timerStarted,
    TResult? Function()? timerPaused,
    TResult? Function()? timerResumed,
    TResult? Function()? timerReset,
    TResult? Function(int duration)? timerTicked,
    TResult? Function(Color actualColor)? lapUpdated,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int duration)? timerStarted,
    TResult Function()? timerPaused,
    TResult Function()? timerResumed,
    TResult Function()? timerReset,
    TResult Function(int duration)? timerTicked,
    TResult Function(Color actualColor)? lapUpdated,
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
    required TResult Function(GameStarted value) started,
    required TResult Function(TimerStarted value) timerStarted,
    required TResult Function(TimerPaused value) timerPaused,
    required TResult Function(TimerResumed value) timerResumed,
    required TResult Function(TimerReset value) timerReset,
    required TResult Function(TimerTicked value) timerTicked,
    required TResult Function(_LapUpdated value) lapUpdated,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStarted value)? started,
    TResult? Function(TimerStarted value)? timerStarted,
    TResult? Function(TimerPaused value)? timerPaused,
    TResult? Function(TimerResumed value)? timerResumed,
    TResult? Function(TimerReset value)? timerReset,
    TResult? Function(TimerTicked value)? timerTicked,
    TResult? Function(_LapUpdated value)? lapUpdated,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStarted value)? started,
    TResult Function(TimerStarted value)? timerStarted,
    TResult Function(TimerPaused value)? timerPaused,
    TResult Function(TimerResumed value)? timerResumed,
    TResult Function(TimerReset value)? timerReset,
    TResult Function(TimerTicked value)? timerTicked,
    TResult Function(_LapUpdated value)? lapUpdated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class GameStarted implements GameStateEvent {
  const factory GameStarted() = _$GameStartedImpl;
}

/// @nodoc
abstract class _$$TimerStartedImplCopyWith<$Res> {
  factory _$$TimerStartedImplCopyWith(
          _$TimerStartedImpl value, $Res Function(_$TimerStartedImpl) then) =
      __$$TimerStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$TimerStartedImplCopyWithImpl<$Res>
    extends _$GameStateEventCopyWithImpl<$Res, _$TimerStartedImpl>
    implements _$$TimerStartedImplCopyWith<$Res> {
  __$$TimerStartedImplCopyWithImpl(
      _$TimerStartedImpl _value, $Res Function(_$TimerStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$TimerStartedImpl(
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TimerStartedImpl implements TimerStarted {
  const _$TimerStartedImpl(this.duration);

  @override
  final int duration;

  @override
  String toString() {
    return 'GameStateEvent.timerStarted(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerStartedImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerStartedImplCopyWith<_$TimerStartedImpl> get copyWith =>
      __$$TimerStartedImplCopyWithImpl<_$TimerStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int duration) timerStarted,
    required TResult Function() timerPaused,
    required TResult Function() timerResumed,
    required TResult Function() timerReset,
    required TResult Function(int duration) timerTicked,
    required TResult Function(Color actualColor) lapUpdated,
  }) {
    return timerStarted(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int duration)? timerStarted,
    TResult? Function()? timerPaused,
    TResult? Function()? timerResumed,
    TResult? Function()? timerReset,
    TResult? Function(int duration)? timerTicked,
    TResult? Function(Color actualColor)? lapUpdated,
  }) {
    return timerStarted?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int duration)? timerStarted,
    TResult Function()? timerPaused,
    TResult Function()? timerResumed,
    TResult Function()? timerReset,
    TResult Function(int duration)? timerTicked,
    TResult Function(Color actualColor)? lapUpdated,
    required TResult orElse(),
  }) {
    if (timerStarted != null) {
      return timerStarted(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStarted value) started,
    required TResult Function(TimerStarted value) timerStarted,
    required TResult Function(TimerPaused value) timerPaused,
    required TResult Function(TimerResumed value) timerResumed,
    required TResult Function(TimerReset value) timerReset,
    required TResult Function(TimerTicked value) timerTicked,
    required TResult Function(_LapUpdated value) lapUpdated,
  }) {
    return timerStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStarted value)? started,
    TResult? Function(TimerStarted value)? timerStarted,
    TResult? Function(TimerPaused value)? timerPaused,
    TResult? Function(TimerResumed value)? timerResumed,
    TResult? Function(TimerReset value)? timerReset,
    TResult? Function(TimerTicked value)? timerTicked,
    TResult? Function(_LapUpdated value)? lapUpdated,
  }) {
    return timerStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStarted value)? started,
    TResult Function(TimerStarted value)? timerStarted,
    TResult Function(TimerPaused value)? timerPaused,
    TResult Function(TimerResumed value)? timerResumed,
    TResult Function(TimerReset value)? timerReset,
    TResult Function(TimerTicked value)? timerTicked,
    TResult Function(_LapUpdated value)? lapUpdated,
    required TResult orElse(),
  }) {
    if (timerStarted != null) {
      return timerStarted(this);
    }
    return orElse();
  }
}

abstract class TimerStarted implements GameStateEvent {
  const factory TimerStarted(final int duration) = _$TimerStartedImpl;

  int get duration;
  @JsonKey(ignore: true)
  _$$TimerStartedImplCopyWith<_$TimerStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimerPausedImplCopyWith<$Res> {
  factory _$$TimerPausedImplCopyWith(
          _$TimerPausedImpl value, $Res Function(_$TimerPausedImpl) then) =
      __$$TimerPausedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerPausedImplCopyWithImpl<$Res>
    extends _$GameStateEventCopyWithImpl<$Res, _$TimerPausedImpl>
    implements _$$TimerPausedImplCopyWith<$Res> {
  __$$TimerPausedImplCopyWithImpl(
      _$TimerPausedImpl _value, $Res Function(_$TimerPausedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerPausedImpl implements TimerPaused {
  const _$TimerPausedImpl();

  @override
  String toString() {
    return 'GameStateEvent.timerPaused()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerPausedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int duration) timerStarted,
    required TResult Function() timerPaused,
    required TResult Function() timerResumed,
    required TResult Function() timerReset,
    required TResult Function(int duration) timerTicked,
    required TResult Function(Color actualColor) lapUpdated,
  }) {
    return timerPaused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int duration)? timerStarted,
    TResult? Function()? timerPaused,
    TResult? Function()? timerResumed,
    TResult? Function()? timerReset,
    TResult? Function(int duration)? timerTicked,
    TResult? Function(Color actualColor)? lapUpdated,
  }) {
    return timerPaused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int duration)? timerStarted,
    TResult Function()? timerPaused,
    TResult Function()? timerResumed,
    TResult Function()? timerReset,
    TResult Function(int duration)? timerTicked,
    TResult Function(Color actualColor)? lapUpdated,
    required TResult orElse(),
  }) {
    if (timerPaused != null) {
      return timerPaused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStarted value) started,
    required TResult Function(TimerStarted value) timerStarted,
    required TResult Function(TimerPaused value) timerPaused,
    required TResult Function(TimerResumed value) timerResumed,
    required TResult Function(TimerReset value) timerReset,
    required TResult Function(TimerTicked value) timerTicked,
    required TResult Function(_LapUpdated value) lapUpdated,
  }) {
    return timerPaused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStarted value)? started,
    TResult? Function(TimerStarted value)? timerStarted,
    TResult? Function(TimerPaused value)? timerPaused,
    TResult? Function(TimerResumed value)? timerResumed,
    TResult? Function(TimerReset value)? timerReset,
    TResult? Function(TimerTicked value)? timerTicked,
    TResult? Function(_LapUpdated value)? lapUpdated,
  }) {
    return timerPaused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStarted value)? started,
    TResult Function(TimerStarted value)? timerStarted,
    TResult Function(TimerPaused value)? timerPaused,
    TResult Function(TimerResumed value)? timerResumed,
    TResult Function(TimerReset value)? timerReset,
    TResult Function(TimerTicked value)? timerTicked,
    TResult Function(_LapUpdated value)? lapUpdated,
    required TResult orElse(),
  }) {
    if (timerPaused != null) {
      return timerPaused(this);
    }
    return orElse();
  }
}

abstract class TimerPaused implements GameStateEvent {
  const factory TimerPaused() = _$TimerPausedImpl;
}

/// @nodoc
abstract class _$$TimerResumedImplCopyWith<$Res> {
  factory _$$TimerResumedImplCopyWith(
          _$TimerResumedImpl value, $Res Function(_$TimerResumedImpl) then) =
      __$$TimerResumedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerResumedImplCopyWithImpl<$Res>
    extends _$GameStateEventCopyWithImpl<$Res, _$TimerResumedImpl>
    implements _$$TimerResumedImplCopyWith<$Res> {
  __$$TimerResumedImplCopyWithImpl(
      _$TimerResumedImpl _value, $Res Function(_$TimerResumedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerResumedImpl implements TimerResumed {
  const _$TimerResumedImpl();

  @override
  String toString() {
    return 'GameStateEvent.timerResumed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerResumedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int duration) timerStarted,
    required TResult Function() timerPaused,
    required TResult Function() timerResumed,
    required TResult Function() timerReset,
    required TResult Function(int duration) timerTicked,
    required TResult Function(Color actualColor) lapUpdated,
  }) {
    return timerResumed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int duration)? timerStarted,
    TResult? Function()? timerPaused,
    TResult? Function()? timerResumed,
    TResult? Function()? timerReset,
    TResult? Function(int duration)? timerTicked,
    TResult? Function(Color actualColor)? lapUpdated,
  }) {
    return timerResumed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int duration)? timerStarted,
    TResult Function()? timerPaused,
    TResult Function()? timerResumed,
    TResult Function()? timerReset,
    TResult Function(int duration)? timerTicked,
    TResult Function(Color actualColor)? lapUpdated,
    required TResult orElse(),
  }) {
    if (timerResumed != null) {
      return timerResumed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStarted value) started,
    required TResult Function(TimerStarted value) timerStarted,
    required TResult Function(TimerPaused value) timerPaused,
    required TResult Function(TimerResumed value) timerResumed,
    required TResult Function(TimerReset value) timerReset,
    required TResult Function(TimerTicked value) timerTicked,
    required TResult Function(_LapUpdated value) lapUpdated,
  }) {
    return timerResumed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStarted value)? started,
    TResult? Function(TimerStarted value)? timerStarted,
    TResult? Function(TimerPaused value)? timerPaused,
    TResult? Function(TimerResumed value)? timerResumed,
    TResult? Function(TimerReset value)? timerReset,
    TResult? Function(TimerTicked value)? timerTicked,
    TResult? Function(_LapUpdated value)? lapUpdated,
  }) {
    return timerResumed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStarted value)? started,
    TResult Function(TimerStarted value)? timerStarted,
    TResult Function(TimerPaused value)? timerPaused,
    TResult Function(TimerResumed value)? timerResumed,
    TResult Function(TimerReset value)? timerReset,
    TResult Function(TimerTicked value)? timerTicked,
    TResult Function(_LapUpdated value)? lapUpdated,
    required TResult orElse(),
  }) {
    if (timerResumed != null) {
      return timerResumed(this);
    }
    return orElse();
  }
}

abstract class TimerResumed implements GameStateEvent {
  const factory TimerResumed() = _$TimerResumedImpl;
}

/// @nodoc
abstract class _$$TimerResetImplCopyWith<$Res> {
  factory _$$TimerResetImplCopyWith(
          _$TimerResetImpl value, $Res Function(_$TimerResetImpl) then) =
      __$$TimerResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerResetImplCopyWithImpl<$Res>
    extends _$GameStateEventCopyWithImpl<$Res, _$TimerResetImpl>
    implements _$$TimerResetImplCopyWith<$Res> {
  __$$TimerResetImplCopyWithImpl(
      _$TimerResetImpl _value, $Res Function(_$TimerResetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerResetImpl implements TimerReset {
  const _$TimerResetImpl();

  @override
  String toString() {
    return 'GameStateEvent.timerReset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int duration) timerStarted,
    required TResult Function() timerPaused,
    required TResult Function() timerResumed,
    required TResult Function() timerReset,
    required TResult Function(int duration) timerTicked,
    required TResult Function(Color actualColor) lapUpdated,
  }) {
    return timerReset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int duration)? timerStarted,
    TResult? Function()? timerPaused,
    TResult? Function()? timerResumed,
    TResult? Function()? timerReset,
    TResult? Function(int duration)? timerTicked,
    TResult? Function(Color actualColor)? lapUpdated,
  }) {
    return timerReset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int duration)? timerStarted,
    TResult Function()? timerPaused,
    TResult Function()? timerResumed,
    TResult Function()? timerReset,
    TResult Function(int duration)? timerTicked,
    TResult Function(Color actualColor)? lapUpdated,
    required TResult orElse(),
  }) {
    if (timerReset != null) {
      return timerReset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStarted value) started,
    required TResult Function(TimerStarted value) timerStarted,
    required TResult Function(TimerPaused value) timerPaused,
    required TResult Function(TimerResumed value) timerResumed,
    required TResult Function(TimerReset value) timerReset,
    required TResult Function(TimerTicked value) timerTicked,
    required TResult Function(_LapUpdated value) lapUpdated,
  }) {
    return timerReset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStarted value)? started,
    TResult? Function(TimerStarted value)? timerStarted,
    TResult? Function(TimerPaused value)? timerPaused,
    TResult? Function(TimerResumed value)? timerResumed,
    TResult? Function(TimerReset value)? timerReset,
    TResult? Function(TimerTicked value)? timerTicked,
    TResult? Function(_LapUpdated value)? lapUpdated,
  }) {
    return timerReset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStarted value)? started,
    TResult Function(TimerStarted value)? timerStarted,
    TResult Function(TimerPaused value)? timerPaused,
    TResult Function(TimerResumed value)? timerResumed,
    TResult Function(TimerReset value)? timerReset,
    TResult Function(TimerTicked value)? timerTicked,
    TResult Function(_LapUpdated value)? lapUpdated,
    required TResult orElse(),
  }) {
    if (timerReset != null) {
      return timerReset(this);
    }
    return orElse();
  }
}

abstract class TimerReset implements GameStateEvent {
  const factory TimerReset() = _$TimerResetImpl;
}

/// @nodoc
abstract class _$$TimerTickedImplCopyWith<$Res> {
  factory _$$TimerTickedImplCopyWith(
          _$TimerTickedImpl value, $Res Function(_$TimerTickedImpl) then) =
      __$$TimerTickedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$TimerTickedImplCopyWithImpl<$Res>
    extends _$GameStateEventCopyWithImpl<$Res, _$TimerTickedImpl>
    implements _$$TimerTickedImplCopyWith<$Res> {
  __$$TimerTickedImplCopyWithImpl(
      _$TimerTickedImpl _value, $Res Function(_$TimerTickedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$TimerTickedImpl(
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TimerTickedImpl implements TimerTicked {
  const _$TimerTickedImpl(this.duration);

  @override
  final int duration;

  @override
  String toString() {
    return 'GameStateEvent.timerTicked(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerTickedImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerTickedImplCopyWith<_$TimerTickedImpl> get copyWith =>
      __$$TimerTickedImplCopyWithImpl<_$TimerTickedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int duration) timerStarted,
    required TResult Function() timerPaused,
    required TResult Function() timerResumed,
    required TResult Function() timerReset,
    required TResult Function(int duration) timerTicked,
    required TResult Function(Color actualColor) lapUpdated,
  }) {
    return timerTicked(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int duration)? timerStarted,
    TResult? Function()? timerPaused,
    TResult? Function()? timerResumed,
    TResult? Function()? timerReset,
    TResult? Function(int duration)? timerTicked,
    TResult? Function(Color actualColor)? lapUpdated,
  }) {
    return timerTicked?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int duration)? timerStarted,
    TResult Function()? timerPaused,
    TResult Function()? timerResumed,
    TResult Function()? timerReset,
    TResult Function(int duration)? timerTicked,
    TResult Function(Color actualColor)? lapUpdated,
    required TResult orElse(),
  }) {
    if (timerTicked != null) {
      return timerTicked(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStarted value) started,
    required TResult Function(TimerStarted value) timerStarted,
    required TResult Function(TimerPaused value) timerPaused,
    required TResult Function(TimerResumed value) timerResumed,
    required TResult Function(TimerReset value) timerReset,
    required TResult Function(TimerTicked value) timerTicked,
    required TResult Function(_LapUpdated value) lapUpdated,
  }) {
    return timerTicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStarted value)? started,
    TResult? Function(TimerStarted value)? timerStarted,
    TResult? Function(TimerPaused value)? timerPaused,
    TResult? Function(TimerResumed value)? timerResumed,
    TResult? Function(TimerReset value)? timerReset,
    TResult? Function(TimerTicked value)? timerTicked,
    TResult? Function(_LapUpdated value)? lapUpdated,
  }) {
    return timerTicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStarted value)? started,
    TResult Function(TimerStarted value)? timerStarted,
    TResult Function(TimerPaused value)? timerPaused,
    TResult Function(TimerResumed value)? timerResumed,
    TResult Function(TimerReset value)? timerReset,
    TResult Function(TimerTicked value)? timerTicked,
    TResult Function(_LapUpdated value)? lapUpdated,
    required TResult orElse(),
  }) {
    if (timerTicked != null) {
      return timerTicked(this);
    }
    return orElse();
  }
}

abstract class TimerTicked implements GameStateEvent {
  const factory TimerTicked(final int duration) = _$TimerTickedImpl;

  int get duration;
  @JsonKey(ignore: true)
  _$$TimerTickedImplCopyWith<_$TimerTickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LapUpdatedImplCopyWith<$Res> {
  factory _$$LapUpdatedImplCopyWith(
          _$LapUpdatedImpl value, $Res Function(_$LapUpdatedImpl) then) =
      __$$LapUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Color actualColor});
}

/// @nodoc
class __$$LapUpdatedImplCopyWithImpl<$Res>
    extends _$GameStateEventCopyWithImpl<$Res, _$LapUpdatedImpl>
    implements _$$LapUpdatedImplCopyWith<$Res> {
  __$$LapUpdatedImplCopyWithImpl(
      _$LapUpdatedImpl _value, $Res Function(_$LapUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actualColor = null,
  }) {
    return _then(_$LapUpdatedImpl(
      null == actualColor
          ? _value.actualColor
          : actualColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$LapUpdatedImpl implements _LapUpdated {
  const _$LapUpdatedImpl(this.actualColor);

  @override
  final Color actualColor;

  @override
  String toString() {
    return 'GameStateEvent.lapUpdated(actualColor: $actualColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LapUpdatedImpl &&
            (identical(other.actualColor, actualColor) ||
                other.actualColor == actualColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, actualColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LapUpdatedImplCopyWith<_$LapUpdatedImpl> get copyWith =>
      __$$LapUpdatedImplCopyWithImpl<_$LapUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int duration) timerStarted,
    required TResult Function() timerPaused,
    required TResult Function() timerResumed,
    required TResult Function() timerReset,
    required TResult Function(int duration) timerTicked,
    required TResult Function(Color actualColor) lapUpdated,
  }) {
    return lapUpdated(actualColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int duration)? timerStarted,
    TResult? Function()? timerPaused,
    TResult? Function()? timerResumed,
    TResult? Function()? timerReset,
    TResult? Function(int duration)? timerTicked,
    TResult? Function(Color actualColor)? lapUpdated,
  }) {
    return lapUpdated?.call(actualColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int duration)? timerStarted,
    TResult Function()? timerPaused,
    TResult Function()? timerResumed,
    TResult Function()? timerReset,
    TResult Function(int duration)? timerTicked,
    TResult Function(Color actualColor)? lapUpdated,
    required TResult orElse(),
  }) {
    if (lapUpdated != null) {
      return lapUpdated(actualColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStarted value) started,
    required TResult Function(TimerStarted value) timerStarted,
    required TResult Function(TimerPaused value) timerPaused,
    required TResult Function(TimerResumed value) timerResumed,
    required TResult Function(TimerReset value) timerReset,
    required TResult Function(TimerTicked value) timerTicked,
    required TResult Function(_LapUpdated value) lapUpdated,
  }) {
    return lapUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStarted value)? started,
    TResult? Function(TimerStarted value)? timerStarted,
    TResult? Function(TimerPaused value)? timerPaused,
    TResult? Function(TimerResumed value)? timerResumed,
    TResult? Function(TimerReset value)? timerReset,
    TResult? Function(TimerTicked value)? timerTicked,
    TResult? Function(_LapUpdated value)? lapUpdated,
  }) {
    return lapUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStarted value)? started,
    TResult Function(TimerStarted value)? timerStarted,
    TResult Function(TimerPaused value)? timerPaused,
    TResult Function(TimerResumed value)? timerResumed,
    TResult Function(TimerReset value)? timerReset,
    TResult Function(TimerTicked value)? timerTicked,
    TResult Function(_LapUpdated value)? lapUpdated,
    required TResult orElse(),
  }) {
    if (lapUpdated != null) {
      return lapUpdated(this);
    }
    return orElse();
  }
}

abstract class _LapUpdated implements GameStateEvent {
  const factory _LapUpdated(final Color actualColor) = _$LapUpdatedImpl;

  Color get actualColor;
  @JsonKey(ignore: true)
  _$$LapUpdatedImplCopyWith<_$LapUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameStateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) initial,
    required TResult Function(int duration) timerRunInProgress,
    required TResult Function(int points) pointUpdate,
    required TResult Function(Color color, String driverName) newDesiredColor,
    required TResult Function() timerRunComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? initial,
    TResult? Function(int duration)? timerRunInProgress,
    TResult? Function(int points)? pointUpdate,
    TResult? Function(Color color, String driverName)? newDesiredColor,
    TResult? Function()? timerRunComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? initial,
    TResult Function(int duration)? timerRunInProgress,
    TResult Function(int points)? pointUpdate,
    TResult Function(Color color, String driverName)? newDesiredColor,
    TResult Function()? timerRunComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateInitial value) initial,
    required TResult Function(TimerRunInProgress value) timerRunInProgress,
    required TResult Function(PointUpdate value) pointUpdate,
    required TResult Function(NewDesiredColor value) newDesiredColor,
    required TResult Function(TimerRunComplete value) timerRunComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateInitial value)? initial,
    TResult? Function(TimerRunInProgress value)? timerRunInProgress,
    TResult? Function(PointUpdate value)? pointUpdate,
    TResult? Function(NewDesiredColor value)? newDesiredColor,
    TResult? Function(TimerRunComplete value)? timerRunComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateInitial value)? initial,
    TResult Function(TimerRunInProgress value)? timerRunInProgress,
    TResult Function(PointUpdate value)? pointUpdate,
    TResult Function(NewDesiredColor value)? newDesiredColor,
    TResult Function(TimerRunComplete value)? timerRunComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateStateCopyWith<$Res> {
  factory $GameStateStateCopyWith(
          GameStateState value, $Res Function(GameStateState) then) =
      _$GameStateStateCopyWithImpl<$Res, GameStateState>;
}

/// @nodoc
class _$GameStateStateCopyWithImpl<$Res, $Val extends GameStateState>
    implements $GameStateStateCopyWith<$Res> {
  _$GameStateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GameStateInitialImplCopyWith<$Res> {
  factory _$$GameStateInitialImplCopyWith(_$GameStateInitialImpl value,
          $Res Function(_$GameStateInitialImpl) then) =
      __$$GameStateInitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$GameStateInitialImplCopyWithImpl<$Res>
    extends _$GameStateStateCopyWithImpl<$Res, _$GameStateInitialImpl>
    implements _$$GameStateInitialImplCopyWith<$Res> {
  __$$GameStateInitialImplCopyWithImpl(_$GameStateInitialImpl _value,
      $Res Function(_$GameStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$GameStateInitialImpl(
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GameStateInitialImpl implements GameStateInitial {
  _$GameStateInitialImpl(this.duration);

  @override
  final int duration;

  @override
  String toString() {
    return 'GameStateState.initial(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateInitialImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateInitialImplCopyWith<_$GameStateInitialImpl> get copyWith =>
      __$$GameStateInitialImplCopyWithImpl<_$GameStateInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) initial,
    required TResult Function(int duration) timerRunInProgress,
    required TResult Function(int points) pointUpdate,
    required TResult Function(Color color, String driverName) newDesiredColor,
    required TResult Function() timerRunComplete,
  }) {
    return initial(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? initial,
    TResult? Function(int duration)? timerRunInProgress,
    TResult? Function(int points)? pointUpdate,
    TResult? Function(Color color, String driverName)? newDesiredColor,
    TResult? Function()? timerRunComplete,
  }) {
    return initial?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? initial,
    TResult Function(int duration)? timerRunInProgress,
    TResult Function(int points)? pointUpdate,
    TResult Function(Color color, String driverName)? newDesiredColor,
    TResult Function()? timerRunComplete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateInitial value) initial,
    required TResult Function(TimerRunInProgress value) timerRunInProgress,
    required TResult Function(PointUpdate value) pointUpdate,
    required TResult Function(NewDesiredColor value) newDesiredColor,
    required TResult Function(TimerRunComplete value) timerRunComplete,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateInitial value)? initial,
    TResult? Function(TimerRunInProgress value)? timerRunInProgress,
    TResult? Function(PointUpdate value)? pointUpdate,
    TResult? Function(NewDesiredColor value)? newDesiredColor,
    TResult? Function(TimerRunComplete value)? timerRunComplete,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateInitial value)? initial,
    TResult Function(TimerRunInProgress value)? timerRunInProgress,
    TResult Function(PointUpdate value)? pointUpdate,
    TResult Function(NewDesiredColor value)? newDesiredColor,
    TResult Function(TimerRunComplete value)? timerRunComplete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GameStateInitial implements GameStateState {
  factory GameStateInitial(final int duration) = _$GameStateInitialImpl;

  int get duration;
  @JsonKey(ignore: true)
  _$$GameStateInitialImplCopyWith<_$GameStateInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimerRunInProgressImplCopyWith<$Res> {
  factory _$$TimerRunInProgressImplCopyWith(_$TimerRunInProgressImpl value,
          $Res Function(_$TimerRunInProgressImpl) then) =
      __$$TimerRunInProgressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$TimerRunInProgressImplCopyWithImpl<$Res>
    extends _$GameStateStateCopyWithImpl<$Res, _$TimerRunInProgressImpl>
    implements _$$TimerRunInProgressImplCopyWith<$Res> {
  __$$TimerRunInProgressImplCopyWithImpl(_$TimerRunInProgressImpl _value,
      $Res Function(_$TimerRunInProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$TimerRunInProgressImpl(
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TimerRunInProgressImpl implements TimerRunInProgress {
  _$TimerRunInProgressImpl(this.duration);

  @override
  final int duration;

  @override
  String toString() {
    return 'GameStateState.timerRunInProgress(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerRunInProgressImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerRunInProgressImplCopyWith<_$TimerRunInProgressImpl> get copyWith =>
      __$$TimerRunInProgressImplCopyWithImpl<_$TimerRunInProgressImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) initial,
    required TResult Function(int duration) timerRunInProgress,
    required TResult Function(int points) pointUpdate,
    required TResult Function(Color color, String driverName) newDesiredColor,
    required TResult Function() timerRunComplete,
  }) {
    return timerRunInProgress(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? initial,
    TResult? Function(int duration)? timerRunInProgress,
    TResult? Function(int points)? pointUpdate,
    TResult? Function(Color color, String driverName)? newDesiredColor,
    TResult? Function()? timerRunComplete,
  }) {
    return timerRunInProgress?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? initial,
    TResult Function(int duration)? timerRunInProgress,
    TResult Function(int points)? pointUpdate,
    TResult Function(Color color, String driverName)? newDesiredColor,
    TResult Function()? timerRunComplete,
    required TResult orElse(),
  }) {
    if (timerRunInProgress != null) {
      return timerRunInProgress(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateInitial value) initial,
    required TResult Function(TimerRunInProgress value) timerRunInProgress,
    required TResult Function(PointUpdate value) pointUpdate,
    required TResult Function(NewDesiredColor value) newDesiredColor,
    required TResult Function(TimerRunComplete value) timerRunComplete,
  }) {
    return timerRunInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateInitial value)? initial,
    TResult? Function(TimerRunInProgress value)? timerRunInProgress,
    TResult? Function(PointUpdate value)? pointUpdate,
    TResult? Function(NewDesiredColor value)? newDesiredColor,
    TResult? Function(TimerRunComplete value)? timerRunComplete,
  }) {
    return timerRunInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateInitial value)? initial,
    TResult Function(TimerRunInProgress value)? timerRunInProgress,
    TResult Function(PointUpdate value)? pointUpdate,
    TResult Function(NewDesiredColor value)? newDesiredColor,
    TResult Function(TimerRunComplete value)? timerRunComplete,
    required TResult orElse(),
  }) {
    if (timerRunInProgress != null) {
      return timerRunInProgress(this);
    }
    return orElse();
  }
}

abstract class TimerRunInProgress implements GameStateState {
  factory TimerRunInProgress(final int duration) = _$TimerRunInProgressImpl;

  int get duration;
  @JsonKey(ignore: true)
  _$$TimerRunInProgressImplCopyWith<_$TimerRunInProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PointUpdateImplCopyWith<$Res> {
  factory _$$PointUpdateImplCopyWith(
          _$PointUpdateImpl value, $Res Function(_$PointUpdateImpl) then) =
      __$$PointUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int points});
}

/// @nodoc
class __$$PointUpdateImplCopyWithImpl<$Res>
    extends _$GameStateStateCopyWithImpl<$Res, _$PointUpdateImpl>
    implements _$$PointUpdateImplCopyWith<$Res> {
  __$$PointUpdateImplCopyWithImpl(
      _$PointUpdateImpl _value, $Res Function(_$PointUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
  }) {
    return _then(_$PointUpdateImpl(
      null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PointUpdateImpl implements PointUpdate {
  _$PointUpdateImpl(this.points);

  @override
  final int points;

  @override
  String toString() {
    return 'GameStateState.pointUpdate(points: $points)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PointUpdateImpl &&
            (identical(other.points, points) || other.points == points));
  }

  @override
  int get hashCode => Object.hash(runtimeType, points);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PointUpdateImplCopyWith<_$PointUpdateImpl> get copyWith =>
      __$$PointUpdateImplCopyWithImpl<_$PointUpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) initial,
    required TResult Function(int duration) timerRunInProgress,
    required TResult Function(int points) pointUpdate,
    required TResult Function(Color color, String driverName) newDesiredColor,
    required TResult Function() timerRunComplete,
  }) {
    return pointUpdate(points);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? initial,
    TResult? Function(int duration)? timerRunInProgress,
    TResult? Function(int points)? pointUpdate,
    TResult? Function(Color color, String driverName)? newDesiredColor,
    TResult? Function()? timerRunComplete,
  }) {
    return pointUpdate?.call(points);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? initial,
    TResult Function(int duration)? timerRunInProgress,
    TResult Function(int points)? pointUpdate,
    TResult Function(Color color, String driverName)? newDesiredColor,
    TResult Function()? timerRunComplete,
    required TResult orElse(),
  }) {
    if (pointUpdate != null) {
      return pointUpdate(points);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateInitial value) initial,
    required TResult Function(TimerRunInProgress value) timerRunInProgress,
    required TResult Function(PointUpdate value) pointUpdate,
    required TResult Function(NewDesiredColor value) newDesiredColor,
    required TResult Function(TimerRunComplete value) timerRunComplete,
  }) {
    return pointUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateInitial value)? initial,
    TResult? Function(TimerRunInProgress value)? timerRunInProgress,
    TResult? Function(PointUpdate value)? pointUpdate,
    TResult? Function(NewDesiredColor value)? newDesiredColor,
    TResult? Function(TimerRunComplete value)? timerRunComplete,
  }) {
    return pointUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateInitial value)? initial,
    TResult Function(TimerRunInProgress value)? timerRunInProgress,
    TResult Function(PointUpdate value)? pointUpdate,
    TResult Function(NewDesiredColor value)? newDesiredColor,
    TResult Function(TimerRunComplete value)? timerRunComplete,
    required TResult orElse(),
  }) {
    if (pointUpdate != null) {
      return pointUpdate(this);
    }
    return orElse();
  }
}

abstract class PointUpdate implements GameStateState {
  factory PointUpdate(final int points) = _$PointUpdateImpl;

  int get points;
  @JsonKey(ignore: true)
  _$$PointUpdateImplCopyWith<_$PointUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewDesiredColorImplCopyWith<$Res> {
  factory _$$NewDesiredColorImplCopyWith(_$NewDesiredColorImpl value,
          $Res Function(_$NewDesiredColorImpl) then) =
      __$$NewDesiredColorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Color color, String driverName});
}

/// @nodoc
class __$$NewDesiredColorImplCopyWithImpl<$Res>
    extends _$GameStateStateCopyWithImpl<$Res, _$NewDesiredColorImpl>
    implements _$$NewDesiredColorImplCopyWith<$Res> {
  __$$NewDesiredColorImplCopyWithImpl(
      _$NewDesiredColorImpl _value, $Res Function(_$NewDesiredColorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? driverName = null,
  }) {
    return _then(_$NewDesiredColorImpl(
      null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      null == driverName
          ? _value.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NewDesiredColorImpl implements NewDesiredColor {
  _$NewDesiredColorImpl(this.color, this.driverName);

  @override
  final Color color;
  @override
  final String driverName;

  @override
  String toString() {
    return 'GameStateState.newDesiredColor(color: $color, driverName: $driverName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewDesiredColorImpl &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.driverName, driverName) ||
                other.driverName == driverName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color, driverName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewDesiredColorImplCopyWith<_$NewDesiredColorImpl> get copyWith =>
      __$$NewDesiredColorImplCopyWithImpl<_$NewDesiredColorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) initial,
    required TResult Function(int duration) timerRunInProgress,
    required TResult Function(int points) pointUpdate,
    required TResult Function(Color color, String driverName) newDesiredColor,
    required TResult Function() timerRunComplete,
  }) {
    return newDesiredColor(color, driverName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? initial,
    TResult? Function(int duration)? timerRunInProgress,
    TResult? Function(int points)? pointUpdate,
    TResult? Function(Color color, String driverName)? newDesiredColor,
    TResult? Function()? timerRunComplete,
  }) {
    return newDesiredColor?.call(color, driverName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? initial,
    TResult Function(int duration)? timerRunInProgress,
    TResult Function(int points)? pointUpdate,
    TResult Function(Color color, String driverName)? newDesiredColor,
    TResult Function()? timerRunComplete,
    required TResult orElse(),
  }) {
    if (newDesiredColor != null) {
      return newDesiredColor(color, driverName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateInitial value) initial,
    required TResult Function(TimerRunInProgress value) timerRunInProgress,
    required TResult Function(PointUpdate value) pointUpdate,
    required TResult Function(NewDesiredColor value) newDesiredColor,
    required TResult Function(TimerRunComplete value) timerRunComplete,
  }) {
    return newDesiredColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateInitial value)? initial,
    TResult? Function(TimerRunInProgress value)? timerRunInProgress,
    TResult? Function(PointUpdate value)? pointUpdate,
    TResult? Function(NewDesiredColor value)? newDesiredColor,
    TResult? Function(TimerRunComplete value)? timerRunComplete,
  }) {
    return newDesiredColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateInitial value)? initial,
    TResult Function(TimerRunInProgress value)? timerRunInProgress,
    TResult Function(PointUpdate value)? pointUpdate,
    TResult Function(NewDesiredColor value)? newDesiredColor,
    TResult Function(TimerRunComplete value)? timerRunComplete,
    required TResult orElse(),
  }) {
    if (newDesiredColor != null) {
      return newDesiredColor(this);
    }
    return orElse();
  }
}

abstract class NewDesiredColor implements GameStateState {
  factory NewDesiredColor(final Color color, final String driverName) =
      _$NewDesiredColorImpl;

  Color get color;
  String get driverName;
  @JsonKey(ignore: true)
  _$$NewDesiredColorImplCopyWith<_$NewDesiredColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimerRunCompleteImplCopyWith<$Res> {
  factory _$$TimerRunCompleteImplCopyWith(_$TimerRunCompleteImpl value,
          $Res Function(_$TimerRunCompleteImpl) then) =
      __$$TimerRunCompleteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerRunCompleteImplCopyWithImpl<$Res>
    extends _$GameStateStateCopyWithImpl<$Res, _$TimerRunCompleteImpl>
    implements _$$TimerRunCompleteImplCopyWith<$Res> {
  __$$TimerRunCompleteImplCopyWithImpl(_$TimerRunCompleteImpl _value,
      $Res Function(_$TimerRunCompleteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerRunCompleteImpl implements TimerRunComplete {
  _$TimerRunCompleteImpl();

  @override
  String toString() {
    return 'GameStateState.timerRunComplete()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerRunCompleteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) initial,
    required TResult Function(int duration) timerRunInProgress,
    required TResult Function(int points) pointUpdate,
    required TResult Function(Color color, String driverName) newDesiredColor,
    required TResult Function() timerRunComplete,
  }) {
    return timerRunComplete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? initial,
    TResult? Function(int duration)? timerRunInProgress,
    TResult? Function(int points)? pointUpdate,
    TResult? Function(Color color, String driverName)? newDesiredColor,
    TResult? Function()? timerRunComplete,
  }) {
    return timerRunComplete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? initial,
    TResult Function(int duration)? timerRunInProgress,
    TResult Function(int points)? pointUpdate,
    TResult Function(Color color, String driverName)? newDesiredColor,
    TResult Function()? timerRunComplete,
    required TResult orElse(),
  }) {
    if (timerRunComplete != null) {
      return timerRunComplete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateInitial value) initial,
    required TResult Function(TimerRunInProgress value) timerRunInProgress,
    required TResult Function(PointUpdate value) pointUpdate,
    required TResult Function(NewDesiredColor value) newDesiredColor,
    required TResult Function(TimerRunComplete value) timerRunComplete,
  }) {
    return timerRunComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateInitial value)? initial,
    TResult? Function(TimerRunInProgress value)? timerRunInProgress,
    TResult? Function(PointUpdate value)? pointUpdate,
    TResult? Function(NewDesiredColor value)? newDesiredColor,
    TResult? Function(TimerRunComplete value)? timerRunComplete,
  }) {
    return timerRunComplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateInitial value)? initial,
    TResult Function(TimerRunInProgress value)? timerRunInProgress,
    TResult Function(PointUpdate value)? pointUpdate,
    TResult Function(NewDesiredColor value)? newDesiredColor,
    TResult Function(TimerRunComplete value)? timerRunComplete,
    required TResult orElse(),
  }) {
    if (timerRunComplete != null) {
      return timerRunComplete(this);
    }
    return orElse();
  }
}

abstract class TimerRunComplete implements GameStateState {
  factory TimerRunComplete() = _$TimerRunCompleteImpl;
}
