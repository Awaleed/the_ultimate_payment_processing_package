import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:dio/dio.dart';

import '../cubits/payment_bloc/payment_bloc.dart';
import '../helpers/m.dart';
import '../packages/flutter_pay/flutter_pay.dart';
import 'card.dart';
import 'payment_model.dart';

abstract class IPaymentProcessor {
  Future<void> pay(PaymentBloc paymentBloc);
}

class ApplePayPaymentProcessor implements IPaymentProcessor {
  ApplePayPaymentProcessor({
    required this.paymentItems,
    required this.moyaserApiKey,
    required this.merchantIdentifier,
    required this.callbackUrl,
    required this.description,
    this.metadata,
    this.currencyCode = 'SAR',
    this.countryCode = 'SA',
  });

  final List<PaymentItem> paymentItems;
  final String moyaserApiKey;
  final String callbackUrl;
  final String description;
  final Map<String, dynamic>? metadata;
  final String merchantIdentifier;
  final String currencyCode;
  final String countryCode;

  @override
  Future<void> pay(PaymentBloc paymentBloc) async {
    try {
      paymentBloc.add(const PaymentBlocEvent.loading());
      FlutterPay flutterPay = FlutterPay();

      flutterPay.setEnvironment(environment: PaymentEnvironment.production);

      String token = await flutterPay.requestPayment(
        appleParameters: AppleParameters(
          merchantIdentifier: merchantIdentifier,
        ),
        currencyCode: currencyCode,
        countryCode: countryCode,
        paymentItems: paymentItems.toList(),
      );

      if (token.isEmpty) {
        return paymentBloc.add(const PaymentBlocEvent.error(''));
      }

      final json = jsonDecode(token);

      final res = await paymentBloc.apiCaller.post(
        'https://api.moyasar.com/v1/payments',
        data: FormData.fromMap({
          'callback_url': callbackUrl,
          'publishable_api_key': moyaserApiKey,
          'description': description,
          'metadata': metadata,
          'amount': (paymentItems.map((e) => e.price).sum * 100).toInt(),
          'source': {'type': 'applepay', 'token': json},
        }),
      );

      final transaction = MoyaserTransactionModel.fromJson(res);
      handelMoyaserPaymentResponse(
        paymentBloc: paymentBloc,
        transaction: transaction,
      );
    } catch (e) {
      paymentBloc.add(PaymentBlocEvent.error(e));
    }
  }
}

class MadaPaymentProcessor implements IPaymentProcessor {
  MadaPaymentProcessor({
    required this.paymentCard,
    required this.moyaserApiKey,
    required this.total,
    required this.callbackUrl,
    required this.description,
    this.metadata,
  });

  final PaymentCard paymentCard;
  final String moyaserApiKey;
  final String callbackUrl;
  final String description;
  final Map<String, dynamic>? metadata;
  final num total;

  @override
  Future<void> pay(PaymentBloc paymentBloc) async {
    paymentBloc.add(const PaymentBlocEvent.loading());
    try {
      final res = await paymentBloc.apiCaller.post(
        'https://api.moyasar.com/v1/payments',
        data: FormData.fromMap({
          'callback_url': callbackUrl,
          'publishable_api_key': moyaserApiKey,
          'description': description,
          'metadata': metadata,
          'amount': (total * 100).toInt(),
          'source': {
            'type': 'creditcard',
            'number': paymentCard.number,
            'month': paymentCard.expiryMonth,
            'year': paymentCard.expiryYear,
            'name': paymentCard.name,
            'cvc': paymentCard.cvc,
          },
        }),
      );

      final transaction = MoyaserTransactionModel.fromJson(res);
      handelMoyaserPaymentResponse(
        paymentBloc: paymentBloc,
        transaction: transaction,
      );
    } catch (e) {
      paymentBloc.add(PaymentBlocEvent.error(e));
    }
  }
}

class CODPaymentProcessor implements IPaymentProcessor {
  CODPaymentProcessor();

  @override
  Future<void> pay(PaymentBloc paymentBloc) async {
    paymentBloc.add(const PaymentBlocEvent.paid());
  }
}
