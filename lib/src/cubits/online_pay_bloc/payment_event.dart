part of 'payment_bloc.dart';

@freezed
class PaymentCubitEvent with _$PaymentCubitEvent {
  const PaymentCubitEvent._();

  const factory PaymentCubitEvent.makePayment(IPaymentProcessor processor) =
      _makePayment;
}
