import 'package:flutter/widgets.dart';

import '../core/api_caller.dart';
import 'models.dart';

class PaymentConfiguration {
  PaymentConfiguration({
    required this.paymentRetrievalUrl,
    required this.paymentStatusCheck,
    this.onWebViewLoaded,
    this.paymentRetrievalHeaders,
    this.paymentRetrievalRequestMethod = RequestMethod.get,
  });

  final String paymentRetrievalUrl;
  final Map<String, dynamic>? paymentRetrievalHeaders;
  final PaymentState Function(dynamic payment) paymentStatusCheck;
  final void Function(
    BuildContext context,
    String url,
    void Function(bool isPaid, String msg) onPayment,
  )? onWebViewLoaded;
  final RequestMethod paymentRetrievalRequestMethod;
}
