import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:the_ultimate_payment_processing_package/the_ultimate_payment_processing_package.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: PaymentPage(),
    );
  }
}

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final controller = PaymentController();

  final moyaserApiKey = 'xxxxx';
  final paymentRetrievalUrl = 'https://www.example.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Payment Page')),
      body: PaymentBuilder(
        controller: controller,
        paymentConfiguration: PaymentConfiguration(
          paymentRetrievalUrl: paymentRetrievalUrl,
          paymentStatusCheck: (payment) => const PaymentState.loading(),
          onWebViewLoaded: (context, url, onPayment) {
            handelMoyaserWebView(
              context,
              url: url,
              onPayment: onPayment,
              matcher: 'example.com',
            );
          },
        ),
        onPaid: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Paid'),
            ),
          );
        },
        builder: (context, state) {
          return LoadingOverLay(
            isLoading: state.isLoading,
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                if (Platform.isIOS)
                  ApplePayButton()
                else
                  const Text(
                    'If platform is IOS ApplePayButton will appear here',
                  ),
                ElevatedButton(
                  onPressed: () {
                    controller.pay(
                      ApplePayPaymentProcessor(
                        paymentItems: [],
                        moyaserApiKey: moyaserApiKey,
                        merchantIdentifier: 'merchantIdentifier',
                        callbackUrl: paymentRetrievalUrl,
                        description: 'Description',
                      ),
                    );
                  },
                  child: const Text('ApplePay'),
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.pay(
                      MadaPaymentProcessor(
                        total: 100,
                        moyaserApiKey: moyaserApiKey,
                        callbackUrl: paymentRetrievalUrl,
                        description: 'Description',
                        paymentCard: PaymentCard(
                          name: 'ABDULRAHMAN WALEED',
                          number: '4111111111111111',
                          cvc: '875',
                          expiryMonth: 5,
                          expiryYear: 2075,
                        ),
                      ),
                    );
                  },
                  child: const Text('Mada'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    final card = await showDialog<PaymentCard>(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          title: Row(
                            children: [
                              const Expanded(child: Text('تأكيد الدفع')),
                              IconButton(
                                onPressed: () => Navigator.of(context).pop(),
                                icon: const Icon(Icons.close),
                              )
                            ],
                          ),
                          contentPadding: const EdgeInsets.all(8),
                          content: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: CardInput(
                              buttonText: 'Confirm payment ',
                              card: PaymentCard(
                                name: 'ABDULRAHMAN WALEED',
                                number: '4111111111111111',
                                cvc: '875',
                                expiryMonth: 5,
                                expiryYear: 2075,
                              ),
                              onValidated: (value) {},
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: const Text('Card input'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
