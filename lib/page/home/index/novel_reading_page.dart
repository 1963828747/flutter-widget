import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NovelReading extends StatefulWidget {
  @override
  _NovelReadingState createState() => _NovelReadingState();
}

class _NovelReadingState extends State<NovelReading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
        brightness: Brightness.light,
        centerTitle: true,//标题居中
        elevation: 0,//去除阴影
        backgroundColor: Colors.greenAccent,//背景颜色
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),//左边放组件
        actions: <Widget>[
          //右边放组件
          Icon(Icons.send),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}
