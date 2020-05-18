import 'package:CloudBerry/screens/appscreen.dart';
import 'package:CloudBerry/screens/controlcenterscreen.dart';
import 'package:CloudBerry/screens/overviewscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:CloudBerry/config.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.themeCallback}) : super(key: key);
  Function themeCallback;
  int selected = 1;
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    PageController ctrl = PageController(
      initialPage: widget.selected,
    );
    return WillPopScope(
      child: CupertinoPageScaffold(
          navigationBar: null,
          child: Container(
              width: MediaQuery.of(context).size.width,
              child: PageView(
                  pageSnapping: true,
                  children: [
                    ControlCenterScreen(),
                    OverviewScreen(
                      ctrl: ctrl,
                    ),
                    AppScreen()
                  ],
                  controller: ctrl),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5), BlendMode.overlay),
                      image: AssetImage(
                        (getThemeId(context) == 'dark')
                            ? 'assets/wallpaper_dark.jpg'
                            : 'assets/wallpaper_light.jpg',
                      ),
                      fit: BoxFit.cover)))),
      onWillPop: () async {
        Navigator.pushNamed(context, 'home');
        return true;
      },
    );
  }
}
