import 'dart:io';

import 'package:dio/dio.dart';

import '../cubits/payment_bloc/payment_bloc.dart';
import '../models/messages.dart';
import '../models/payment_model.dart';

ITheUltimatePaymentProcessingPackageMessages kMessages =
    ArabicTheUltimatePaymentProcessingPackageMessages();

void handelMoyaserPaymentResponse({
  required PaymentBloc paymentBloc,
  required MoyaserTransactionModel transaction,
}) {
  try {
    if (transaction.status == 'initiated') {
      paymentBloc.add(
        PaymentBlocEvent.openUrl(transaction.source!.transactionUrl!),
      );
    } else if (transaction.status == 'failed') {
      paymentBloc.add(
        PaymentBlocEvent.error(
            transaction.source?.message ?? kMessages.somethingWentWrong),
      );
    } else if (transaction.status == 'paid') {}
    paymentBloc.add(const PaymentBlocEvent.checkPaymentStatus());
  } catch (e) {
    paymentBloc.add(PaymentBlocEvent.error(transaction.source?.message ?? e));
  }
}

String decodeError(dynamic error) {
  String errorStr;
  if (error is String) errorStr = error;
  try {
    String message;
    if (error is DioError) {
      message = _mapDioError(error);
    } else {
      message = '$error';
    }
    errorStr = message;
  } catch (e) {
    errorStr = '$e';
  }

  return _mapMoyaserMessage(errorStr);
}

String _mapDioError(DioError error) {
  if (error.error is SocketException) {
    return kMessages.noConnection;
  }

  if (error.response?.data['errors'] != null &&
      error.response?.data['errors'] is Map) {
    final message = StringBuffer();
    final map = error.response?.data['errors'] as Map;
    for (final value in map.values) {
      if (value is List) {
        for (final str in value) {
          message.write('$str\n');
        }
      } else {
        message.write('$value\n');
      }
    }
    return message.toString();
  } else if (error.response?.data['error'] != null) {
    return '${error.response?.data['error']}';
  } else if (error.response?.data['message'] != null) {
    return '${error.response?.data['message']}';
  } else {
    return error.message;
  }
}

String _mapMoyaserMessage(String rawMessage) {
  if (rawMessage.contains('INSUFFICIENT_FUNDS')) {
    return kMessages.insufficientFunds;
  } else if (rawMessage.contains('DECLINED')) {
    return kMessages.declined;
  } else if (rawMessage.contains('UNSPECIFIED_FAILURE')) {
    return kMessages.unspecifiedFailure;
  } else if (rawMessage.contains('EXPIRED_CARD')) {
    return kMessages.expiredCard;
  } else if (rawMessage.contains('TIMED_OUT')) {
    return kMessages.timedOut;
  } else if (rawMessage.contains('REFERRED')) {
    return kMessages.referred;
  } else if (rawMessage.contains('AUTHENTICATION_FAILED')) {
    return kMessages.authenticationFailed;
  } else if (rawMessage.contains('AUTHENTICATION_ATTEMPTED')) {
    return kMessages.authenticationAttempted;
  } else if (rawMessage.contains('AUTHENTICATION_NOT_AVAILABLE')) {
    return kMessages.authenticationNotAvailable;
  } else if (rawMessage.contains('CARD_NOT_ENROLLED')) {
    return kMessages.cardNotEnrolled;
  }

  return rawMessage;
}
