import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Persion extends StatefulWidget {
  @override
  _PersionState createState() => _PersionState();
}

class _PersionState extends State<Persion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            shrinkWrap: true,
//              physics: BouncingScrollPhysics(),
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Opacity(opacity: 0.7,
                  child: FadeInImage.assetNetwork(
                      placeholder: 'images/avatar.png',
                      image: 'http://pic1.win4000.com/wallpaper/8/561dc74235157.jpg',
                      width: MediaQuery.of(context).size.width,
                      height: 200
                  ),),
                  Positioned(
                    child: Row(
                      children: <Widget>[
                        UnconstrainedBox(
                          child: Container(
                            margin: EdgeInsets.only(top: 90,left: 16,right: 16),
                            width: 80,
                            height: 80,
                            child: CircleAvatar(
                              //头像半径
                              radius: 50,
                              //头像图片 -> NetworkImage网络图片，AssetImage项目资源包图片, FileImage本地存储图片
                              backgroundImage: NetworkImage(
                                'http://img.zcool.cn/community/017ae9584154e3a8012060c8e04e06.jpg@2o.jpg',
                              ),
                            ),
                          ),
                        ),
                        Spacer()
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    NewWidget02(
                      text01: '昵称',
                      text02: 'Flutter工程师',
                    ),
                    NewWidget02(
                      text01: '账号',
                      text02: '1263412612',
                    ),
                    NewWidget02(
                      text01: '出生日期',
                      text02: '1999,11,12',
                    ),
                    NewWidget02(
                      text01: '工作经验',
                      text02: '三年',
                    ),
                    NewWidget02(
                      text01: '邮箱',
                      text02: '3126312134@qq.com',
                    ),
                    NewWidget02(
                      text01: '设置',
                      text02: '',
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
                child: RaisedButton(
                  color: Colors.blue,
                  // 按钮背景色
                  highlightColor: Colors.blue[700],
                  // 按钮高亮后的背景色
                  colorBrightness: Brightness.dark,
                  // 使用深色主题，保证按钮文字颜色为浅色
                  splashColor: Colors.grey,
                  // 点击时，水波动画中水波的颜色
                  child: Text("注销账号"),
                  // 文本
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  //圆角矩形
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      );
  }
}

class NewWidget02 extends StatelessWidget {
  final text01;
  final text02;

  const NewWidget02({Key key, this.text01, this.text02}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              height: 20,
              child: Text(text01),
            ),
            Spacer(),
            Container(
              height: 20,
              child: Text(text02,style: TextStyle(
                fontSize: 14,
                color: Colors.grey
              ),),
            ),
          ],
        ),
        Divider(),
      ],
    );
  }
}
