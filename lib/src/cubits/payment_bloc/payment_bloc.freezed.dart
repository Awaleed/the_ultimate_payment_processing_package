// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IPaymentProcessor paymentProcessor) pay,
    required TResult Function() checkPaymentStatus,
    required TResult Function() cancelCheckPaymentStatus,
    required TResult Function(String url) openUrl,
    required TResult Function(dynamic error) error,
    required TResult Function() paid,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IPaymentProcessor paymentProcessor)? pay,
    TResult? Function()? checkPaymentStatus,
    TResult? Function()? cancelCheckPaymentStatus,
    TResult? Function(String url)? openUrl,
    TResult? Function(dynamic error)? error,
    TResult? Function()? paid,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IPaymentProcessor paymentProcessor)? pay,
    TResult Function()? checkPaymentStatus,
    TResult Function()? cancelCheckPaymentStatus,
    TResult Function(String url)? openUrl,
    TResult Function(dynamic error)? error,
    TResult Function()? paid,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PayEvent value) pay,
    required TResult Function(_CheckPaymentStatusEvent value)
        checkPaymentStatus,
    required TResult Function(_CancelCheckPaymentStatusEvent value)
        cancelCheckPaymentStatus,
    required TResult Function(_OpenUrlEvent value) openUrl,
    required TResult Function(_ErrorEvent value) error,
    required TResult Function(_PaidEvent value) paid,
    required TResult Function(_LoadingEvent value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PayEvent value)? pay,
    TResult? Function(_CheckPaymentStatusEvent value)? checkPaymentStatus,
    TResult? Function(_CancelCheckPaymentStatusEvent value)?
        cancelCheckPaymentStatus,
    TResult? Function(_OpenUrlEvent value)? openUrl,
    TResult? Function(_ErrorEvent value)? error,
    TResult? Function(_PaidEvent value)? paid,
    TResult? Function(_LoadingEvent value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PayEvent value)? pay,
    TResult Function(_CheckPaymentStatusEvent value)? checkPaymentStatus,
    TResult Function(_CancelCheckPaymentStatusEvent value)?
        cancelCheckPaymentStatus,
    TResult Function(_OpenUrlEvent value)? openUrl,
    TResult Function(_ErrorEvent value)? error,
    TResult Function(_PaidEvent value)? paid,
    TResult Function(_LoadingEvent value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentBlocEventCopyWith<$Res> {
  factory $PaymentBlocEventCopyWith(
          PaymentBlocEvent value, $Res Function(PaymentBlocEvent) then) =
      _$PaymentBlocEventCopyWithImpl<$Res, PaymentBlocEvent>;
}

/// @nodoc
class _$PaymentBlocEventCopyWithImpl<$Res, $Val extends PaymentBlocEvent>
    implements $PaymentBlocEventCopyWith<$Res> {
  _$PaymentBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PayEventCopyWith<$Res> {
  factory _$$_PayEventCopyWith(
          _$_PayEvent value, $Res Function(_$_PayEvent) then) =
      __$$_PayEventCopyWithImpl<$Res>;
  @useResult
  $Res call({IPaymentProcessor paymentProcessor});
}

/// @nodoc
class __$$_PayEventCopyWithImpl<$Res>
    extends _$PaymentBlocEventCopyWithImpl<$Res, _$_PayEvent>
    implements _$$_PayEventCopyWith<$Res> {
  __$$_PayEventCopyWithImpl(
      _$_PayEvent _value, $Res Function(_$_PayEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentProcessor = null,
  }) {
    return _then(_$_PayEvent(
      null == paymentProcessor
          ? _value.paymentProcessor
          : paymentProcessor // ignore: cast_nullable_to_non_nullable
              as IPaymentProcessor,
    ));
  }
}

/// @nodoc

class _$_PayEvent extends _PayEvent with DiagnosticableTreeMixin {
  const _$_PayEvent(this.paymentProcessor) : super._();

  @override
  final IPaymentProcessor paymentProcessor;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentBlocEvent.pay(paymentProcessor: $paymentProcessor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentBlocEvent.pay'))
      ..add(DiagnosticsProperty('paymentProcessor', paymentProcessor));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PayEvent &&
            (identical(other.paymentProcessor, paymentProcessor) ||
                other.paymentProcessor == paymentProcessor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentProcessor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PayEventCopyWith<_$_PayEvent> get copyWith =>
      __$$_PayEventCopyWithImpl<_$_PayEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IPaymentProcessor paymentProcessor) pay,
    required TResult Function() checkPaymentStatus,
    required TResult Function() cancelCheckPaymentStatus,
    required TResult Function(String url) openUrl,
    required TResult Function(dynamic error) error,
    required TResult Function() paid,
    required TResult Function() loading,
  }) {
    return pay(paymentProcessor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IPaymentProcessor paymentProcessor)? pay,
    TResult? Function()? checkPaymentStatus,
    TResult? Function()? cancelCheckPaymentStatus,
    TResult? Function(String url)? openUrl,
    TResult? Function(dynamic error)? error,
    TResult? Function()? paid,
    TResult? Function()? loading,
  }) {
    return pay?.call(paymentProcessor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IPaymentProcessor paymentProcessor)? pay,
    TResult Function()? checkPaymentStatus,
    TResult Function()? cancelCheckPaymentStatus,
    TResult Function(String url)? openUrl,
    TResult Function(dynamic error)? error,
    TResult Function()? paid,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (pay != null) {
      return pay(paymentProcessor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PayEvent value) pay,
    required TResult Function(_CheckPaymentStatusEvent value)
        checkPaymentStatus,
    required TResult Function(_CancelCheckPaymentStatusEvent value)
        cancelCheckPaymentStatus,
    required TResult Function(_OpenUrlEvent value) openUrl,
    required TResult Function(_ErrorEvent value) error,
    required TResult Function(_PaidEvent value) paid,
    required TResult Function(_LoadingEvent value) loading,
  }) {
    return pay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PayEvent value)? pay,
    TResult? Function(_CheckPaymentStatusEvent value)? checkPaymentStatus,
    TResult? Function(_CancelCheckPaymentStatusEvent value)?
        cancelCheckPaymentStatus,
    TResult? Function(_OpenUrlEvent value)? openUrl,
    TResult? Function(_ErrorEvent value)? error,
    TResult? Function(_PaidEvent value)? paid,
    TResult? Function(_LoadingEvent value)? loading,
  }) {
    return pay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PayEvent value)? pay,
    TResult Function(_CheckPaymentStatusEvent value)? checkPaymentStatus,
    TResult Function(_CancelCheckPaymentStatusEvent value)?
        cancelCheckPaymentStatus,
    TResult Function(_OpenUrlEvent value)? openUrl,
    TResult Function(_ErrorEvent value)? error,
    TResult Function(_PaidEvent value)? paid,
    TResult Function(_LoadingEvent value)? loading,
    required TResult orElse(),
  }) {
    if (pay != null) {
      return pay(this);
    }
    return orElse();
  }
}

abstract class _PayEvent extends PaymentBlocEvent {
  const factory _PayEvent(final IPaymentProcessor paymentProcessor) =
      _$_PayEvent;
  const _PayEvent._() : super._();

  IPaymentProcessor get paymentProcessor;
  @JsonKey(ignore: true)
  _$$_PayEventCopyWith<_$_PayEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CheckPaymentStatusEventCopyWith<$Res> {
  factory _$$_CheckPaymentStatusEventCopyWith(_$_CheckPaymentStatusEvent value,
          $Res Function(_$_CheckPaymentStatusEvent) then) =
      __$$_CheckPaymentStatusEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckPaymentStatusEventCopyWithImpl<$Res>
    extends _$PaymentBlocEventCopyWithImpl<$Res, _$_CheckPaymentStatusEvent>
    implements _$$_CheckPaymentStatusEventCopyWith<$Res> {
  __$$_CheckPaymentStatusEventCopyWithImpl(_$_CheckPaymentStatusEvent _value,
      $Res Function(_$_CheckPaymentStatusEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CheckPaymentStatusEvent extends _CheckPaymentStatusEvent
    with DiagnosticableTreeMixin {
  const _$_CheckPaymentStatusEvent() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentBlocEvent.checkPaymentStatus()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'PaymentBlocEvent.checkPaymentStatus'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckPaymentStatusEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IPaymentProcessor paymentProcessor) pay,
    required TResult Function() checkPaymentStatus,
    required TResult Function() cancelCheckPaymentStatus,
    required TResult Function(String url) openUrl,
    required TResult Function(dynamic error) error,
    required TResult Function() paid,
    required TResult Function() loading,
  }) {
    return checkPaymentStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IPaymentProcessor paymentProcessor)? pay,
    TResult? Function()? checkPaymentStatus,
    TResult? Function()? cancelCheckPaymentStatus,
    TResult? Function(String url)? openUrl,
    TResult? Function(dynamic error)? error,
    TResult? Function()? paid,
    TResult? Function()? loading,
  }) {
    return checkPaymentStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IPaymentProcessor paymentProcessor)? pay,
    TResult Function()? checkPaymentStatus,
    TResult Function()? cancelCheckPaymentStatus,
    TResult Function(String url)? openUrl,
    TResult Function(dynamic error)? error,
    TResult Function()? paid,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (checkPaymentStatus != null) {
      return checkPaymentStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PayEvent value) pay,
    required TResult Function(_CheckPaymentStatusEvent value)
        checkPaymentStatus,
    required TResult Function(_CancelCheckPaymentStatusEvent value)
        cancelCheckPaymentStatus,
    required TResult Function(_OpenUrlEvent value) openUrl,
    required TResult Function(_ErrorEvent value) error,
    required TResult Function(_PaidEvent value) paid,
    required TResult Function(_LoadingEvent value) loading,
  }) {
    return checkPaymentStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PayEvent value)? pay,
    TResult? Function(_CheckPaymentStatusEvent value)? checkPaymentStatus,
    TResult? Function(_CancelCheckPaymentStatusEvent value)?
        cancelCheckPaymentStatus,
    TResult? Function(_OpenUrlEvent value)? openUrl,
    TResult? Function(_ErrorEvent value)? error,
    TResult? Function(_PaidEvent value)? paid,
    TResult? Function(_LoadingEvent value)? loading,
  }) {
    return checkPaymentStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PayEvent value)? pay,
    TResult Function(_CheckPaymentStatusEvent value)? checkPaymentStatus,
    TResult Function(_CancelCheckPaymentStatusEvent value)?
        cancelCheckPaymentStatus,
    TResult Function(_OpenUrlEvent value)? openUrl,
    TResult Function(_ErrorEvent value)? error,
    TResult Function(_PaidEvent value)? paid,
    TResult Function(_LoadingEvent value)? loading,
    required TResult orElse(),
  }) {
    if (checkPaymentStatus != null) {
      return checkPaymentStatus(this);
    }
    return orElse();
  }
}

abstract class _CheckPaymentStatusEvent extends PaymentBlocEvent {
  const factory _CheckPaymentStatusEvent() = _$_CheckPaymentStatusEvent;
  const _CheckPaymentStatusEvent._() : super._();
}

/// @nodoc
abstract class _$$_CancelCheckPaymentStatusEventCopyWith<$Res> {
  factory _$$_CancelCheckPaymentStatusEventCopyWith(
          _$_CancelCheckPaymentStatusEvent value,
          $Res Function(_$_CancelCheckPaymentStatusEvent) then) =
      __$$_CancelCheckPaymentStatusEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CancelCheckPaymentStatusEventCopyWithImpl<$Res>
    extends _$PaymentBlocEventCopyWithImpl<$Res,
        _$_CancelCheckPaymentStatusEvent>
    implements _$$_CancelCheckPaymentStatusEventCopyWith<$Res> {
  __$$_CancelCheckPaymentStatusEventCopyWithImpl(
      _$_CancelCheckPaymentStatusEvent _value,
      $Res Function(_$_CancelCheckPaymentStatusEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CancelCheckPaymentStatusEvent extends _CancelCheckPaymentStatusEvent
    with DiagnosticableTreeMixin {
  const _$_CancelCheckPaymentStatusEvent() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentBlocEvent.cancelCheckPaymentStatus()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'PaymentBlocEvent.cancelCheckPaymentStatus'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CancelCheckPaymentStatusEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IPaymentProcessor paymentProcessor) pay,
    required TResult Function() checkPaymentStatus,
    required TResult Function() cancelCheckPaymentStatus,
    required TResult Function(String url) openUrl,
    required TResult Function(dynamic error) error,
    required TResult Function() paid,
    required TResult Function() loading,
  }) {
    return cancelCheckPaymentStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IPaymentProcessor paymentProcessor)? pay,
    TResult? Function()? checkPaymentStatus,
    TResult? Function()? cancelCheckPaymentStatus,
    TResult? Function(String url)? openUrl,
    TResult? Function(dynamic error)? error,
    TResult? Function()? paid,
    TResult? Function()? loading,
  }) {
    return cancelCheckPaymentStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IPaymentProcessor paymentProcessor)? pay,
    TResult Function()? checkPaymentStatus,
    TResult Function()? cancelCheckPaymentStatus,
    TResult Function(String url)? openUrl,
    TResult Function(dynamic error)? error,
    TResult Function()? paid,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (cancelCheckPaymentStatus != null) {
      return cancelCheckPaymentStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PayEvent value) pay,
    required TResult Function(_CheckPaymentStatusEvent value)
        checkPaymentStatus,
    required TResult Function(_CancelCheckPaymentStatusEvent value)
        cancelCheckPaymentStatus,
    required TResult Function(_OpenUrlEvent value) openUrl,
    required TResult Function(_ErrorEvent value) error,
    required TResult Function(_PaidEvent value) paid,
    required TResult Function(_LoadingEvent value) loading,
  }) {
    return cancelCheckPaymentStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PayEvent value)? pay,
    TResult? Function(_CheckPaymentStatusEvent value)? checkPaymentStatus,
    TResult? Function(_CancelCheckPaymentStatusEvent value)?
        cancelCheckPaymentStatus,
    TResult? Function(_OpenUrlEvent value)? openUrl,
    TResult? Function(_ErrorEvent value)? error,
    TResult? Function(_PaidEvent value)? paid,
    TResult? Function(_LoadingEvent value)? loading,
  }) {
    return cancelCheckPaymentStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PayEvent value)? pay,
    TResult Function(_CheckPaymentStatusEvent value)? checkPaymentStatus,
    TResult Function(_CancelCheckPaymentStatusEvent value)?
        cancelCheckPaymentStatus,
    TResult Function(_OpenUrlEvent value)? openUrl,
    TResult Function(_ErrorEvent value)? error,
    TResult Function(_PaidEvent value)? paid,
    TResult Function(_LoadingEvent value)? loading,
    required TResult orElse(),
  }) {
    if (cancelCheckPaymentStatus != null) {
      return cancelCheckPaymentStatus(this);
    }
    return orElse();
  }
}

abstract class _CancelCheckPaymentStatusEvent extends PaymentBlocEvent {
  const factory _CancelCheckPaymentStatusEvent() =
      _$_CancelCheckPaymentStatusEvent;
  const _CancelCheckPaymentStatusEvent._() : super._();
}

/// @nodoc
abstract class _$$_OpenUrlEventCopyWith<$Res> {
  factory _$$_OpenUrlEventCopyWith(
          _$_OpenUrlEvent value, $Res Function(_$_OpenUrlEvent) then) =
      __$$_OpenUrlEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$_OpenUrlEventCopyWithImpl<$Res>
    extends _$PaymentBlocEventCopyWithImpl<$Res, _$_OpenUrlEvent>
    implements _$$_OpenUrlEventCopyWith<$Res> {
  __$$_OpenUrlEventCopyWithImpl(
      _$_OpenUrlEvent _value, $Res Function(_$_OpenUrlEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$_OpenUrlEvent(
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OpenUrlEvent extends _OpenUrlEvent with DiagnosticableTreeMixin {
  const _$_OpenUrlEvent(this.url) : super._();

  @override
  final String url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentBlocEvent.openUrl(url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentBlocEvent.openUrl'))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenUrlEvent &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpenUrlEventCopyWith<_$_OpenUrlEvent> get copyWith =>
      __$$_OpenUrlEventCopyWithImpl<_$_OpenUrlEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IPaymentProcessor paymentProcessor) pay,
    required TResult Function() checkPaymentStatus,
    required TResult Function() cancelCheckPaymentStatus,
    required TResult Function(String url) openUrl,
    required TResult Function(dynamic error) error,
    required TResult Function() paid,
    required TResult Function() loading,
  }) {
    return openUrl(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IPaymentProcessor paymentProcessor)? pay,
    TResult? Function()? checkPaymentStatus,
    TResult? Function()? cancelCheckPaymentStatus,
    TResult? Function(String url)? openUrl,
    TResult? Function(dynamic error)? error,
    TResult? Function()? paid,
    TResult? Function()? loading,
  }) {
    return openUrl?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IPaymentProcessor paymentProcessor)? pay,
    TResult Function()? checkPaymentStatus,
    TResult Function()? cancelCheckPaymentStatus,
    TResult Function(String url)? openUrl,
    TResult Function(dynamic error)? error,
    TResult Function()? paid,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (openUrl != null) {
      return openUrl(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PayEvent value) pay,
    required TResult Function(_CheckPaymentStatusEvent value)
        checkPaymentStatus,
    required TResult Function(_CancelCheckPaymentStatusEvent value)
        cancelCheckPaymentStatus,
    required TResult Function(_OpenUrlEvent value) openUrl,
    required TResult Function(_ErrorEvent value) error,
    required TResult Function(_PaidEvent value) paid,
    required TResult Function(_LoadingEvent value) loading,
  }) {
    return openUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PayEvent value)? pay,
    TResult? Function(_CheckPaymentStatusEvent value)? checkPaymentStatus,
    TResult? Function(_CancelCheckPaymentStatusEvent value)?
        cancelCheckPaymentStatus,
    TResult? Function(_OpenUrlEvent value)? openUrl,
    TResult? Function(_ErrorEvent value)? error,
    TResult? Function(_PaidEvent value)? paid,
    TResult? Function(_LoadingEvent value)? loading,
  }) {
    return openUrl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PayEvent value)? pay,
    TResult Function(_CheckPaymentStatusEvent value)? checkPaymentStatus,
    TResult Function(_CancelCheckPaymentStatusEvent value)?
        cancelCheckPaymentStatus,
    TResult Function(_OpenUrlEvent value)? openUrl,
    TResult Function(_ErrorEvent value)? error,
    TResult Function(_PaidEvent value)? paid,
    TResult Function(_LoadingEvent value)? loading,
    required TResult orElse(),
  }) {
    if (openUrl != null) {
      return openUrl(this);
    }
    return orElse();
  }
}

abstract class _OpenUrlEvent extends PaymentBlocEvent {
  const factory _OpenUrlEvent(final String url) = _$_OpenUrlEvent;
  const _OpenUrlEvent._() : super._();

  String get url;
  @JsonKey(ignore: true)
  _$$_OpenUrlEventCopyWith<_$_OpenUrlEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorEventCopyWith<$Res> {
  factory _$$_ErrorEventCopyWith(
          _$_ErrorEvent value, $Res Function(_$_ErrorEvent) then) =
      __$$_ErrorEventCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$_ErrorEventCopyWithImpl<$Res>
    extends _$PaymentBlocEventCopyWithImpl<$Res, _$_ErrorEvent>
    implements _$$_ErrorEventCopyWith<$Res> {
  __$$_ErrorEventCopyWithImpl(
      _$_ErrorEvent _value, $Res Function(_$_ErrorEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_ErrorEvent(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_ErrorEvent extends _ErrorEvent with DiagnosticableTreeMixin {
  const _$_ErrorEvent(this.error) : super._();

  @override
  final dynamic error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentBlocEvent.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentBlocEvent.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorEvent &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorEventCopyWith<_$_ErrorEvent> get copyWith =>
      __$$_ErrorEventCopyWithImpl<_$_ErrorEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IPaymentProcessor paymentProcessor) pay,
    required TResult Function() checkPaymentStatus,
    required TResult Function() cancelCheckPaymentStatus,
    required TResult Function(String url) openUrl,
    required TResult Function(dynamic error) error,
    required TResult Function() paid,
    required TResult Function() loading,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IPaymentProcessor paymentProcessor)? pay,
    TResult? Function()? checkPaymentStatus,
    TResult? Function()? cancelCheckPaymentStatus,
    TResult? Function(String url)? openUrl,
    TResult? Function(dynamic error)? error,
    TResult? Function()? paid,
    TResult? Function()? loading,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IPaymentProcessor paymentProcessor)? pay,
    TResult Function()? checkPaymentStatus,
    TResult Function()? cancelCheckPaymentStatus,
    TResult Function(String url)? openUrl,
    TResult Function(dynamic error)? error,
    TResult Function()? paid,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PayEvent value) pay,
    required TResult Function(_CheckPaymentStatusEvent value)
        checkPaymentStatus,
    required TResult Function(_CancelCheckPaymentStatusEvent value)
        cancelCheckPaymentStatus,
    required TResult Function(_OpenUrlEvent value) openUrl,
    required TResult Function(_ErrorEvent value) error,
    required TResult Function(_PaidEvent value) paid,
    required TResult Function(_LoadingEvent value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PayEvent value)? pay,
    TResult? Function(_CheckPaymentStatusEvent value)? checkPaymentStatus,
    TResult? Function(_CancelCheckPaymentStatusEvent value)?
        cancelCheckPaymentStatus,
    TResult? Function(_OpenUrlEvent value)? openUrl,
    TResult? Function(_ErrorEvent value)? error,
    TResult? Function(_PaidEvent value)? paid,
    TResult? Function(_LoadingEvent value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PayEvent value)? pay,
    TResult Function(_CheckPaymentStatusEvent value)? checkPaymentStatus,
    TResult Function(_CancelCheckPaymentStatusEvent value)?
        cancelCheckPaymentStatus,
    TResult Function(_OpenUrlEvent value)? openUrl,
    TResult Function(_ErrorEvent value)? error,
    TResult Function(_PaidEvent value)? paid,
    TResult Function(_LoadingEvent value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorEvent extends PaymentBlocEvent {
  const factory _ErrorEvent(final dynamic error) = _$_ErrorEvent;
  const _ErrorEvent._() : super._();

  dynamic get error;
  @JsonKey(ignore: true)
  _$$_ErrorEventCopyWith<_$_ErrorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PaidEventCopyWith<$Res> {
  factory _$$_PaidEventCopyWith(
          _$_PaidEvent value, $Res Function(_$_PaidEvent) then) =
      __$$_PaidEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PaidEventCopyWithImpl<$Res>
    extends _$PaymentBlocEventCopyWithImpl<$Res, _$_PaidEvent>
    implements _$$_PaidEventCopyWith<$Res> {
  __$$_PaidEventCopyWithImpl(
      _$_PaidEvent _value, $Res Function(_$_PaidEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PaidEvent extends _PaidEvent with DiagnosticableTreeMixin {
  const _$_PaidEvent() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentBlocEvent.paid()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PaymentBlocEvent.paid'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PaidEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IPaymentProcessor paymentProcessor) pay,
    required TResult Function() checkPaymentStatus,
    required TResult Function() cancelCheckPaymentStatus,
    required TResult Function(String url) openUrl,
    required TResult Function(dynamic error) error,
    required TResult Function() paid,
    required TResult Function() loading,
  }) {
    return paid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IPaymentProcessor paymentProcessor)? pay,
    TResult? Function()? checkPaymentStatus,
    TResult? Function()? cancelCheckPaymentStatus,
    TResult? Function(String url)? openUrl,
    TResult? Function(dynamic error)? error,
    TResult? Function()? paid,
    TResult? Function()? loading,
  }) {
    return paid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IPaymentProcessor paymentProcessor)? pay,
    TResult Function()? checkPaymentStatus,
    TResult Function()? cancelCheckPaymentStatus,
    TResult Function(String url)? openUrl,
    TResult Function(dynamic error)? error,
    TResult Function()? paid,
    TResult Function()? loading,
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
    required TResult Function(_PayEvent value) pay,
    required TResult Function(_CheckPaymentStatusEvent value)
        checkPaymentStatus,
    required TResult Function(_CancelCheckPaymentStatusEvent value)
        cancelCheckPaymentStatus,
    required TResult Function(_OpenUrlEvent value) openUrl,
    required TResult Function(_ErrorEvent value) error,
    required TResult Function(_PaidEvent value) paid,
    required TResult Function(_LoadingEvent value) loading,
  }) {
    return paid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PayEvent value)? pay,
    TResult? Function(_CheckPaymentStatusEvent value)? checkPaymentStatus,
    TResult? Function(_CancelCheckPaymentStatusEvent value)?
        cancelCheckPaymentStatus,
    TResult? Function(_OpenUrlEvent value)? openUrl,
    TResult? Function(_ErrorEvent value)? error,
    TResult? Function(_PaidEvent value)? paid,
    TResult? Function(_LoadingEvent value)? loading,
  }) {
    return paid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PayEvent value)? pay,
    TResult Function(_CheckPaymentStatusEvent value)? checkPaymentStatus,
    TResult Function(_CancelCheckPaymentStatusEvent value)?
        cancelCheckPaymentStatus,
    TResult Function(_OpenUrlEvent value)? openUrl,
    TResult Function(_ErrorEvent value)? error,
    TResult Function(_PaidEvent value)? paid,
    TResult Function(_LoadingEvent value)? loading,
    required TResult orElse(),
  }) {
    if (paid != null) {
      return paid(this);
    }
    return orElse();
  }
}

abstract class _PaidEvent extends PaymentBlocEvent {
  const factory _PaidEvent() = _$_PaidEvent;
  const _PaidEvent._() : super._();
}

/// @nodoc
abstract class _$$_LoadingEventCopyWith<$Res> {
  factory _$$_LoadingEventCopyWith(
          _$_LoadingEvent value, $Res Function(_$_LoadingEvent) then) =
      __$$_LoadingEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingEventCopyWithImpl<$Res>
    extends _$PaymentBlocEventCopyWithImpl<$Res, _$_LoadingEvent>
    implements _$$_LoadingEventCopyWith<$Res> {
  __$$_LoadingEventCopyWithImpl(
      _$_LoadingEvent _value, $Res Function(_$_LoadingEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingEvent extends _LoadingEvent with DiagnosticableTreeMixin {
  const _$_LoadingEvent() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentBlocEvent.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PaymentBlocEvent.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IPaymentProcessor paymentProcessor) pay,
    required TResult Function() checkPaymentStatus,
    required TResult Function() cancelCheckPaymentStatus,
    required TResult Function(String url) openUrl,
    required TResult Function(dynamic error) error,
    required TResult Function() paid,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IPaymentProcessor paymentProcessor)? pay,
    TResult? Function()? checkPaymentStatus,
    TResult? Function()? cancelCheckPaymentStatus,
    TResult? Function(String url)? openUrl,
    TResult? Function(dynamic error)? error,
    TResult? Function()? paid,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IPaymentProcessor paymentProcessor)? pay,
    TResult Function()? checkPaymentStatus,
    TResult Function()? cancelCheckPaymentStatus,
    TResult Function(String url)? openUrl,
    TResult Function(dynamic error)? error,
    TResult Function()? paid,
    TResult Function()? loading,
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
    required TResult Function(_PayEvent value) pay,
    required TResult Function(_CheckPaymentStatusEvent value)
        checkPaymentStatus,
    required TResult Function(_CancelCheckPaymentStatusEvent value)
        cancelCheckPaymentStatus,
    required TResult Function(_OpenUrlEvent value) openUrl,
    required TResult Function(_ErrorEvent value) error,
    required TResult Function(_PaidEvent value) paid,
    required TResult Function(_LoadingEvent value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PayEvent value)? pay,
    TResult? Function(_CheckPaymentStatusEvent value)? checkPaymentStatus,
    TResult? Function(_CancelCheckPaymentStatusEvent value)?
        cancelCheckPaymentStatus,
    TResult? Function(_OpenUrlEvent value)? openUrl,
    TResult? Function(_ErrorEvent value)? error,
    TResult? Function(_PaidEvent value)? paid,
    TResult? Function(_LoadingEvent value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PayEvent value)? pay,
    TResult Function(_CheckPaymentStatusEvent value)? checkPaymentStatus,
    TResult Function(_CancelCheckPaymentStatusEvent value)?
        cancelCheckPaymentStatus,
    TResult Function(_OpenUrlEvent value)? openUrl,
    TResult Function(_ErrorEvent value)? error,
    TResult Function(_PaidEvent value)? paid,
    TResult Function(_LoadingEvent value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingEvent extends PaymentBlocEvent {
  const factory _LoadingEvent() = _$_LoadingEvent;
  const _LoadingEvent._() : super._();
}

/// @nodoc
mixin _$PaymentBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() paid,
    required TResult Function(String url) openUrl,
    required TResult Function() checkingPaymentStatus,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? paid,
    TResult? Function(String url)? openUrl,
    TResult? Function()? checkingPaymentStatus,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? paid,
    TResult Function(String url)? openUrl,
    TResult Function()? checkingPaymentStatus,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_PaidState value) paid,
    required TResult Function(_OpenUrlState value) openUrl,
    required TResult Function(_CheckingPaymentStatusState value)
        checkingPaymentStatus,
    required TResult Function(_FailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_PaidState value)? paid,
    TResult? Function(_OpenUrlState value)? openUrl,
    TResult? Function(_CheckingPaymentStatusState value)? checkingPaymentStatus,
    TResult? Function(_FailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_PaidState value)? paid,
    TResult Function(_OpenUrlState value)? openUrl,
    TResult Function(_CheckingPaymentStatusState value)? checkingPaymentStatus,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentBlocStateCopyWith<$Res> {
  factory $PaymentBlocStateCopyWith(
          PaymentBlocState value, $Res Function(PaymentBlocState) then) =
      _$PaymentBlocStateCopyWithImpl<$Res, PaymentBlocState>;
}

/// @nodoc
class _$PaymentBlocStateCopyWithImpl<$Res, $Val extends PaymentBlocState>
    implements $PaymentBlocStateCopyWith<$Res> {
  _$PaymentBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialStateCopyWith<$Res> {
  factory _$$_InitialStateCopyWith(
          _$_InitialState value, $Res Function(_$_InitialState) then) =
      __$$_InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialStateCopyWithImpl<$Res>
    extends _$PaymentBlocStateCopyWithImpl<$Res, _$_InitialState>
    implements _$$_InitialStateCopyWith<$Res> {
  __$$_InitialStateCopyWithImpl(
      _$_InitialState _value, $Res Function(_$_InitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialState extends _InitialState with DiagnosticableTreeMixin {
  const _$_InitialState() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentBlocState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PaymentBlocState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() paid,
    required TResult Function(String url) openUrl,
    required TResult Function() checkingPaymentStatus,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? paid,
    TResult? Function(String url)? openUrl,
    TResult? Function()? checkingPaymentStatus,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? paid,
    TResult Function(String url)? openUrl,
    TResult Function()? checkingPaymentStatus,
    TResult Function(String error)? failure,
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
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_PaidState value) paid,
    required TResult Function(_OpenUrlState value) openUrl,
    required TResult Function(_CheckingPaymentStatusState value)
        checkingPaymentStatus,
    required TResult Function(_FailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_PaidState value)? paid,
    TResult? Function(_OpenUrlState value)? openUrl,
    TResult? Function(_CheckingPaymentStatusState value)? checkingPaymentStatus,
    TResult? Function(_FailureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_PaidState value)? paid,
    TResult Function(_OpenUrlState value)? openUrl,
    TResult Function(_CheckingPaymentStatusState value)? checkingPaymentStatus,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState extends PaymentBlocState {
  const factory _InitialState() = _$_InitialState;
  const _InitialState._() : super._();
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$PaymentBlocStateCopyWithImpl<$Res, _$_LoadingState>
    implements _$$_LoadingStateCopyWith<$Res> {
  __$$_LoadingStateCopyWithImpl(
      _$_LoadingState _value, $Res Function(_$_LoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingState extends _LoadingState with DiagnosticableTreeMixin {
  const _$_LoadingState() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentBlocState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PaymentBlocState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() paid,
    required TResult Function(String url) openUrl,
    required TResult Function() checkingPaymentStatus,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? paid,
    TResult? Function(String url)? openUrl,
    TResult? Function()? checkingPaymentStatus,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? paid,
    TResult Function(String url)? openUrl,
    TResult Function()? checkingPaymentStatus,
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
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_PaidState value) paid,
    required TResult Function(_OpenUrlState value) openUrl,
    required TResult Function(_CheckingPaymentStatusState value)
        checkingPaymentStatus,
    required TResult Function(_FailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_PaidState value)? paid,
    TResult? Function(_OpenUrlState value)? openUrl,
    TResult? Function(_CheckingPaymentStatusState value)? checkingPaymentStatus,
    TResult? Function(_FailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_PaidState value)? paid,
    TResult Function(_OpenUrlState value)? openUrl,
    TResult Function(_CheckingPaymentStatusState value)? checkingPaymentStatus,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState extends PaymentBlocState {
  const factory _LoadingState() = _$_LoadingState;
  const _LoadingState._() : super._();
}

/// @nodoc
abstract class _$$_PaidStateCopyWith<$Res> {
  factory _$$_PaidStateCopyWith(
          _$_PaidState value, $Res Function(_$_PaidState) then) =
      __$$_PaidStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PaidStateCopyWithImpl<$Res>
    extends _$PaymentBlocStateCopyWithImpl<$Res, _$_PaidState>
    implements _$$_PaidStateCopyWith<$Res> {
  __$$_PaidStateCopyWithImpl(
      _$_PaidState _value, $Res Function(_$_PaidState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PaidState extends _PaidState with DiagnosticableTreeMixin {
  const _$_PaidState() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentBlocState.paid()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PaymentBlocState.paid'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PaidState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() paid,
    required TResult Function(String url) openUrl,
    required TResult Function() checkingPaymentStatus,
    required TResult Function(String error) failure,
  }) {
    return paid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? paid,
    TResult? Function(String url)? openUrl,
    TResult? Function()? checkingPaymentStatus,
    TResult? Function(String error)? failure,
  }) {
    return paid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? paid,
    TResult Function(String url)? openUrl,
    TResult Function()? checkingPaymentStatus,
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
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_PaidState value) paid,
    required TResult Function(_OpenUrlState value) openUrl,
    required TResult Function(_CheckingPaymentStatusState value)
        checkingPaymentStatus,
    required TResult Function(_FailureState value) failure,
  }) {
    return paid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_PaidState value)? paid,
    TResult? Function(_OpenUrlState value)? openUrl,
    TResult? Function(_CheckingPaymentStatusState value)? checkingPaymentStatus,
    TResult? Function(_FailureState value)? failure,
  }) {
    return paid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_PaidState value)? paid,
    TResult Function(_OpenUrlState value)? openUrl,
    TResult Function(_CheckingPaymentStatusState value)? checkingPaymentStatus,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (paid != null) {
      return paid(this);
    }
    return orElse();
  }
}

abstract class _PaidState extends PaymentBlocState {
  const factory _PaidState() = _$_PaidState;
  const _PaidState._() : super._();
}

/// @nodoc
abstract class _$$_OpenUrlStateCopyWith<$Res> {
  factory _$$_OpenUrlStateCopyWith(
          _$_OpenUrlState value, $Res Function(_$_OpenUrlState) then) =
      __$$_OpenUrlStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$_OpenUrlStateCopyWithImpl<$Res>
    extends _$PaymentBlocStateCopyWithImpl<$Res, _$_OpenUrlState>
    implements _$$_OpenUrlStateCopyWith<$Res> {
  __$$_OpenUrlStateCopyWithImpl(
      _$_OpenUrlState _value, $Res Function(_$_OpenUrlState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$_OpenUrlState(
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OpenUrlState extends _OpenUrlState with DiagnosticableTreeMixin {
  const _$_OpenUrlState(this.url) : super._();

  @override
  final String url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentBlocState.openUrl(url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentBlocState.openUrl'))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenUrlState &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpenUrlStateCopyWith<_$_OpenUrlState> get copyWith =>
      __$$_OpenUrlStateCopyWithImpl<_$_OpenUrlState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() paid,
    required TResult Function(String url) openUrl,
    required TResult Function() checkingPaymentStatus,
    required TResult Function(String error) failure,
  }) {
    return openUrl(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? paid,
    TResult? Function(String url)? openUrl,
    TResult? Function()? checkingPaymentStatus,
    TResult? Function(String error)? failure,
  }) {
    return openUrl?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? paid,
    TResult Function(String url)? openUrl,
    TResult Function()? checkingPaymentStatus,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (openUrl != null) {
      return openUrl(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_PaidState value) paid,
    required TResult Function(_OpenUrlState value) openUrl,
    required TResult Function(_CheckingPaymentStatusState value)
        checkingPaymentStatus,
    required TResult Function(_FailureState value) failure,
  }) {
    return openUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_PaidState value)? paid,
    TResult? Function(_OpenUrlState value)? openUrl,
    TResult? Function(_CheckingPaymentStatusState value)? checkingPaymentStatus,
    TResult? Function(_FailureState value)? failure,
  }) {
    return openUrl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_PaidState value)? paid,
    TResult Function(_OpenUrlState value)? openUrl,
    TResult Function(_CheckingPaymentStatusState value)? checkingPaymentStatus,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (openUrl != null) {
      return openUrl(this);
    }
    return orElse();
  }
}

abstract class _OpenUrlState extends PaymentBlocState {
  const factory _OpenUrlState(final String url) = _$_OpenUrlState;
  const _OpenUrlState._() : super._();

  String get url;
  @JsonKey(ignore: true)
  _$$_OpenUrlStateCopyWith<_$_OpenUrlState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CheckingPaymentStatusStateCopyWith<$Res> {
  factory _$$_CheckingPaymentStatusStateCopyWith(
          _$_CheckingPaymentStatusState value,
          $Res Function(_$_CheckingPaymentStatusState) then) =
      __$$_CheckingPaymentStatusStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckingPaymentStatusStateCopyWithImpl<$Res>
    extends _$PaymentBlocStateCopyWithImpl<$Res, _$_CheckingPaymentStatusState>
    implements _$$_CheckingPaymentStatusStateCopyWith<$Res> {
  __$$_CheckingPaymentStatusStateCopyWithImpl(
      _$_CheckingPaymentStatusState _value,
      $Res Function(_$_CheckingPaymentStatusState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CheckingPaymentStatusState extends _CheckingPaymentStatusState
    with DiagnosticableTreeMixin {
  const _$_CheckingPaymentStatusState() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentBlocState.checkingPaymentStatus()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'PaymentBlocState.checkingPaymentStatus'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckingPaymentStatusState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() paid,
    required TResult Function(String url) openUrl,
    required TResult Function() checkingPaymentStatus,
    required TResult Function(String error) failure,
  }) {
    return checkingPaymentStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? paid,
    TResult? Function(String url)? openUrl,
    TResult? Function()? checkingPaymentStatus,
    TResult? Function(String error)? failure,
  }) {
    return checkingPaymentStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? paid,
    TResult Function(String url)? openUrl,
    TResult Function()? checkingPaymentStatus,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (checkingPaymentStatus != null) {
      return checkingPaymentStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_PaidState value) paid,
    required TResult Function(_OpenUrlState value) openUrl,
    required TResult Function(_CheckingPaymentStatusState value)
        checkingPaymentStatus,
    required TResult Function(_FailureState value) failure,
  }) {
    return checkingPaymentStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_PaidState value)? paid,
    TResult? Function(_OpenUrlState value)? openUrl,
    TResult? Function(_CheckingPaymentStatusState value)? checkingPaymentStatus,
    TResult? Function(_FailureState value)? failure,
  }) {
    return checkingPaymentStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_PaidState value)? paid,
    TResult Function(_OpenUrlState value)? openUrl,
    TResult Function(_CheckingPaymentStatusState value)? checkingPaymentStatus,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (checkingPaymentStatus != null) {
      return checkingPaymentStatus(this);
    }
    return orElse();
  }
}

abstract class _CheckingPaymentStatusState extends PaymentBlocState {
  const factory _CheckingPaymentStatusState() = _$_CheckingPaymentStatusState;
  const _CheckingPaymentStatusState._() : super._();
}

/// @nodoc
abstract class _$$_FailureStateCopyWith<$Res> {
  factory _$$_FailureStateCopyWith(
          _$_FailureState value, $Res Function(_$_FailureState) then) =
      __$$_FailureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_FailureStateCopyWithImpl<$Res>
    extends _$PaymentBlocStateCopyWithImpl<$Res, _$_FailureState>
    implements _$$_FailureStateCopyWith<$Res> {
  __$$_FailureStateCopyWithImpl(
      _$_FailureState _value, $Res Function(_$_FailureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_FailureState(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FailureState extends _FailureState with DiagnosticableTreeMixin {
  const _$_FailureState(this.error) : super._();

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentBlocState.failure(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentBlocState.failure'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailureState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureStateCopyWith<_$_FailureState> get copyWith =>
      __$$_FailureStateCopyWithImpl<_$_FailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() paid,
    required TResult Function(String url) openUrl,
    required TResult Function() checkingPaymentStatus,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? paid,
    TResult? Function(String url)? openUrl,
    TResult? Function()? checkingPaymentStatus,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? paid,
    TResult Function(String url)? openUrl,
    TResult Function()? checkingPaymentStatus,
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
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_PaidState value) paid,
    required TResult Function(_OpenUrlState value) openUrl,
    required TResult Function(_CheckingPaymentStatusState value)
        checkingPaymentStatus,
    required TResult Function(_FailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_PaidState value)? paid,
    TResult? Function(_OpenUrlState value)? openUrl,
    TResult? Function(_CheckingPaymentStatusState value)? checkingPaymentStatus,
    TResult? Function(_FailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_PaidState value)? paid,
    TResult Function(_OpenUrlState value)? openUrl,
    TResult Function(_CheckingPaymentStatusState value)? checkingPaymentStatus,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureState extends PaymentBlocState {
  const factory _FailureState(final String error) = _$_FailureState;
  const _FailureState._() : super._();

  String get error;
  @JsonKey(ignore: true)
  _$$_FailureStateCopyWith<_$_FailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
