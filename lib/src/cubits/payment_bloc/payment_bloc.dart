import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/api_caller.dart';
import '../../helpers/m.dart';
import '../../models/payment_configuration.dart';
import '../../models/payment_processor.dart';

part 'payment_bloc.freezed.dart';
part 'payment_event.dart';
part 'payment_state.dart';

class PaymentBloc extends Bloc<PaymentBlocEvent, PaymentBlocState> {
  PaymentBloc({
    required this.configuration,
  }) : super(const PaymentBlocState.initial()) {
    apiCaller = ApiCaller(
      paymentRetrievalHeaders: configuration.paymentRetrievalHeaders,
    );
    on<PaymentBlocEvent>((event, emit) {
      event.when(
        openUrl: (url) => emit(PaymentBlocState.openUrl(url)),
        loading: () => emit(const PaymentBlocState.loading()),
        paid: () {
          _timer?.cancel();
          apiCaller.close();
          emit(const PaymentBlocState.paid());
        },
        error: (error) {
          _timer?.cancel();
          apiCaller.close();
          emit(PaymentBlocState.failure(decodeError(error)));
        },
        pay: (paymentProcessor) => paymentProcessor.pay(this),
        checkPaymentStatus: () => _checkPaymentStatus(emit),
        cancelCheckPaymentStatus: () => _cancelCheckInvoiceStatus(),
      );
    });
  }

  PaymentConfiguration configuration;
  late ApiCaller apiCaller;

  Timer? _timer;

  @override
  Future<void> close() async {
    _timer?.cancel();
    apiCaller.close();
    super.close();
  }

  @override
  void onChange(Change<PaymentBlocState> change) {
    super.onChange(change);
    debugPrint('Next PaymentState: ${change.nextState}');
  }

  Future<void> _checkPaymentStatus(Emitter<PaymentBlocState> emitter) async {
    emitter(const PaymentBlocState.checkingPaymentStatus());
    try {
      final res = await apiCaller.makeReq(
        configuration.paymentRetrievalUrl,
        configuration.paymentRetrievalRequestMethod,
      );

      final paymentStatus = configuration.paymentStatusCheck(res);
      paymentStatus.when(
        paid: () => add(const PaymentBlocEvent.paid()),
        failure: (message) => add(PaymentBlocEvent.error(message)),
        loading: () => _timer = Timer(
          const Duration(seconds: 3),
          () => add(const PaymentBlocEvent.checkPaymentStatus()),
        ),
      );
    } catch (e) {
      add(PaymentBlocEvent.error(e));
      addError(e);
    }
  }

  void _cancelCheckInvoiceStatus() {
    _timer?.cancel();
    apiCaller.close();
    add(const PaymentBlocEvent.error(''));
  }
}
