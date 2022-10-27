import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_state.freezed.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.loading() = _PaymentLoadingState;
  const factory PaymentState.paid() = _PaymentPaidState;
  const factory PaymentState.failure(String error) = _PaymentFailureState;
}
