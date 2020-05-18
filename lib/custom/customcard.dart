import 'package:CloudBerry/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
 * CustomCard
 */
class CustomCard extends StatefulWidget {
  CustomCard({
    Key key,
    this.title,
    this.icon,
    this.child,
  }) : super(key: key);
  Widget title = Text('');
  Widget icon = Text('');
  Widget child = Text('');
  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      child: Container(
          width: MediaQuery.of(context).size.width * 0.75,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: (getThemeId(context) == 'dark')
                  ? CupertinoColors.black.withOpacity(0.7)
                  : CupertinoColors.white.withOpacity(0.8)),
          child: Column(children: [
            Row(
              children: [
                widget.icon,
                Padding(
                  child: widget.title,
                  padding: EdgeInsets.only(left: 10),
                )
              ],
            ),
            Padding(
              child: widget.child,
              padding: EdgeInsets.all(10),
            )
          ])),
      padding: EdgeInsets.all(15),
    );
  }
}
