import 'package:flutter/material.dart';

class PhoneNumberPage extends StatefulWidget {
  @override
  _PhoneNumberPageState createState() => _PhoneNumberPageState();
}

class _PhoneNumberPageState extends State<PhoneNumberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('手机号码',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            )),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: UnconstrainedBox(
            child: Container(
//          padding: EdgeInsets.all(18),
                child: Image.network(
              'https://img02.mockplus.cn/idoc/xd/2020-06-17/eaaa9c8c-355c-467d-8aaf-db2583d2490e.png',
              width: 24,
              height: 24,
              fit: BoxFit.fill,
            )),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 46,
            color: Colors.white,
            margin: EdgeInsets.only(top: 16, bottom: 24),
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: <Widget>[
                Text('手机号',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(38, 38, 38, 0.85),
                    )),
                Spacer(),
                Text('13888888888',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(153, 153, 153, 1),
                    ))
              ],
            ),
          ),
          Container(
            height: 46,
            padding: EdgeInsets.only(left: 16, right: 16),
            width: MediaQuery.of(context).size.width - 32,
            child: FlatButton(
              color: Color.fromRGBO(24, 144, 255, 1),
              //设置背景色为黄色
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              //设置斜角矩形边框
              colorBrightness: Brightness.light,
              //使用亮色主题，保证按钮文字颜色为深色
              onPressed: () {},
              child: Text('更换手机号',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
