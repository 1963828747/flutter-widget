import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlutterLogoWidget extends StatefulWidget {
  @override
  _FlutterLogoWidgetState createState() => _FlutterLogoWidgetState();
}

class _FlutterLogoWidgetState extends State<FlutterLogoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar:AppBar(
          title: Text('FlutterLogo'),
          centerTitle: true,
          leading: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.keyboard_arrow_left)),
        ),
        body: Column(
          children: <Widget>[
            Center(
              child:  FlutterLogo(
                colors: Colors.cyan,//设置颜色,部分颜色没法调整
                size: 300,//设置大小
                textColor: Colors.blue,//用于在徽标上绘制“Flutter”文本的颜色，如果样式为
                duration: Duration(microseconds: 1),//是否绘制“flutter”文本。默认情况下，仅绘制徽标本身
                style: FlutterLogoStyle.horizontal ,//如果更改样式，颜色或 textColor属性，动画的时间长度
                curve: Curves.bounceIn,////如果样式，颜色或textColor 发生更改，则会生成徽标动画的曲线。
              )
            ),
          ],
        )
      ),
    );
  }
}
