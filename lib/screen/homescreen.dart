import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  WebViewController _controller = WebViewController();
  // ..setJavaScriptMode(JavaScriptMode.unrestricted)
  // ..loadRequest(
  //   Uri.parse('https://mahavastu.com/remedies/'),
  // );

  @override
  void initState() {
    super.initState();
    _controller.setJavaScriptMode(JavaScriptMode.unrestricted);
    _controller.loadRequest(
      Uri.parse('https://mahavastu.com/remedies/'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.04),
        constraints: BoxConstraints.expand(),
        child: WebViewWidget(controller: _controller),
      ),
    );
  }
}
