import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dash(),
    );
  }
}

class Dash extends StatefulWidget {
  const Dash({super.key});

  @override
  State<Dash> createState() => _DashState();
}

class _DashState extends State<Dash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Router Dashboard"),
      ),
      body: WebView(
  initialUrl: 'http://192.168.0.1/',
  javascriptMode: JavascriptMode.unrestricted,
  onWebResourceError: (WebResourceError error) {
    print(error);
  },
),
    );
  }
}
