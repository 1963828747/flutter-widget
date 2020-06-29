import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  @override
  _StackWidgetState createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack层叠组件'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body: Stack(
        children: <Widget>[
          FadeInImage.assetNetwork(
              placeholder: 'images/avatar.png',
              image: 'http://pic1.win4000.com/wallpaper/8/561dc74235157.jpg',
              width: MediaQuery.of(context).size.width,
              height: 300),
          Positioned(
              top: 100,
              left: 50,
              child: Container(
                color: Colors.redAccent,
                height: 100,
                width: 300,
              ))
        ],
      ),
    );
  }
}
