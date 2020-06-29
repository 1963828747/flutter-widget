import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgressWidget extends StatefulWidget {
  @override
  _ProgressWidgetState createState() => _ProgressWidgetState();
}

class _ProgressWidgetState extends State<ProgressWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress进度条'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
          child: Column(
//          crossAxisAlignment: CrossAxisAlignment.center,
//          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('条形进度条LinearProgressIndicator'),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: LinearProgressIndicator(
                  backgroundColor: Colors.grey,
                ),
                height: 4.0,
                width: 200,
              ),
              Container(
                //限制进度条的高度
                height: 6.0,
                //限制进度条的宽度
                width: 200,
                margin: EdgeInsets.symmetric(vertical: 10),
                child: new LinearProgressIndicator(
                  //0~1的浮点数，用来表示进度多少;如果 value 为 null 或空，则显示一个动画，否则显示一个定值
                    value: 0.8,
                    //背景颜色
                    backgroundColor: Colors.grey,
                    //进度颜色
                    valueColor:
                    new AlwaysStoppedAnimation<Color>(Colors.blueAccent)),
              ),
              Text('圆形形进度条CircularProgressIndicator'),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.redAccent),
                  backgroundColor: Colors.grey,
                ),
                height: 44.0,
                width: 44.0,
              ),
              //CircularProgressIndicator不具备设置高度的选项，可以使用SizedBox来设置高度与宽度
              Container(
                //限制进度条的高度
                height: 40.0,
                //限制进度条的宽度
                width: 40,
                margin: EdgeInsets.symmetric(vertical: 10),
                child: new CircularProgressIndicator(
                    //0~1的浮点数，用来表示进度多少;如果 value 为 null 或空，则显示一个动画，否则显示一个定值
                    value: 0.3,
                    //背景颜色
                    backgroundColor: Colors.grey,
                    //进度颜色
                    valueColor: new AlwaysStoppedAnimation<Color>(Colors.red)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
