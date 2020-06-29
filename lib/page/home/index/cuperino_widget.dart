import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'adaptorwidget.dart';

class CupperinoWidget extends StatefulWidget {
  @override
  _CupperinoWidgetState createState() => _CupperinoWidgetState();
}

class _CupperinoWidgetState extends State<CupperinoWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home,),
              title: Text("首页"),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings,),
              title: Text("设置"),
            ),
          ],
          activeColor: Colors.red,
          inactiveColor: Color(0xff333333),
          backgroundColor: Color(0xfff1f1f1),
          iconSize: 25.0,
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            builder: (context) {
              switch (index) {
                case 0:
                  return AdaptorWidget();
                  break;
                case 1:
                  return CupperinoWidget();
                  break;
              }
            },
          );
        }
    );
  }
}
