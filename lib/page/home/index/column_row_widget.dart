import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnRow extends StatefulWidget {
  @override
  _ColumnRowState createState() => _ColumnRowState();
}

class _ColumnRowState extends State<ColumnRow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column与Row'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
        children: <Widget>[
          Text('Wrap',style: TextStyle(color: Colors.black),),
          Container(
            height: 300,
            child: Wrap(
//          direction: Axis.vertical,

              alignment: WrapAlignment.center,//定位Wrap
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.redAccent,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.greenAccent,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.lightBlueAccent,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.greenAccent,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.lightBlueAccent,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.redAccent,
                ),

              ],
            ),
          ),
          Text('Row',style: TextStyle(color: Colors.black),),
          Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center, //主轴居中
//              mainAxisAlignment: MainAxisAlignment.start,//主轴居左
//              mainAxisAlignment: MainAxisAlignment.end,//主轴居右
              crossAxisAlignment: CrossAxisAlignment.center, //横轴居中
//              crossAxisAlignment: CrossAxisAlignment.start,//横轴居
//              crossAxisAlignment: CrossAxisAlignment.end,//横轴居中
              children: <Widget>[
                Container(
                    width: 100,
                    height: 100,
                    color: Colors.redAccent,
                ),
                Container(
                    width: 100,
                    height: 100,
                    color: Colors.greenAccent,
                ),
                Container(
                    width: 100,
                    height: 100,
                    color: Colors.lightBlueAccent,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text('Column',style: TextStyle(color: Colors.black),),
          Container(
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, //主轴居中
//              mainAxisAlignment: MainAxisAlignment.start,//主轴居左
//              mainAxisAlignment: MainAxisAlignment.end,//主轴居右
              crossAxisAlignment: CrossAxisAlignment.center, //横轴居中
//              crossAxisAlignment: CrossAxisAlignment.start,//横轴居
//              crossAxisAlignment: CrossAxisAlignment.end,//横轴居中
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.redAccent,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.greenAccent,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.lightBlueAccent,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
