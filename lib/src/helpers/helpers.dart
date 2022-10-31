import 'package:flutter/material.dart';

import '../../the_ultimate_payment_processing_package.dart';
import 'm.dart';

showPaymentDialog(BuildContext context) => showDialog<PaymentCard>(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
              card: PaymentCard.empty(),
              onValidated: (value) => Navigator.of(context).pop(value),
            ),
          ),
        );
      },
    );

void handelMoyaserWebView(
  BuildContext context, {
  required String url,
  required String matcher,
  required void Function(bool isPaid, String msg) onPayment,
}) {
  if (url.contains(matcher)) {
    bool isPaid = false;
    String msg = kMessages.canceledByUser;
    try {
      final uri = Uri.parse(url);
      final paymentJson = uri.queryParameters;

      isPaid = paymentJson['status'] == 'paid';
      msg = paymentJson['message'] ?? msg;

      Navigator.of(context).pop(true);
      onPayment(isPaid, msg);
    } catch (e) {
      //
    }
  }
}
