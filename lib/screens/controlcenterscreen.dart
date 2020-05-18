import 'package:CloudBerry/custom/customcard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:theme_provider/theme_provider.dart';

class ControlCenterScreen extends StatefulWidget {
  Key key;
  @override
  _ControlCenterScreenState createState() => _ControlCenterScreenState();
}

class _ControlCenterScreenState extends State<ControlCenterScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoScrollbar(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomCard(
            title: Text(
              "Theme",
              style: TextStyle(fontSize: 20),
            ),
            icon: Icon(Feather.feather),
            child: Column(children: [
              CupertinoSlidingSegmentedControl(
                  thumbColor: CupertinoColors.activeBlue,
                  groupValue: (Theme.of(context).brightness == Brightness.dark)
                      ? 'dark'
                      : 'light',
                  children: {"light": Text("Light"), "dark": Text("Dark")},
                  onValueChanged: (dynamic index) {
                    ThemeProvider.controllerOf(context).setTheme(index);
                  }),
            ]))
      ],
    ));
  }
}
