// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart' as intl;

// abstract class Helpers {
//   static intl.NumberFormat moneyFormatter =
//       intl.NumberFormat('#,##0.00', 'en_US');

//   static void dismissFauces(BuildContext context) {
//     // FocusScope.of(context).unfocus();
//     FocusScope.of(context).requestFocus(FocusNode());
//   }

//   static bool get isArabic => true;
//   // getIt<ISettingsRepository>().getSettings().languageCode == 'ar';

import 'package:flutter/widgets.dart';
import 'package:the_ultimate_payment_processing_package/src/helpers/m.dart';

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
