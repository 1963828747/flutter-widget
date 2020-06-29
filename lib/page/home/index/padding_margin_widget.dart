import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaddingMargin extends StatefulWidget {
  @override
  _PaddingMarginState createState() => _PaddingMarginState();
}

class _PaddingMarginState extends State<PaddingMargin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Padding与margin'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body:Center(
        child: Column(
//        crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text('Padding内边距'),
            Container(
              height: 100,
              width: 100,
              color: Colors.lightBlueAccent,
              padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),//分别对上下左右添加的内边距
//            padding: EdgeInsets.all(10),//上下左右同时添加相同的内边距
//            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),//horizontal上下同时添加相同的内边距、vertical左右同时添加相同的内边距
              child: Expanded(
                child: Container(
                  color: Colors.amberAccent,
                ),
              ),
            ),
            SingleChildScrollView(),
            SizedBox(height: 10,),
            Text('margin外边距'),
            Container(
              color: Colors.red,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.lightBlueAccent,
                margin: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),//分别对上下左右添加的外边距
//            margin: EdgeInsets.all(10),//上下左右同时添加相同的外边距
//            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),//horizontal上下同时添加相同的外边距、vertical左右同时添加相同的内边距
                child: Expanded(
                  child: Container(
                    color: Colors.amberAccent,
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
