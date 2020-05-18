import 'dart:async';
import 'dart:convert';

import 'package:CloudBerry/WebViewApp.dart';
import 'package:CloudBerry/config.dart';
import 'package:CloudBerry/custom/customchip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class OverviewScreen extends StatefulWidget {
  OverviewScreen({Key key, this.ctrl}) : super(key: key);
  Widget _time = CupertinoActivityIndicator();
  PageController ctrl;
  _OverviewScreenState createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  @override
  void initState() {
    Timer.periodic(new Duration(seconds: 10), (timer) {
      var now = new DateTime.now();
      if (this.mounted) {
        setState(() {
          widget._time = Text(
            ((now.hour < 10)
                    ? '0' + now.hour.toString()
                    : now.hour.toString()) +
                ':' +
                ((now.minute < 10)
                    ? '0' + now.minute.toString()
                    : now.minute.toString()),
            style: GoogleFonts.zcoolQingKeHuangYou(
                fontSize: 100,
                color: (getThemeId(context) == 'dark')
                    ? CupertinoColors.white
                    : CupertinoColors.white),
          );
        });
      }
    });
  }

  String _run_text = '';
  @override
  Widget build(BuildContext context) {
    return CupertinoScrollbar(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Padding(child: widget._time, padding: EdgeInsets.all(15)),
          Container(
            padding: EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width * 0.75,
            child: CupertinoTextField(
              onChanged: (String v) {
                _run_text = v;
              },
              placeholder: 'Run...',
              placeholderStyle: TextStyle(color: Colors.grey[600]),
              controller: TextEditingController(text: _run_text),
              suffix: GestureDetector(
                child: Padding(
                    child: Transform(
                      child: Icon(
                        Feather.terminal,
                      ),
                      transform: Matrix4.identity()
                        ..scale(-1.0, 1.0, 1.0)
                        ..translate(-25.0, 0.0, 0.0),
                    ),
                    padding: EdgeInsets.all(10)),
                onTap: () {
                  //TODO: Add Commands
                  List<String> cmd = _run_text.split(' ');
                  switch (cmd[0]) {
                    // commands index with :
                    case ':open':
                      //Fetch app list loop trough searching for id specified as argument 1, run app webviewapp with correspondng url
                      http.get(urls['apps']).then((value) {
                        var d = json.decode(value.body);
                        var app_list = d['apps'] as List;
                        for (var app in app_list) {
                          if(app['id']==cmd[1]) {
                            runApp(WebViewApp(url: app['src']));
                          }
                        }
                      });
                      break;
                  }
                  setState(() {
                    _run_text = '';
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Column(children: [
              CustomChip(
                  leading: Expanded(child: Text("AppList")),
                  trailing: Icon(Feather.arrow_right_circle),
                  onTap: () {
                    widget.ctrl.animateToPage(2,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                  }),
              CustomChip(
                  trailing: Expanded(
                    child: Text(
                      "Control Panel",
                      textAlign: TextAlign.right,
                    ),
                  ),
                  onTap: () {
                    widget.ctrl.animateToPage(0,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                  },
                  leading: Icon(Feather.arrow_left_circle)),
            ]),
          )
        ]));
  }
}
