import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/payment_bloc/payment_bloc.dart';
import '../helpers/m.dart';

class LoadingOverLay extends StatelessWidget {
  const LoadingOverLay({
    Key? key,
    required this.isLoading,
    required this.child,
    this.onCancel,
    this.message,
  }) : super(key: key);

  final Widget child;
  final bool isLoading;
  final String? message;
  final VoidCallback? onCancel;

  @override
  Widget build(BuildContext context) {
    return _LoadingOverlay(
      isLoading: isLoading,
      color: Colors.black38,
      progressIndicator: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(40.0),
            padding: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircularProgressIndicator(),
                if (message != null) ...[
                  const SizedBox(height: 10),
                  Text(
                    message!,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText1,
                  )
                ],
                if (onCancel != null) ...[
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: onCancel!,
                    child: Text(kMessages.cancel),
                  ),
                ] else ...[
                  BlocBuilder<PaymentBloc, PaymentBlocState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () => const SizedBox.shrink(),
                        checkingPaymentStatus: () => Column(
                          children: [
                            const SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () => context.read<PaymentBloc>().add(
                                    const PaymentBlocEvent
                                        .cancelCheckPaymentStatus(),
                                  ),
                              child: Text(kMessages.cancel),
                            ),
                          ],
                        ),
                      );
                    },
                  )
                ]
              ],
            ),
          ),
        ),
      ),
      child: child,
    );
  }
}

class _LoadingOverlay extends StatefulWidget {
  final bool isLoading;
  final Color? color;
  final Widget progressIndicator;
  final Widget child;

  const _LoadingOverlay({
    required this.isLoading,
    required this.child,
    this.progressIndicator = const CircularProgressIndicator(),
    this.color,
  });

  @override
  __LoadingOverlayState createState() => __LoadingOverlayState();
}

class __LoadingOverlayState extends State<_LoadingOverlay>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool? _overlayVisible;

  __LoadingOverlayState();

  @override
  void initState() {
    super.initState();
    _overlayVisible = false;
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _animation.addStatusListener((status) {
      // ignore: unnecessary_statements
      status == AnimationStatus.forward
          ? setState(() => {_overlayVisible = true})
          : null;
      // ignore: unnecessary_statements
      status == AnimationStatus.dismissed
          ? setState(() => {_overlayVisible = false})
          : null;
    });
    if (widget.isLoading) {
      _controller.forward();
    }
  }

  @override
  void didUpdateWidget(_LoadingOverlay oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!oldWidget.isLoading && widget.isLoading) {
      _controller.forward();
    }

    if (oldWidget.isLoading && !widget.isLoading) {
      _controller.reverse();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var widgets = <Widget>[];
    widgets.add(widget.child);

    if (_overlayVisible == true) {
      final modal = FadeTransition(
        opacity: _animation,
        child: Stack(
          children: <Widget>[
            Opacity(
              opacity: .5,
              child: ModalBarrier(
                dismissible: false,
                color: widget.color ?? Theme.of(context).colorScheme.background,
              ),
            ),
            Center(child: widget.progressIndicator),
          ],
        ),
      );
      widgets.add(modal);
    }

    return Stack(children: widgets);
  }
}
