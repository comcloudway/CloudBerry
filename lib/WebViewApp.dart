import 'package:CloudBerry/main.dart';
import 'package:easy_web_view/easy_web_view.dart';
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
      child: EasyWebView(
        src: widget.url,
      ),
      onWillPop: () {
        runApp(CloudBerry());
      },
    ));
  }
}
