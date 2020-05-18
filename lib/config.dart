import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

Map<String, CupertinoThemeData> theme = {
  "dark": CupertinoThemeData(
    brightness: Brightness.dark,
    primaryColor: CupertinoColors.systemBlue,
  ),
  "light": CupertinoThemeData(
      brightness: Brightness.light, primaryColor: CupertinoColors.systemBlue),
};
getThemeId(BuildContext context) {
  return ThemeProvider.themeOf(context).id;
}

getTheme(BuildContext context) {
  return theme[ThemeProvider.themeOf(context).id];
}

Map<String, String> urls = {
  'apps':
      'https://raw.githubusercontent.com/comcloudway/ccw.icu-public-database/master/apps.json'
};
