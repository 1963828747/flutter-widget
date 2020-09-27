import 'package:flutter/material.dart';
///中心-我的收益--添加银行卡-资料
class CardInformationPage extends StatefulWidget {
  @override
  _CardInformationPageState createState() => _CardInformationPageState();
}

class _CardInformationPageState extends State<CardInformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('添加银行卡',
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
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 64,),
            Text('请绑定持卡人的银行卡',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            SizedBox(height: 17,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex:1,
                    child: Container(
                      height: 40,
                      child: Text('持卡人',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 8,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none
                          ),
                        ),
                        //      controller: _controller,
                      ),)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex:1,
                    child: Text('卡号',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ),
                  Expanded(
                      flex: 8,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.send,
                      ),),
                  Container(
                    height: 20,
                    width: 20,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border(
                          top: BorderSide(
                            color: Colors.grey,
                            width: 1,
                          ),
                          left: BorderSide(
                            color: Colors.grey,
                            width: 1,
                          ),
                          right: BorderSide(
                            color: Colors.grey,
                            width: 1,
                          ),
                          bottom: BorderSide(
                            color: Colors.grey,
                            width: 1,
                          )),
                    ),
                    child: Icon(
                      Icons.lock_outline,
                      color: Colors.grey,
                      size: 15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24,),
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
          ],
        ),
      ),
    );
  }
}
