//import 'package:flutter/material.dart';
//
//class CustomPainterPage extends StatefulWidget {
//  @override
//  _CustomPainterPageState createState() => _CustomPainterPageState();
//}
//
//class _CustomPainterPageState extends State<CustomPainterPage> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('CustomPainter'),
//        centerTitle: true,
//        leading: GestureDetector(
//            onTap: () {
//              Navigator.pop(context);
//            },
//            child: Icon(Icons.keyboard_arrow_left)),
//      ),
//      body: CustomPaint(
//        child: Container(
//          height: 100,
//          width: 100,
//        ),
//        size: Size(200, 100),
//        painter:MyPainter(),
//      ),
//    );
//  }
//}
//class MyPainter extends CustomPaint{
//  @override
//  void paint(Canvas canvas,Size size){
//    canvas.drawLine(p1, p2, paint)
//  }
//  @override
//  bool shouldRepaint(CustomPainter old){
//    return old.myParameter != myParameter;
//  }
//}
