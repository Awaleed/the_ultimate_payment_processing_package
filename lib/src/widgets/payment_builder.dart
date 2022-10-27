import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/payment_bloc/payment_bloc.dart';
import '../helpers/dialogs_helpers.dart';
import '../models/payment_configuration.dart';
import '../models/payment_processor.dart';
import '../pages/web_view.dart';

class PaymentController {
  late PaymentBloc _paymentBloc;

  void initState({required PaymentBloc paymentBloc}) {
    _paymentBloc = paymentBloc;
  }

  String? loadingMessage;

  void pay(
    IPaymentProcessor paymentProcessor, {
    PaymentConfiguration? configuration,
  }) {
    if (configuration != null) _paymentBloc.configuration = configuration;
    _paymentBloc.add(
      PaymentBlocEvent.pay(paymentProcessor),
    );
  }
}

class PaymentBuilder extends StatefulWidget {
  const PaymentBuilder({
    Key? key,
    required this.builder,
    required this.controller,
    required this.paymentConfiguration,
    required this.onPaid,
    this.listener,
  }) : super(key: key);

  final Widget Function(BuildContext context, PaymentBlocState state)? listener;
  final Widget Function(BuildContext context, PaymentBlocState state) builder;
  final PaymentController controller;
  final PaymentConfiguration paymentConfiguration;
  final VoidCallback onPaid;

  @override
  State<PaymentBuilder> createState() => _PaymentBuilderState();
}

class _PaymentBuilderState extends State<PaymentBuilder> {
  late PaymentBloc paymentBloc;

  @override
  void initState() {
    super.initState();
    paymentBloc = PaymentBloc(
      configuration: widget.paymentConfiguration,
    );

    widget.controller.initState(paymentBloc: paymentBloc);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: paymentBloc,
      child: Builder(
        builder: (context) {
          return BlocConsumer<PaymentBloc, PaymentBlocState>(
            listener: (context, paymentState) {
              paymentState.whenOrNull(
                paid: widget.onPaid,
                openUrl: (url) async {
                  final res =
                      await Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return WebViewPage(
                        url: url,
                        onWebViewLoaded:
                            paymentBloc.configuration.onWebViewLoaded,
                        onPayment: (isPaid, msg) {
                          if (isPaid) {
                            paymentBloc.add(const PaymentBlocEvent.paid());
                          } else {
                            paymentBloc.add(PaymentBlocEvent.error(msg));
                          }
                        },
                      );
                    },
                  ));
                  if (res is! bool) {
                    paymentBloc.add(
                      const PaymentBlocEvent.cancelCheckPaymentStatus(),
                    );
                  }
                },
                failure: (error) {
                  if (error.isNotEmpty) {
                    DialogsHelpers.showErrorDialog(context, message: error);
                  }
                },
              );
            },
            builder: widget.builder,
          );
        },
      ),
    );
  }
}
