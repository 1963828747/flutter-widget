import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GestureDetectorWidget extends StatefulWidget {
  @override
  _GestureDetectorWidgetState createState() => _GestureDetectorWidgetState();
}

class _GestureDetectorWidgetState extends State<GestureDetectorWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('各种点击事件'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(child: Text('GestureDetector'),),

            Container(child: Text('Button'),),
          ],
        ),
      )
    );
  }
}
