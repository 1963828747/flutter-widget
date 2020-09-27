import 'package:flutter/material.dart';

///中心-我的收益-设置密码
class SetPasswordPage extends StatefulWidget {
  @override
  _SetPasswordPageState createState() => _SetPasswordPageState();
}

class _SetPasswordPageState extends State<SetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('设置密码',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Container(
            margin: EdgeInsets.all(14),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border(
                  top: BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),
                  left: BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),
                  right: BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 1,
                  )),
            ),
            child: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.black,
              size: 26,
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      alignment:Alignment.centerLeft,
                      child: Text('设置您的支付密码',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 17,),
                    Container(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: '输入密码',
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none
                            ),
                            hintStyle: TextStyle(
                                fontSize: 14,color: Colors.grey
                            )
                        ),
                        //      controller: _controller,
                      ),
                    ),
                    Container(
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none
                            ),
                            hintText: '确认密码',
                            hintStyle: TextStyle(
                                fontSize: 14,color: Colors.grey
                            )
                        ),
                        //      controller: _controller,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Row(
                children: [
                  Spacer(),
                  RaisedButton(
                    color: Colors.blue,
                    // 按钮背景色
                    highlightColor: Colors.blue[700],
                    // 按钮高亮后的背景色
                    colorBrightness: Brightness.dark,
                    // 使用深色主题，保证按钮文字颜色为浅色
                    splashColor: Colors.grey,
                    // 点击时，水波动画中水波的颜色
                    child: Container(
                        alignment: Alignment.center,
                        height: 48,
                        width: 161,
                        child: Text("下一步",style: TextStyle(fontSize: 16),)),
                    // 文本
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    //圆角矩形
                    onPressed: () {},
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(height: 10,)
            ],
        ),
      ),
    );
  }
}
