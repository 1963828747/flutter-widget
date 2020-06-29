import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button组件分类'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        shrinkWrap: true,
        children: <Widget>[
          Column(
            children: <Widget>[
              FloatingActionButton(
                onPressed: () {},
                tooltip: 'Increment',
                child: Icon(Icons.add),
              ),
              Text('圆形的按钮，一般出现在屏幕内容的前面，用来处理界面中最常用、最基础的用户动作。'),
            ],
          ),
          Column(
            children: <Widget>[
              RaisedButton(
                child: Text("RaisedButton"),
                onPressed: () {},
              ),
              Text('凸起的按钮，默认带有灰色背景，被点击后灰色背景会加深。')
            ],
          ),
          Column(
            children: <Widget>[
              FlatButton(
                child: Text("FlatButton"),
                onPressed: () {},
              ),
              Text('扁平化的按钮，默认透明背景，被点击后会呈现灰色背景。'),
            ],
          ),

          Column(
            children: <Widget>[
              OutlineButton(
                child: Text("OutlineButton"),
                onPressed: () {},
              ),
              Text('OutlineButton默认有一个边框，不带阴影且背景透明。按下后，边框颜色会变亮、同时出现背景和阴影(较弱)，'),
            ],
          ),
          Column(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.thumb_up),
                onPressed: () {},
              ),
              Text('IconButton是一个可点击的 Icon，不包括文字，默认没有背景，获取焦点后显示背景。'),
            ],
          ),
          Column(
            children: <Widget>[
              RaisedButton.icon(
                icon: Icon(Icons.send),
                label: Text("发送"),
                onPressed: () {},
              ),
              OutlineButton.icon(
                icon: Icon(Icons.add),
                label: Text("添加"),
                onPressed: () {},
              ),
              FlatButton.icon(
                icon: Icon(Icons.info),
                label: Text("详情"),
                onPressed: () {},
              ),
              Text('RaisedButton、FlatButton、OutlineButton都有一个 icon 构造函数，通过它可以创建带图标的按钮。')
            ],
          ),

              InkWell(
                onTap: () {},
                child: Text("给其他控件添加水波纹点击效果"),
              ),
          Column(
            children: <Widget>[
              RaisedButton(
                color: Colors.blue,
                // 按钮背景色
                highlightColor: Colors.blue[700],
                // 按钮高亮后的背景色
                colorBrightness: Brightness.dark,
                // 使用深色主题，保证按钮文字颜色为浅色
                splashColor: Colors.grey,
                // 点击时，水波动画中水波的颜色
                child: Text("Submit"),
                // 文本
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                //圆角矩形
                onPressed: () {},
              ),
              Text('RoundedRectangleBorder 圆角按钮'),
            ],
          ),
          Column(
            children: <Widget>[
              FlatButton(
                color: Colors.yellow,
                //设置背景色为黄色
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                //设置斜角矩形边框
                colorBrightness: Brightness.light,
                //使用亮色主题，保证按钮文字颜色为深色
                onPressed: () {},
                child: Icon(Icons.add),
              ),
              Text('ContinuousRectangleBorder 连续矩形边框'),
            ],
          ),
          Column(
            children: <Widget>[
              FlatButton(
                  color: Colors.yellow,
                //设置背景色为黄色
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                //设置斜角矩形边框
                  colorBrightness: Brightness.light,
                //使用亮色主题，保证按钮文字颜色为深色
                  onPressed: () {},
                  child: Icon(Icons.add)),
              Text('BeveledRectangleBorder 斜角矩形按钮'),
            ],
          )
        ],
      ),
    );
  }
}
