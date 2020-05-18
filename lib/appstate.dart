
import 'package:flutter/cupertino.dart';

class AppState with ChangeNotifier {
  AppState();

  String theme = "";

  void setTheme(String t) {
    theme = t;
    notifyListeners();
  }

  String get getTheme => theme;
}