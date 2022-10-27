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

  String get INSUFFICIENT_FUNDS;
  String get DECLINED;
  String get UNSPECIFIED_FAILURE;
  String get EXPIRED_CARD;
  String get TIMED_OUT;
  String get REFERRED;
  String get AUTHENTICATION_FAILED;
  String get AUTHENTICATION_ATTEMPTED;
  String get AUTHENTICATION_NOT_AVAILABLE;
  String get CARD_NOT_ENROLLED;
}

class ArabicTheUltimatePaymentProcessingPackageMessages
    extends ITheUltimatePaymentProcessingPackageMessages {
  @override
  String INSUFFICIENT_FUNDS = 'لا يوجد رصيد كافي في البطاقة';
  @override
  String DECLINED = 'عملية مرفوضة من بنك العميل. يجب استخدام بطاقة أخرى';
  @override
  String UNSPECIFIED_FAILURE =
      'رفض بنك العميل المعاملة لخطأ غير محدد في نظامهم. يجب المحاولة ببطاقة أخرى';
  @override
  String EXPIRED_CARD = 'البطاقة منتهية';
  @override
  String TIMED_OUT =
      'فشل الاتصال مع بنك العميل. يجب علي العميل المحاولة مرة أخرى بوقت لاحق';
  @override
  String REFERRED =
      'بنك العميل رفض العملية بسبب وجود مشكلة في البطاقة وعليه مراجعتهم';
  @override
  String AUTHENTICATION_FAILED =
      'المصادقة غير ناجحة أو تم إلغاءها من حامل البطاقة';
  @override
  String AUTHENTICATION_ATTEMPTED =
      'المصادقة فشلت بسبب أن البنك المصدر للبطاقة لم يفعل خدمة التحقق الأمني 3D Secure، أو أن البطاقة غير مدرجة فيها';
  @override
  String AUTHENTICATION_NOT_AVAILABLE =
      'المصادقة فشلت بسبب أن البنك المصدر للبطاقة لم يفعل خدمة التحقق الأمني 3D Secure، أو أن البطاقة غير مدرجة فيها';
  @override
  String CARD_NOT_ENROLLED =
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
  String INSUFFICIENT_FUNDS =
      'There is no enough amount on the card to complete the transaction';
  @override
  String DECLINED =
      'Transaction declined by the customer’s bank. The customer should use an alternate credit card';
  @override
  String UNSPECIFIED_FAILURE =
      'The customer’s bank has declined the transaction for an undefined cause. The customer should use an alternate credit card.';
  @override
  String EXPIRED_CARD =
      'The transaction failed as the card appears to have expired.';
  @override
  String TIMED_OUT =
      'The customer’s bank was unable to be connected. The customer should attempt to process this transaction again.';
  @override
  String REFERRED =
      'The customer’s bank has indicated there is a problem with the credit card number.';
  @override
  String AUTHENTICATION_FAILED =
      'Authentication is unsuccessful or not attempted by the cardholder';
  @override
  String AUTHENTICATION_ATTEMPTED =
      'Either cardholder or card issuing bank is not 3D enrolled. 3D card authentication is unsuccessful';
  @override
  String AUTHENTICATION_NOT_AVAILABLE =
      'Either cardholder or card issuing bank is not 3D enrolled. 3D card authentication is unsuccessful';
  @override
  String CARD_NOT_ENROLLED =
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
