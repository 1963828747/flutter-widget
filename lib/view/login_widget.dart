import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget/view_models/login_view_model.dart';

class LoginWidget extends StatelessWidget {
  @override
  build(BuildContext context) {
    final provider = Provider.of<LoginViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '登录',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            UnconstrainedBox(
              child: Container(
                  width: 120,
                  height: 120,
                  margin: EdgeInsets.only(bottom: 100),
                  decoration: BoxDecoration(
//                  使用ShapeDecoration可以做出各种形状
//                  斜切角: BeveledRectangleBorder
//                  圆角: RoundedRectangleBorder
//                  超椭圆: SuperellipseShape
//                  体育场: StadiumBorder
//                  圆形: CircleBorder
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592201346069&di=e85a9701900185f553300d23067e6715&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201608%2F31%2F20160831202355_FjzyC.jpeg'),
                          fit: BoxFit.cover))),
            ),
            Container(
              height: 40,
              child: TextField(
                controller: provider.usernameController,
                decoration: InputDecoration(
                  labelText: "用户名",
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 40,
              child: TextField(
                obscureText: true,
                controller: provider.passwordController,
                decoration: InputDecoration(
                  labelText: "密码",
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
//              color: Colors.blue,
//              // 按钮背景色
//              highlightColor: Colors.lightBlueAccent,
//              // 按钮高亮后的背景色
//              colorBrightness: Brightness.dark,
//              // 使用深色主题，保证按钮文字颜色为浅色
//              splashColor: Colors.grey,
//              // 点击时，水波动画中水波的颜色
                onPressed: provider.login,

                /// 根据 state 的值，按钮显示不同内容。
                child: provider.state == 0
                    ? Text("登录")
                    : provider.state == 1
                        ? CircularProgressIndicator()
                        : provider.state == 2
                            ? Icon(Icons.done)
                            : Icon(Icons.cancel),
                // 文本
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                //圆角矩形
              ),
            ),
          ],
        ),
      ),
    );
  }
}
