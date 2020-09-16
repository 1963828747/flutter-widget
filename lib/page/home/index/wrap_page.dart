import 'package:flutter/material.dart';

class WrapPage extends StatefulWidget {
  @override
  _WrapPageState createState() => _WrapPageState();
}

class _WrapPageState extends State<WrapPage> {
  String name;
  String id;
  int Count;
  bool isLight;
  List _lightList = [
    {
      'isLight':false,
      'name':'1',
      'id':'12313121',
      'Count':1,
    },
    {
      'isLight':false,
      'name':'2',
      'id':'122343121',
      'Count':2,
    },
    {
      'isLight':false,
      'name':'3',
      'id':'1242421',
      'Count':3,
    },
    {
      'isLight':true,
      'name':'4',
      'id':'122321',
      'Count':4,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WrapPage'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            child: Wrap(
//          direction: Axis.vertical,
              alignment: WrapAlignment.center,//定位Wrap
              children: <Widget>[
//                Container(
//                  width: 100,
//                  height: 100,
//                  color: isLight?Colors.redAccent:Colors.blueAccent,
//                  child: Text(_lightList['name']),
//                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
