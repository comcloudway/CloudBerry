import 'package:CloudBerry/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebViewApp extends StatefulWidget {
  WebViewApp({Key key, this.url}) : super(key: key);
  String url;
  @override
  _WebViewAppState createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        home: WillPopScope(
      child: WebviewScaffold(
        url: widget.url,
        withZoom: true,
        withLocalStorage: true,
      ),
      onWillPop: () {
        runApp(CloudBerry());
      },
    ));
  }
}
