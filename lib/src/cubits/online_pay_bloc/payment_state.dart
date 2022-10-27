part of 'payment_bloc.dart';

@freezed
class PaymentCubitState with _$PaymentCubitState {
  const PaymentCubitState._();

  const factory PaymentCubitState.initial() = _Initial;
  const factory PaymentCubitState.loading() = _Loading;
  const factory PaymentCubitState.paid(dynamic payableId) = _Paid;
  const factory PaymentCubitState.openUrl(dynamic payableId, String url) =
      _OpenUrl;
  const factory PaymentCubitState.checkingInvoiceStatus(dynamic payableId) =
      _CheckingOrderStatus;
  const factory PaymentCubitState.failure(String error) = _Failure;

  bool get isLoading => maybeWhen(
        checkingInvoiceStatus: (_) => true,
        loading: () => true,
        orElse: () => false,
      );
}
