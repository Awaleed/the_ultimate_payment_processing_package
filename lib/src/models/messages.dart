abstract class ITheUltimatePaymentProcessingPackageMessages {
  String get cancel;
  String get canceledByUser;
  String get noConnection;
  String get back;
  String get confirm;
  String get somethingWentWrong;
  String get warning;
  String get notAValidFullName;
  String get cardNumber;
  String get enterAValidNumber;

  String get insufficientFunds;
  String get declined;
  String get unspecifiedFailure;
  String get expiredCard;
  String get timedOut;
  String get referred;
  String get authenticationFailed;
  String get authenticationAttempted;
  String get authenticationNotAvailable;
  String get cardNotEnrolled;
}

class ArabicTheUltimatePaymentProcessingPackageMessages
    extends ITheUltimatePaymentProcessingPackageMessages {
  @override
  String insufficientFunds = 'لا يوجد رصيد كافي في البطاقة';
  @override
  String declined = 'عملية مرفوضة من بنك العميل. يجب استخدام بطاقة أخرى';
  @override
  String unspecifiedFailure =
      'رفض بنك العميل المعاملة لخطأ غير محدد في نظامهم. يجب المحاولة ببطاقة أخرى';
  @override
  String expiredCard = 'البطاقة منتهية';
  @override
  String timedOut =
      'فشل الاتصال مع بنك العميل. يجب علي العميل المحاولة مرة أخرى بوقت لاحق';
  @override
  String referred =
      'بنك العميل رفض العملية بسبب وجود مشكلة في البطاقة وعليه مراجعتهم';
  @override
  String authenticationFailed =
      'المصادقة غير ناجحة أو تم إلغاءها من حامل البطاقة';
  @override
  String authenticationAttempted =
      'المصادقة فشلت بسبب أن البنك المصدر للبطاقة لم يفعل خدمة التحقق الأمني 3D Secure، أو أن البطاقة غير مدرجة فيها';
  @override
  String authenticationNotAvailable =
      'المصادقة فشلت بسبب أن البنك المصدر للبطاقة لم يفعل خدمة التحقق الأمني 3D Secure، أو أن البطاقة غير مدرجة فيها';
  @override
  String cardNotEnrolled =
      'البطاقة غير مدرجة في خدمة التحقق الأمني 3D Secure. أو أن العميل أدخل رقم البطاقة بشكل خاطئ';

  @override
  final String cancel = 'إلغاء';
  @override
  final String noConnection = 'لا يوجد اتصال';
  @override
  String back = 'عودة';

  @override
  String canceledByUser = 'ألغى المستخدم';

  @override
  String cardNumber = 'رقم البطاقة';

  @override
  String confirm = 'تأكيد';

  @override
  String enterAValidNumber = 'أدخل رقمًا صالحًا';

  @override
  String notAValidFullName = 'ليس اسمًا كاملًا صالحًا';

  @override
  String somethingWentWrong = 'هناك خطأ ما';

  @override
  String warning = 'تحذير';
}

class EnglishTheUltimatePaymentProcessingPackageMessages
    extends ITheUltimatePaymentProcessingPackageMessages {
  @override
  String insufficientFunds =
      'There is no enough amount on the card to complete the transaction';
  @override
  String declined =
      'Transaction declined by the customer’s bank. The customer should use an alternate credit card';
  @override
  String unspecifiedFailure =
      'The customer’s bank has declined the transaction for an undefined cause. The customer should use an alternate credit card.';
  @override
  String expiredCard =
      'The transaction failed as the card appears to have expired.';
  @override
  String timedOut =
      'The customer’s bank was unable to be connected. The customer should attempt to process this transaction again.';
  @override
  String referred =
      'The customer’s bank has indicated there is a problem with the credit card number.';
  @override
  String authenticationFailed =
      'Authentication is unsuccessful or not attempted by the cardholder';
  @override
  String authenticationAttempted =
      'Either cardholder or card issuing bank is not 3D enrolled. 3D card authentication is unsuccessful';
  @override
  String authenticationNotAvailable =
      'Either cardholder or card issuing bank is not 3D enrolled. 3D card authentication is unsuccessful';
  @override
  String cardNotEnrolled =
      'The card was not listed by the issuing bank. The buyer needs to communicate with his bank to activate the card for online payment. Or the card number was entered incorrectly by the cardholder';

  @override
  final String cancel = 'Cancel';
  @override
  final String noConnection = 'No connection';

  @override
  String back = 'Back';

  @override
  String canceledByUser = 'Canceled by user';

  @override
  String cardNumber = 'Card number';

  @override
  String confirm = 'Confirm';

  @override
  String enterAValidNumber = 'Enter a valid number';

  @override
  String notAValidFullName = 'Not a valid full name';

  @override
  String somethingWentWrong = 'Something went wrong';

  @override
  String warning = 'Warning';
}
