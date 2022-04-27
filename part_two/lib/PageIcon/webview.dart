import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:flutter/material.dart';

class WebViewPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return WebviewScaffold(url: "https://google.com");
  }
}
