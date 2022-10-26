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
mixin _$PaymentCubitState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(InvoiceModel invoice) paid,
    required TResult Function(InvoiceModel invoice, String url) openUrl,
    required TResult Function(InvoiceModel invoice) checkingInvoiceStatus,
    required TResult Function(CustomError error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(InvoiceModel invoice)? paid,
    TResult Function(InvoiceModel invoice, String url)? openUrl,
    TResult Function(InvoiceModel invoice)? checkingInvoiceStatus,
    TResult Function(CustomError error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(InvoiceModel invoice)? paid,
    TResult Function(InvoiceModel invoice, String url)? openUrl,
    TResult Function(InvoiceModel invoice)? checkingInvoiceStatus,
    TResult Function(CustomError error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Paid value) paid,
    required TResult Function(_OpenUrl value) openUrl,
    required TResult Function(_CheckingOrderStatus value) checkingInvoiceStatus,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Paid value)? paid,
    TResult Function(_OpenUrl value)? openUrl,
    TResult Function(_CheckingOrderStatus value)? checkingInvoiceStatus,
    TResult Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Paid value)? paid,
    TResult Function(_OpenUrl value)? openUrl,
    TResult Function(_CheckingOrderStatus value)? checkingInvoiceStatus,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCubitStateCopyWith<$Res> {
  factory $PaymentCubitStateCopyWith(
          PaymentCubitState value, $Res Function(PaymentCubitState) then) =
      _$PaymentCubitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentCubitStateCopyWithImpl<$Res>
    implements $PaymentCubitStateCopyWith<$Res> {
  _$PaymentCubitStateCopyWithImpl(this._value, this._then);

  final PaymentCubitState _value;
  // ignore: unused_field
  final $Res Function(PaymentCubitState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PaymentCubitStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'PaymentCubitState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(InvoiceModel invoice) paid,
    required TResult Function(InvoiceModel invoice, String url) openUrl,
    required TResult Function(InvoiceModel invoice) checkingInvoiceStatus,
    required TResult Function(CustomError error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(InvoiceModel invoice)? paid,
    TResult Function(InvoiceModel invoice, String url)? openUrl,
    TResult Function(InvoiceModel invoice)? checkingInvoiceStatus,
    TResult Function(CustomError error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(InvoiceModel invoice)? paid,
    TResult Function(InvoiceModel invoice, String url)? openUrl,
    TResult Function(InvoiceModel invoice)? checkingInvoiceStatus,
    TResult Function(CustomError error)? failure,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Paid value) paid,
    required TResult Function(_OpenUrl value) openUrl,
    required TResult Function(_CheckingOrderStatus value) checkingInvoiceStatus,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Paid value)? paid,
    TResult Function(_OpenUrl value)? openUrl,
    TResult Function(_CheckingOrderStatus value)? checkingInvoiceStatus,
    TResult Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Paid value)? paid,
    TResult Function(_OpenUrl value)? openUrl,
    TResult Function(_CheckingOrderStatus value)? checkingInvoiceStatus,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends PaymentCubitState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$PaymentCubitStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading() : super._();

  @override
  String toString() {
    return 'PaymentCubitState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(InvoiceModel invoice) paid,
    required TResult Function(InvoiceModel invoice, String url) openUrl,
    required TResult Function(InvoiceModel invoice) checkingInvoiceStatus,
    required TResult Function(CustomError error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(InvoiceModel invoice)? paid,
    TResult Function(InvoiceModel invoice, String url)? openUrl,
    TResult Function(InvoiceModel invoice)? checkingInvoiceStatus,
    TResult Function(CustomError error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(InvoiceModel invoice)? paid,
    TResult Function(InvoiceModel invoice, String url)? openUrl,
    TResult Function(InvoiceModel invoice)? checkingInvoiceStatus,
    TResult Function(CustomError error)? failure,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Paid value) paid,
    required TResult Function(_OpenUrl value) openUrl,
    required TResult Function(_CheckingOrderStatus value) checkingInvoiceStatus,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Paid value)? paid,
    TResult Function(_OpenUrl value)? openUrl,
    TResult Function(_CheckingOrderStatus value)? checkingInvoiceStatus,
    TResult Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Paid value)? paid,
    TResult Function(_OpenUrl value)? openUrl,
    TResult Function(_CheckingOrderStatus value)? checkingInvoiceStatus,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends PaymentCubitState {
  const factory _Loading() = _$_Loading;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$_PaidCopyWith<$Res> {
  factory _$$_PaidCopyWith(_$_Paid value, $Res Function(_$_Paid) then) =
      __$$_PaidCopyWithImpl<$Res>;
  $Res call({InvoiceModel invoice});

  $InvoiceModelCopyWith<$Res> get invoice;
}

/// @nodoc
class __$$_PaidCopyWithImpl<$Res> extends _$PaymentCubitStateCopyWithImpl<$Res>
    implements _$$_PaidCopyWith<$Res> {
  __$$_PaidCopyWithImpl(_$_Paid _value, $Res Function(_$_Paid) _then)
      : super(_value, (v) => _then(v as _$_Paid));

  @override
  _$_Paid get _value => super._value as _$_Paid;

  @override
  $Res call({
    Object? invoice = freezed,
  }) {
    return _then(_$_Paid(
      invoice == freezed
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as InvoiceModel,
    ));
  }

  @override
  $InvoiceModelCopyWith<$Res> get invoice {
    return $InvoiceModelCopyWith<$Res>(_value.invoice, (value) {
      return _then(_value.copyWith(invoice: value));
    });
  }
}

/// @nodoc

class _$_Paid extends _Paid {
  const _$_Paid(this.invoice) : super._();

  @override
  final InvoiceModel invoice;

  @override
  String toString() {
    return 'PaymentCubitState.paid(invoice: $invoice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Paid &&
            const DeepCollectionEquality().equals(other.invoice, invoice));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(invoice));

  @JsonKey(ignore: true)
  @override
  _$$_PaidCopyWith<_$_Paid> get copyWith =>
      __$$_PaidCopyWithImpl<_$_Paid>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(InvoiceModel invoice) paid,
    required TResult Function(InvoiceModel invoice, String url) openUrl,
    required TResult Function(InvoiceModel invoice) checkingInvoiceStatus,
    required TResult Function(CustomError error) failure,
  }) {
    return paid(invoice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(InvoiceModel invoice)? paid,
    TResult Function(InvoiceModel invoice, String url)? openUrl,
    TResult Function(InvoiceModel invoice)? checkingInvoiceStatus,
    TResult Function(CustomError error)? failure,
  }) {
    return paid?.call(invoice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(InvoiceModel invoice)? paid,
    TResult Function(InvoiceModel invoice, String url)? openUrl,
    TResult Function(InvoiceModel invoice)? checkingInvoiceStatus,
    TResult Function(CustomError error)? failure,
    required TResult orElse(),
  }) {
    if (paid != null) {
      return paid(invoice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Paid value) paid,
    required TResult Function(_OpenUrl value) openUrl,
    required TResult Function(_CheckingOrderStatus value) checkingInvoiceStatus,
    required TResult Function(_Failure value) failure,
  }) {
    return paid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Paid value)? paid,
    TResult Function(_OpenUrl value)? openUrl,
    TResult Function(_CheckingOrderStatus value)? checkingInvoiceStatus,
    TResult Function(_Failure value)? failure,
  }) {
    return paid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Paid value)? paid,
    TResult Function(_OpenUrl value)? openUrl,
    TResult Function(_CheckingOrderStatus value)? checkingInvoiceStatus,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (paid != null) {
      return paid(this);
    }
    return orElse();
  }
}

abstract class _Paid extends PaymentCubitState {
  const factory _Paid(final InvoiceModel invoice) = _$_Paid;
  const _Paid._() : super._();

  InvoiceModel get invoice;
  @JsonKey(ignore: true)
  _$$_PaidCopyWith<_$_Paid> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OpenUrlCopyWith<$Res> {
  factory _$$_OpenUrlCopyWith(
          _$_OpenUrl value, $Res Function(_$_OpenUrl) then) =
      __$$_OpenUrlCopyWithImpl<$Res>;
  $Res call({InvoiceModel invoice, String url});

  $InvoiceModelCopyWith<$Res> get invoice;
}

/// @nodoc
class __$$_OpenUrlCopyWithImpl<$Res>
    extends _$PaymentCubitStateCopyWithImpl<$Res>
    implements _$$_OpenUrlCopyWith<$Res> {
  __$$_OpenUrlCopyWithImpl(_$_OpenUrl _value, $Res Function(_$_OpenUrl) _then)
      : super(_value, (v) => _then(v as _$_OpenUrl));

  @override
  _$_OpenUrl get _value => super._value as _$_OpenUrl;

  @override
  $Res call({
    Object? invoice = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_OpenUrl(
      invoice == freezed
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as InvoiceModel,
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $InvoiceModelCopyWith<$Res> get invoice {
    return $InvoiceModelCopyWith<$Res>(_value.invoice, (value) {
      return _then(_value.copyWith(invoice: value));
    });
  }
}

/// @nodoc

class _$_OpenUrl extends _OpenUrl {
  const _$_OpenUrl(this.invoice, this.url) : super._();

  @override
  final InvoiceModel invoice;
  @override
  final String url;

  @override
  String toString() {
    return 'PaymentCubitState.openUrl(invoice: $invoice, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenUrl &&
            const DeepCollectionEquality().equals(other.invoice, invoice) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(invoice),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_OpenUrlCopyWith<_$_OpenUrl> get copyWith =>
      __$$_OpenUrlCopyWithImpl<_$_OpenUrl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(InvoiceModel invoice) paid,
    required TResult Function(InvoiceModel invoice, String url) openUrl,
    required TResult Function(InvoiceModel invoice) checkingInvoiceStatus,
    required TResult Function(CustomError error) failure,
  }) {
    return openUrl(invoice, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(InvoiceModel invoice)? paid,
    TResult Function(InvoiceModel invoice, String url)? openUrl,
    TResult Function(InvoiceModel invoice)? checkingInvoiceStatus,
    TResult Function(CustomError error)? failure,
  }) {
    return openUrl?.call(invoice, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(InvoiceModel invoice)? paid,
    TResult Function(InvoiceModel invoice, String url)? openUrl,
    TResult Function(InvoiceModel invoice)? checkingInvoiceStatus,
    TResult Function(CustomError error)? failure,
    required TResult orElse(),
  }) {
    if (openUrl != null) {
      return openUrl(invoice, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Paid value) paid,
    required TResult Function(_OpenUrl value) openUrl,
    required TResult Function(_CheckingOrderStatus value) checkingInvoiceStatus,
    required TResult Function(_Failure value) failure,
  }) {
    return openUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Paid value)? paid,
    TResult Function(_OpenUrl value)? openUrl,
    TResult Function(_CheckingOrderStatus value)? checkingInvoiceStatus,
    TResult Function(_Failure value)? failure,
  }) {
    return openUrl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Paid value)? paid,
    TResult Function(_OpenUrl value)? openUrl,
    TResult Function(_CheckingOrderStatus value)? checkingInvoiceStatus,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (openUrl != null) {
      return openUrl(this);
    }
    return orElse();
  }
}

abstract class _OpenUrl extends PaymentCubitState {
  const factory _OpenUrl(final InvoiceModel invoice, final String url) =
      _$_OpenUrl;
  const _OpenUrl._() : super._();

  InvoiceModel get invoice;
  String get url;
  @JsonKey(ignore: true)
  _$$_OpenUrlCopyWith<_$_OpenUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CheckingOrderStatusCopyWith<$Res> {
  factory _$$_CheckingOrderStatusCopyWith(_$_CheckingOrderStatus value,
          $Res Function(_$_CheckingOrderStatus) then) =
      __$$_CheckingOrderStatusCopyWithImpl<$Res>;
  $Res call({InvoiceModel invoice});

  $InvoiceModelCopyWith<$Res> get invoice;
}

/// @nodoc
class __$$_CheckingOrderStatusCopyWithImpl<$Res>
    extends _$PaymentCubitStateCopyWithImpl<$Res>
    implements _$$_CheckingOrderStatusCopyWith<$Res> {
  __$$_CheckingOrderStatusCopyWithImpl(_$_CheckingOrderStatus _value,
      $Res Function(_$_CheckingOrderStatus) _then)
      : super(_value, (v) => _then(v as _$_CheckingOrderStatus));

  @override
  _$_CheckingOrderStatus get _value => super._value as _$_CheckingOrderStatus;

  @override
  $Res call({
    Object? invoice = freezed,
  }) {
    return _then(_$_CheckingOrderStatus(
      invoice == freezed
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as InvoiceModel,
    ));
  }

  @override
  $InvoiceModelCopyWith<$Res> get invoice {
    return $InvoiceModelCopyWith<$Res>(_value.invoice, (value) {
      return _then(_value.copyWith(invoice: value));
    });
  }
}

/// @nodoc

class _$_CheckingOrderStatus extends _CheckingOrderStatus {
  const _$_CheckingOrderStatus(this.invoice) : super._();

  @override
  final InvoiceModel invoice;

  @override
  String toString() {
    return 'PaymentCubitState.checkingInvoiceStatus(invoice: $invoice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckingOrderStatus &&
            const DeepCollectionEquality().equals(other.invoice, invoice));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(invoice));

  @JsonKey(ignore: true)
  @override
  _$$_CheckingOrderStatusCopyWith<_$_CheckingOrderStatus> get copyWith =>
      __$$_CheckingOrderStatusCopyWithImpl<_$_CheckingOrderStatus>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(InvoiceModel invoice) paid,
    required TResult Function(InvoiceModel invoice, String url) openUrl,
    required TResult Function(InvoiceModel invoice) checkingInvoiceStatus,
    required TResult Function(CustomError error) failure,
  }) {
    return checkingInvoiceStatus(invoice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(InvoiceModel invoice)? paid,
    TResult Function(InvoiceModel invoice, String url)? openUrl,
    TResult Function(InvoiceModel invoice)? checkingInvoiceStatus,
    TResult Function(CustomError error)? failure,
  }) {
    return checkingInvoiceStatus?.call(invoice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(InvoiceModel invoice)? paid,
    TResult Function(InvoiceModel invoice, String url)? openUrl,
    TResult Function(InvoiceModel invoice)? checkingInvoiceStatus,
    TResult Function(CustomError error)? failure,
    required TResult orElse(),
  }) {
    if (checkingInvoiceStatus != null) {
      return checkingInvoiceStatus(invoice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Paid value) paid,
    required TResult Function(_OpenUrl value) openUrl,
    required TResult Function(_CheckingOrderStatus value) checkingInvoiceStatus,
    required TResult Function(_Failure value) failure,
  }) {
    return checkingInvoiceStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Paid value)? paid,
    TResult Function(_OpenUrl value)? openUrl,
    TResult Function(_CheckingOrderStatus value)? checkingInvoiceStatus,
    TResult Function(_Failure value)? failure,
  }) {
    return checkingInvoiceStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Paid value)? paid,
    TResult Function(_OpenUrl value)? openUrl,
    TResult Function(_CheckingOrderStatus value)? checkingInvoiceStatus,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (checkingInvoiceStatus != null) {
      return checkingInvoiceStatus(this);
    }
    return orElse();
  }
}

abstract class _CheckingOrderStatus extends PaymentCubitState {
  const factory _CheckingOrderStatus(final InvoiceModel invoice) =
      _$_CheckingOrderStatus;
  const _CheckingOrderStatus._() : super._();

  InvoiceModel get invoice;
  @JsonKey(ignore: true)
  _$$_CheckingOrderStatusCopyWith<_$_CheckingOrderStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  $Res call({CustomError error});

  $CustomErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$PaymentCubitStateCopyWithImpl<$Res>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, (v) => _then(v as _$_Failure));

  @override
  _$_Failure get _value => super._value as _$_Failure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_Failure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as CustomError,
    ));
  }

  @override
  $CustomErrorCopyWith<$Res> get error {
    return $CustomErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_Failure extends _Failure {
  const _$_Failure(this.error) : super._();

  @override
  final CustomError error;

  @override
  String toString() {
    return 'PaymentCubitState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(InvoiceModel invoice) paid,
    required TResult Function(InvoiceModel invoice, String url) openUrl,
    required TResult Function(InvoiceModel invoice) checkingInvoiceStatus,
    required TResult Function(CustomError error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(InvoiceModel invoice)? paid,
    TResult Function(InvoiceModel invoice, String url)? openUrl,
    TResult Function(InvoiceModel invoice)? checkingInvoiceStatus,
    TResult Function(CustomError error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(InvoiceModel invoice)? paid,
    TResult Function(InvoiceModel invoice, String url)? openUrl,
    TResult Function(InvoiceModel invoice)? checkingInvoiceStatus,
    TResult Function(CustomError error)? failure,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Paid value) paid,
    required TResult Function(_OpenUrl value) openUrl,
    required TResult Function(_CheckingOrderStatus value) checkingInvoiceStatus,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Paid value)? paid,
    TResult Function(_OpenUrl value)? openUrl,
    TResult Function(_CheckingOrderStatus value)? checkingInvoiceStatus,
    TResult Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Paid value)? paid,
    TResult Function(_OpenUrl value)? openUrl,
    TResult Function(_CheckingOrderStatus value)? checkingInvoiceStatus,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure extends PaymentCubitState {
  const factory _Failure(final CustomError error) = _$_Failure;
  const _Failure._() : super._();

  CustomError get error;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
