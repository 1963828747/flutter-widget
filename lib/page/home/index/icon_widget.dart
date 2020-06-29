import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconWidget extends StatefulWidget {
  @override
  _IconWidgetState createState() => _IconWidgetState();

}

class _IconWidgetState extends State<IconWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon图标'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body: Center(
        child: ListView(
//          crossAxisAlignment: CrossAxisAlignment.center,
//          mainAxisAlignment: MainAxisAlignment.center,
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
          children: <Widget>[
            Divider(),
            Text('普通图标'),
            Container(
                width: 100,
                height: 100,
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 100,
                )),
            Divider(),
            Text('镜像图标'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  IconData(0xe914,
                      fontFamily: 'MaterialIcons', matchTextDirection: true),
                  color: Colors.red,
                  size: 100,
                  textDirection: TextDirection.ltr,
                ),
                Icon(
                  IconData(0xe914,
                      fontFamily: 'MaterialIcons', matchTextDirection: true),
                  color: Colors.red,
                  size: 100,
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
            Divider(),
            Text('Image图标'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ImageIcon(AssetImage("assets/images/baoc.png"),size: 100,),
                ImageIcon(AssetImage("assets/images/baoc.png"),color: Colors.green,size: 100,),//绿色
              ],
            ),//默认显
            // 示原色
            Divider(),
            Text('图标按钮'),
            IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.green,
                size: 100,
              ),
              onPressed: () {},//点击触发的方法
              highlightColor: Colors.lightBlueAccent,//长按后不松手时显示的颜色
              splashColor: Colors.blue,//点击一下时闪烁的颜色
              disabledColor: Colors.grey,//不可用时的颜色
              tooltip: "sss",//长按后的提示语
            ),
          ],
        ),
      ),
    );
  }
}
