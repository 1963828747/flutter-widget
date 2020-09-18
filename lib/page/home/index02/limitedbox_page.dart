import 'package:flutter/material.dart';
class LimitedBoxPage extends StatefulWidget {
  @override
  _LimitedBoxPageState createState() => _LimitedBoxPageState();
}

class _LimitedBoxPageState extends State<LimitedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LimitedBoxPage'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body: Row(
      children: [
        Container(
          color: Colors.grey,
          width: 100.0,
        ),
          LimitedBox(
            maxWidth: 100.0,//设置最大宽度 限定child在此范围内
            child: Container(
              color: Colors.lightGreen,
              width: 300.0,
            ),
          ),
        ],

      )

//      Container(
//        color: Colors.amberAccent,
////        height: 500,
////        width: 500,
//        child: LimitedBox(
//          maxHeight:150,
//          maxWidth:150,
//          child:Container(
//            alignment: Alignment.center,
//            height: 200,
//            width: 200,
//            color: Colors.blue,
//            child: Text('123'),
//          )
//        )
//      ),
//    body: Center(
//      child: Container(
//        height: 300,
//        child: ListView(
//          children: [
//            for (var i = 0;i <= 100;i++)
//              LimitedBox(
//                maxHeight:200,
//              child:Container(
//                alignment: Alignment.center,
//                height: 50,
//                child: Text('LimitedBoxPage'),
//              )
//              ),
//          ],
//        ),
//      ),
//    ),
    );
  }
}
