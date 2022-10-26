abstract class IPaymentProcessor {
  void pay();
}

class ApplePayPaymentProcessor implements IPaymentProcessor {
  @override
  void pay() {}
}
