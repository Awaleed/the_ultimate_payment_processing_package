import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/api_caller.dart';
import '../../models/payment_processor/payment_processor.dart';

part 'payment_cubit.freezed.dart';
part 'payment_event.dart';
part 'payment_state.dart';

class PaymentBloc extends Bloc<PaymentBlocEvent, PaymentBlocState> {
  PaymentBloc(this.moyaser) : super(const PaymentBlocState.initial());

  final apiCaller = ApiCaller();
  final String moyaser;

  @override
  Future<void> close() async {
    // _timer?.cancel();
    apiCaller.close();
    super.close();
  }

  void pay(IPaymentProcessor processor) {
    processor.pay();
  }
}
//   void codPay(InvoiceModel invoice) => checkInvoiceStatus(invoice);

//   Future<void> tamaraPay({required InvoiceModel invoice}) async {
//     emit(const PaymentBlocState.loading());
//     try {
//       final res = await apiCaller.post(
//         '/invoices/${invoice.id}/payment/tamara/create_session',
//       );
//       final String url = res['url'];
//       if (url.isEmpty) {
//         emit(const PaymentBlocState.failure(
//           CustomError.general('فشل انشاء صفحة الدفع'),
//         ));
//       } else {
//         emit(PaymentBlocState.openUrl(invoice, url));
//         checkInvoiceStatus(invoice);
//       }
//     } catch (e) {
//       emit(PaymentBlocState.failure(ErrorsHandler.decodeError(e)));
//     }
//   }

//   Future<void> visaPay({
//     required InvoiceModel invoice,
//     required double total,
//     required String number,
//     required String expiryMonth,
//     required String expiryYear,
//     required String name,
//     required String cvc,
//   }) async {
//     emit(const PaymentBlocState.loading());
//     try {
//       final res = await apiCaller.post(
//         'https://api.moyasar.com/v1/payments',
//         data: FormData.fromMap(
//           {
//             'callback_url':
//                 '${kAppConfig.baseUrl}/invoices/${invoice.id}/payment/callback/moyaser',
//             'publishable_api_key': moyaser,
//             'description':
//                 'طلب دفع من تطبيق الحراج الرقمي لفاتورة رقم ${invoice.id}',
//             'amount': (total * 100).toInt(),
//             'metadata': {'invoice_code': invoice.id},
//             'source': {
//               'type': 'creditcard',
//               'number': number,
//               'month': expiryMonth,
//               'year': expiryYear,
//               'name': name,
//               'cvc': cvc,
//             },
//           },
//         ),
//       );
//       _handelMoyaserPaymentResponse(
//           invoice, MoyaserTransactionModel.fromJson(res));
//     } catch (e) {
//       emit(PaymentBlocState.failure(ErrorsHandler.decodeError(e)));
//     }
//   }

//   Future<void> applePay({
//     required InvoiceModel invoice,
//     required Iterable<PaymentItem> paymentItems,
//   }) async {
//     emit(const PaymentBlocState.loading());
//     try {
//       FlutterPay flutterPay = FlutterPay();

//       String token = await flutterPay.requestPayment(
//         appleParameters: AppleParameters(
//           merchantIdentifier: 'merchant.com.smartsupplier.alharajdigital',
//         ),
//         currencyCode: 'SAR',
//         countryCode: 'SA',
//         paymentItems: paymentItems.toList(),
//       );

//       // if (kDebugMode) {
//       //   _handelMoyaserPaymentResponse(
//       //       invoice, MoyaserTransactionModel(status: 'paid'));
//       //   return;
//       // }

//       if (token.isEmpty) {
//         throw const CustomError.canceledByUser();
//       }

//       final json = jsonDecode(token);

//       final res = await apiCaller.post(
//         'https://api.moyasar.com/v1/payments',
//         data: FormData.fromMap(
//           {
//             'callback_url':
//                 '${kAppConfig.baseUrl}/invoices/${invoice.id}/payment/callback/moyaser',
//             'publishable_api_key': moyaser,
//             'description':
//                 'طلب دفع من تطبيق الحراج الرقمي لفاتورة رقم ${invoice.id}',
//             'amount': (paymentItems.map((e) => e.price).sum * 100).toInt(),
//             'metadata': {'invoice_code': invoice.id},
//             'source': {'type': 'applepay', 'token': json},
//           },
//         ),
//       );
//       _handelMoyaserPaymentResponse(
//           invoice, MoyaserTransactionModel.fromJson(res));
//     } catch (e) {
//       emit(PaymentBlocState.failure(ErrorsHandler.decodeError(e)));
//     }
//   }

//   void _handelMoyaserPaymentResponse(
//     InvoiceModel invoice,
//     MoyaserTransactionModel transaction,
//   ) {
//     try {
//       if (transaction.status == 'initiated') {
//         emit(PaymentBlocState.openUrl(
//             invoice, transaction.source!.transactionUrl!));
//         checkInvoiceStatus(invoice);
//       } else if (transaction.status == 'failed') {
//         emit(
//           PaymentBlocState.failure(CustomError.general(
//             mapMoyaserMessage(
//               transaction.source?.message ?? S.current.an_error_occurred,
//             ),
//           )),
//         );
//       } else if (transaction.status == 'paid') {
//         checkInvoiceStatus(invoice);
//       }
//     } catch (e) {
//       emit(PaymentBlocState.failure(ErrorsHandler.decodeError(e)));
//     }
//   }

//   Timer? _timer;
//   Future<void> checkInvoiceStatus(InvoiceModel invoice) async {
//     emit(PaymentBlocState.checkingInvoiceStatus(invoice));
//     try {
//       final res = await apiCaller.get('/invoices/${invoice.id}');
//       final mInvoice = InvoiceModel.fromJson(res);
//       if (mInvoice.payment?.status == 'failed') {
//         emit(PaymentBlocState.failure(
//           CustomError.general(
//             mapMoyaserMessage(invoice.payment?.statusMessage),
//           ),
//         ));
//       } else if (mInvoice.payment != null && mInvoice.number != null) {
//         emit(PaymentBlocState.paid(mInvoice));
//       } else {
//         _timer = Timer(10.seconds, () => checkInvoiceStatus(mInvoice));
//       }
//     } catch (e) {
//       emit(PaymentBlocState.failure(ErrorsHandler.decodeError(e)));
//       addError(e);
//     }
//   }

//   void cancelCheckInvoiceStatus([String? msg]) {
//     _timer?.cancel();
//     apiCaller.close();
//     emit(PaymentBlocState.failure(CustomError.canceledByUser(msg)));
//   }

//   String? mapMoyaserMessage(String? rawMessage) {
//     if (rawMessage == null) return null;
//     if (rawMessage.contains('INSUFFICIENT_FUNDS')) {
//       return Helpers.isArabic
//           ? 'لا يوجد رصيد كافي في البطاقة'
//           : 'There is no enough amount on the card to complete the transaction';
//     } else if (rawMessage.contains('DECLINED')) {
//       return Helpers.isArabic
//           ? 'عملية مرفوضة من بنك العميل. يجب استخدام بطاقة أخرى'
//           : 'Transaction declined by the customer’s bank. The customer should use an alternate credit card';
//     } else if (rawMessage.contains('UNSPECIFIED_FAILURE')) {
//       return Helpers.isArabic
//           ? 'رفض بنك العميل المعاملة لخطأ غير محدد في نظامهم. يجب المحاولة ببطاقة أخرى'
//           : 'The customer’s bank has declined the transaction for an undefined cause. The customer should use an alternate credit card.';
//     } else if (rawMessage.contains('EXPIRED_CARD')) {
//       return Helpers.isArabic
//           ? 'البطاقة منتهية'
//           : 'The transaction failed as the card appears to have expired.';
//     } else if (rawMessage.contains('TIMED_OUT')) {
//       return Helpers.isArabic
//           ? 'فشل الاتصال مع بنك العميل. يجب علي العميل المحاولة مرة أخرى بوقت لاحق'
//           : 'The customer’s bank was unable to be connected. The customer should attempt to process this transaction again.';
//     } else if (rawMessage.contains('REFERRED')) {
//       return Helpers.isArabic
//           ? 'بنك العميل رفض العملية بسبب وجود مشكلة في البطاقة وعليه مراجعتهم'
//           : 'The customer’s bank has indicated there is a problem with the credit card number.';
//     } else if (rawMessage.contains('AUTHENTICATION_FAILED')) {
//       return Helpers.isArabic
//           ? 'المصادقة غير ناجحة أو تم إلغاءها من حامل البطاقة'
//           : 'Authentication is unsuccessful or not attempted by the cardholder';
//     } else if (rawMessage.contains('AUTHENTICATION_ATTEMPTED')) {
//       return Helpers.isArabic
//           ? 'المصادقة فشلت بسبب أن البنك المصدر للبطاقة لم يفعل خدمة التحقق الأمني 3D Secure، أو أن البطاقة غير مدرجة فيها'
//           : 'Either cardholder or card issuing bank is not 3D enrolled. 3D card authentication is unsuccessful';
//     } else if (rawMessage.contains('AUTHENTICATION_NOT_AVAILABLE')) {
//       return Helpers.isArabic
//           ? 'المصادقة فشلت بسبب أن البنك المصدر للبطاقة لم يفعل خدمة التحقق الأمني 3D Secure، أو أن البطاقة غير مدرجة فيها'
//           : 'Either cardholder or card issuing bank is not 3D enrolled. 3D card authentication is unsuccessful';
//     } else if (rawMessage.contains('CARD_NOT_ENROLLED')) {
//       return Helpers.isArabic
//           ? 'البطاقة غير مدرجة في خدمة التحقق الأمني 3D Secure. أو أن العميل أدخل رقم البطاقة بشكل خاطئ'
//           : 'The card was not listed by the issuing bank. The buyer needs to communicate with his bank to activate the card for online payment. Or the card number was entered incorrectly by the cardholder';
//     }

//     return rawMessage;
//   }
// }
