import 'package:CloudBerry/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
 * CustomChip
 */
class CustomChip extends StatefulWidget {
  CustomChip({Key key, this.trailing, this.leading, this.onTap})
      : super(key: key);
  Widget trailing;
  Widget leading;
  Function onTap = () {};
  @override
  _CustomChipState createState() => _CustomChipState();
}

class _CustomChipState extends State<CustomChip> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 15),
        child: GestureDetector(
            onTap: widget.onTap,
            child: Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: (getThemeId(context) == 'dark')
                      ? CupertinoColors.black
                      : CupertinoColors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [widget.leading, widget.trailing],
              ),
            )));
  }
}
