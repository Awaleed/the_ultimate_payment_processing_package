part of 'payment_bloc.dart';

@freezed
class PaymentCubitState with _$PaymentCubitState {
  const PaymentCubitState._();

  const factory PaymentCubitState.initial() = _Initial;
  const factory PaymentCubitState.loading() = _Loading;
  const factory PaymentCubitState.paid(InvoiceModel invoice) = _Paid;
  const factory PaymentCubitState.openUrl(InvoiceModel invoice, String url) =
      _OpenUrl;
  const factory PaymentCubitState.checkingInvoiceStatus(InvoiceModel invoice) =
      _CheckingOrderStatus;
  const factory PaymentCubitState.failure(CustomError error) = _Failure;

  bool get isLoading => maybeWhen(
        checkingInvoiceStatus: (_) => true,
        loading: () => true,
        orElse: () => false,
      );
}
