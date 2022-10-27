import 'package:flutter/material.dart';
import 'package:webviewx/webviewx.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({
    Key? key,
    required this.url,
    required this.onPayment,
    this.onWebViewLoaded,
  }) : super(key: key);

  final String url;
  final void Function(bool isPaid, String msg) onPayment;
  final void Function(BuildContext context, String url,
      void Function(bool isPaid, String msg) onPayment)? onWebViewLoaded;

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  WebViewXController? controller;
  String? lastUrl;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(''),
          actions: [
            IconButton(
              onPressed: () => controller?.reload(),
              icon: const Icon(Icons.refresh),
            )
          ],
        ),
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, con) {
              return WebViewX(
                initialContent: widget.url,
                initialSourceType: SourceType.url,
                height: con.maxHeight,
                width: con.maxWidth,
                javascriptMode: JavascriptMode.unrestricted,
                onPageFinished: (url) {
                  if (url != lastUrl) {
                    lastUrl = url;

                    widget.onWebViewLoaded?.call(
                      context,
                      url,
                      widget.onPayment,
                    );
                  }
                },
                onWebViewCreated: (controller) => this.controller = controller,
              );
            },
          ),
        ),
      ),
    );
  }
}
