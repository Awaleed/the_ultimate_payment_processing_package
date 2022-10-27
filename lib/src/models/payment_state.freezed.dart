// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() paid,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? paid,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? paid,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentLoadingState value) loading,
    required TResult Function(_PaymentPaidState value) paid,
    required TResult Function(_PaymentFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentLoadingState value)? loading,
    TResult? Function(_PaymentPaidState value)? paid,
    TResult? Function(_PaymentFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentLoadingState value)? loading,
    TResult Function(_PaymentPaidState value)? paid,
    TResult Function(_PaymentFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PaymentLoadingStateCopyWith<$Res> {
  factory _$$_PaymentLoadingStateCopyWith(_$_PaymentLoadingState value,
          $Res Function(_$_PaymentLoadingState) then) =
      __$$_PaymentLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PaymentLoadingStateCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_PaymentLoadingState>
    implements _$$_PaymentLoadingStateCopyWith<$Res> {
  __$$_PaymentLoadingStateCopyWithImpl(_$_PaymentLoadingState _value,
      $Res Function(_$_PaymentLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PaymentLoadingState implements _PaymentLoadingState {
  const _$_PaymentLoadingState();

  @override
  String toString() {
    return 'PaymentState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PaymentLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() paid,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? paid,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? paid,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentLoadingState value) loading,
    required TResult Function(_PaymentPaidState value) paid,
    required TResult Function(_PaymentFailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentLoadingState value)? loading,
    TResult? Function(_PaymentPaidState value)? paid,
    TResult? Function(_PaymentFailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentLoadingState value)? loading,
    TResult Function(_PaymentPaidState value)? paid,
    TResult Function(_PaymentFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PaymentLoadingState implements PaymentState {
  const factory _PaymentLoadingState() = _$_PaymentLoadingState;
}

/// @nodoc
abstract class _$$_PaymentPaidStateCopyWith<$Res> {
  factory _$$_PaymentPaidStateCopyWith(
          _$_PaymentPaidState value, $Res Function(_$_PaymentPaidState) then) =
      __$$_PaymentPaidStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PaymentPaidStateCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_PaymentPaidState>
    implements _$$_PaymentPaidStateCopyWith<$Res> {
  __$$_PaymentPaidStateCopyWithImpl(
      _$_PaymentPaidState _value, $Res Function(_$_PaymentPaidState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PaymentPaidState implements _PaymentPaidState {
  const _$_PaymentPaidState();

  @override
  String toString() {
    return 'PaymentState.paid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PaymentPaidState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() paid,
    required TResult Function(String error) failure,
  }) {
    return paid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? paid,
    TResult? Function(String error)? failure,
  }) {
    return paid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? paid,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (paid != null) {
      return paid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentLoadingState value) loading,
    required TResult Function(_PaymentPaidState value) paid,
    required TResult Function(_PaymentFailureState value) failure,
  }) {
    return paid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentLoadingState value)? loading,
    TResult? Function(_PaymentPaidState value)? paid,
    TResult? Function(_PaymentFailureState value)? failure,
  }) {
    return paid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentLoadingState value)? loading,
    TResult Function(_PaymentPaidState value)? paid,
    TResult Function(_PaymentFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (paid != null) {
      return paid(this);
    }
    return orElse();
  }
}

abstract class _PaymentPaidState implements PaymentState {
  const factory _PaymentPaidState() = _$_PaymentPaidState;
}

/// @nodoc
abstract class _$$_PaymentFailureStateCopyWith<$Res> {
  factory _$$_PaymentFailureStateCopyWith(_$_PaymentFailureState value,
          $Res Function(_$_PaymentFailureState) then) =
      __$$_PaymentFailureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_PaymentFailureStateCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_PaymentFailureState>
    implements _$$_PaymentFailureStateCopyWith<$Res> {
  __$$_PaymentFailureStateCopyWithImpl(_$_PaymentFailureState _value,
      $Res Function(_$_PaymentFailureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_PaymentFailureState(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PaymentFailureState implements _PaymentFailureState {
  const _$_PaymentFailureState(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'PaymentState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentFailureState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentFailureStateCopyWith<_$_PaymentFailureState> get copyWith =>
      __$$_PaymentFailureStateCopyWithImpl<_$_PaymentFailureState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() paid,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? paid,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? paid,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentLoadingState value) loading,
    required TResult Function(_PaymentPaidState value) paid,
    required TResult Function(_PaymentFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentLoadingState value)? loading,
    TResult? Function(_PaymentPaidState value)? paid,
    TResult? Function(_PaymentFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentLoadingState value)? loading,
    TResult Function(_PaymentPaidState value)? paid,
    TResult Function(_PaymentFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _PaymentFailureState implements PaymentState {
  const factory _PaymentFailureState(final String error) =
      _$_PaymentFailureState;

  String get error;
  @JsonKey(ignore: true)
  _$$_PaymentFailureStateCopyWith<_$_PaymentFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
