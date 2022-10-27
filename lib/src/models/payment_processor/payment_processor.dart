import 'package:flutter_pay/flutter_pay.dart';
import 'package:the_ultimate_payment_processing_package/src/cubits/online_pay_bloc/payment_bloc.dart';

abstract class IPaymentProcessor {
  Future<void> pay(PaymentCubit cubit);
}

class ApplePayPaymentProcessor implements IPaymentProcessor {
  @override
  Future<void> pay(PaymentCubit cubit) async {
    try {
      FlutterPay flutterPay = FlutterPay();

      String token = await flutterPay.requestPayment(
        appleParameters: AppleParameters(
          merchantIdentifier: 'merchant.com.smartsupplier.alharajdigital',
        ),
        currencyCode: 'SAR',
        countryCode: 'SA',
        paymentItems: paymentItems.toList(),
      );

      if (kDebugMode) {
        _handelMoyaserPaymentResponse(
            invoice, MoyaserTransactionModel(status: 'paid'));
        return;
      }

      if (token.isEmpty) {
        throw const CustomError.canceledByUser();
      }

      final json = jsonDecode(token);

      final res = await apiCaller.post(
        'https:api.moyasar.com/v1/payments',
        data: FormData.fromMap(
          {
            'callback_url':
                '${kAppConfig.baseUrl}/invoices/${invoice.id}/payment/callback/moyaser',
            'publishable_api_key': moyaser,
            'description':
                'طلب دفع من تطبيق الحراج الرقمي لفاتورة رقم ${invoice.id}',
            'amount': (paymentItems.map((e) => e.price).sum * 100).toInt(),
            'metadata': {'invoice_code': invoice.id},
            'source': {'type': 'applepay', 'token': json},
          },
        ),
      );
      _handelMoyaserPaymentResponse(
          invoice, MoyaserTransactionModel.fromJson(res));
    } catch (e) {
      emit(PaymentCubitState.failure(ErrorsHandler.decodeError(e)));
    }
  }
}
