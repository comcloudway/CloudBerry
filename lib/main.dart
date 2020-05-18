import 'package:CloudBerry/config.dart';
import 'package:CloudBerry/screens/homescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

void main() {
  runApp(CloudBerry());
}

class CloudBerry extends StatefulWidget {
  @override
  _CloudBerryState createState() => _CloudBerryState();
}

class _CloudBerryState extends State<CloudBerry> {
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
        saveThemesOnChange: true,
        loadThemeOnInit: true,
        defaultThemeId: 'dark',
        themes: [
          AppTheme(
              id: 'dark',
              description: 'Dark App Theme',
              data: ThemeData(
                brightness: Brightness.dark,
                primaryColor: CupertinoColors.systemBlue,
              )),
          AppTheme(
              id: 'light',
              description: 'Light App Theme',
              data: ThemeData(
                  brightness: Brightness.light,
                  primaryColor: CupertinoColors.systemBlue))
        ],
        child: ThemeConsumer(child: CB()));
  }
}

class CB extends StatefulWidget {
  @override
  _CBState createState() => _CBState();
}

class _CBState extends State<CB> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: theme[(ThemeProvider.themeOf(context).id)],
      home: HomeScreen(),
    );
  }
}
