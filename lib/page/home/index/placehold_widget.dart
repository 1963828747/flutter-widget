import 'package:flutter/material.dart';

class PlaceholdWidget extends StatefulWidget {
  @override
  _PlaceholdWidgetState createState() => _PlaceholdWidgetState();
}

class _PlaceholdWidgetState extends State<PlaceholdWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: <Widget>[
            TextField(//提示缩小在输入上方
              decoration:
              InputDecoration(
                  fillColor: Colors.blue.shade100,
                  filled: true,
                  labelText: 'Hello'),
            ),
            TextField(//输入后提示消失，如果输入不符合要求就可以报相应错误（自定义提示语）
              decoration: InputDecoration(
                  fillColor: Colors.blue.shade100,
                  filled: true,
                  hintText: 'Hello',
                  errorText: 'error'),
            ),
            TextField(//添加图标
              decoration: InputDecoration(

                  fillColor: Colors.blue.shade100,
                  filled: true,
                  helperText: 'help',
                  prefixIcon: Icon(Icons.local_airport),
                  suffixText: 'airport'),
            ),
            TextField(//输入框添加圆切角
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
//            borderSide: BorderSide(color: Colors.red, width: 3.0, style: BorderStyle.solid)//没什么卵效果
                  )),
            ),
            Theme(//利用ThemeData改变TextField的边框样色
              data: new ThemeData(primaryColor: Colors.red, hintColor: Colors.blue),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
//            borderSide: BorderSide(color: Colors.red, width: 3.0, style: BorderStyle.solid)//没什么卵效果
                    )),
              ),
            ),
            Container(//改变边框的粗细,这些TextField的decoration彻底不能满足要求了，需要重构成这种方式,InputDecoration.collapsed可以禁用装饰线，而是使用外面包围的Container的装饰线
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.center,
              height: 60.0,
              decoration: new BoxDecoration(
                  color: Colors.blueGrey,
                  border: new Border.all(color: Colors.black54, width: 4.0),
                  borderRadius: new BorderRadius.circular(12.0)),
              child: new TextFormField(
                decoration: InputDecoration.collapsed(hintText: 'hello'),
              ),
            ),
            Icon(
              Icons.access_alarm,//设置使用哪种图标
              size: 300,//设置图标大小
              color: Colors.yellow,//设置图标颜色
              textDirection:TextDirection.rtl ,//设置用于渲染图标的文本方向
              semanticLabel: "语义标签",//设置用于渲染图标的文本方向
            ),

            Placeholder(
              color: Colors.blue,// 设置占位符颜色 defalutBlue Grey 70
              strokeWidth: 5,//设置画笔宽度
              fallbackHeight: 200,//设置占位符宽度
              fallbackWidth: 200,//设置占位符高度
            ),

            Icon(
              Icons.build,
              size: 300,
              color: Colors.green,
              textDirection:TextDirection.ltr ,
            ),
          ],
        ),
      ),
    );
  }
}
