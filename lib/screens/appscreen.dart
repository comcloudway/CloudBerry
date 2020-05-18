import 'dart:convert';

import 'package:CloudBerry/WebViewApp.dart';
import 'package:CloudBerry/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AppScreen extends StatefulWidget {
  AppScreen({
    Key key,
  }) : super(key: key);
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  Widget _view = Center(
      child: Column(
    children: [CupertinoActivityIndicator()],
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
  ));
  @override
  void initState() {
    List<Widget> temp = [Padding(padding: EdgeInsets.only(top: 20))];
    http.get(urls['apps']).then((value) {
      var d = json.decode(value.body);
      var app_list = d['apps'] as List;
      for (var app in app_list) {
        temp.add(GestureDetector(
            onTap: () {
              runApp(WebViewApp(url: app['src']));
            },
            child: Container(
                width: MediaQuery.of(context).size.width * 0.50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.transparent),
                child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    alignment: WrapAlignment.start,
                    children: [
                      Image.network(app['icon'], width: 50),
                      Padding(
                        child: Text(
                          app['name'],
                          style: TextStyle(fontSize: 15),
                        ),
                        padding: EdgeInsets.only(left: 10),
                      )
                    ]))));
        temp.add(Divider());
      }
      setState(() {
        _view = ListView(
          children: temp,
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          child: _view,
          padding: EdgeInsets.all(10),
        ),
        backgroundColor: (getThemeId(context) == 'dark')
            ? CupertinoColors.black.withOpacity(0.5)
            : CupertinoColors.white.withOpacity(0.5));
  }
}
