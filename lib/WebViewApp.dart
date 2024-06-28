import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'menu.dart';
import 'navigation_controls.dart';
import 'web_view_stack.dart';

class WebViewApp extends StatefulWidget {
  //const WebViewApp(int i, {super.key});
  int i;
  WebViewApp(this.i, {super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState(i);
}

class _WebViewAppState extends State<WebViewApp> {
  late final WebViewController controller;

  var i = 0;
  _WebViewAppState(this.i);
  @override
  void initState() {
    super.initState();
    /*controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://flutter.dev'),
      );*/

    switch (i) {
      case 1:
        controller = WebViewController()
          ..loadFlutterAsset('assets/www/www1/index.html');
        break;
      case 2:
        controller = WebViewController()
          ..loadFlutterAsset('assets/www/www2/index.html');
        break;
      case 3:
        controller = WebViewController()
          ..loadFlutterAsset('assets/www/www3/index.html');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter WebView'),
        actions: [
          NavigationControls(controller: controller),
          Menu(controller: controller), // ADD
        ],
      ),
      body: WebViewStack(controller: controller),
    );
  }
}
