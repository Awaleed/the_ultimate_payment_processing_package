part of 'payment_bloc.dart';

@freezed
class PaymentBlocEvent with _$PaymentBlocEvent {
  const PaymentBlocEvent._();

  const factory PaymentBlocEvent.pay(IPaymentProcessor paymentProcessor) =
      _PayEvent;
  const factory PaymentBlocEvent.checkPaymentStatus() =
      _CheckPaymentStatusEvent;
  const factory PaymentBlocEvent.cancelCheckPaymentStatus() =
      _CancelCheckPaymentStatusEvent;
  const factory PaymentBlocEvent.openUrl(String url) = _OpenUrlEvent;
  const factory PaymentBlocEvent.error(dynamic error) = _ErrorEvent;
  const factory PaymentBlocEvent.paid() = _PaidEvent;
  const factory PaymentBlocEvent.loading() = _LoadingEvent;
}
