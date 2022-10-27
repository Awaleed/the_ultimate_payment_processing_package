part of 'payment_bloc.dart';

@freezed
class PaymentBlocState with _$PaymentBlocState {
  const factory PaymentBlocState.initial() = _InitialState;
  const factory PaymentBlocState.loading() = _LoadingState;
  const factory PaymentBlocState.paid() = _PaidState;
  const factory PaymentBlocState.openUrl(String url) = _OpenUrlState;
  const factory PaymentBlocState.checkingPaymentStatus() =
      _CheckingPaymentStatusState;
  const factory PaymentBlocState.failure(String error) = _FailureState;

  const PaymentBlocState._();

  bool get isLoading => maybeWhen(
        checkingPaymentStatus: () => true,
        loading: () => true,
        orElse: () => false,
      );
}
