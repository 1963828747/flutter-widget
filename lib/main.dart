import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'file:///C:/Users/Administrator/AndroidStudioProjects/widget/lib/page/home/index/custompaint_widget.dart';
import 'file:///C:/Users/Administrator/AndroidStudioProjects/widget/lib/page/home/index/start_widget.dart';
import 'package:widget/tab/tab.dart';
import 'package:widget/view/login_widget.dart';
import 'package:widget/view_models/login_view_model.dart';
import 'other/clock.dart';
import 'other/thermometer.dart';

void main() {
  runApp(MyApp());

}
GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
class MyApp extends StatelessWidget {
  // This widget is the root of your application.login_widget.dart
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: navKey,
      theme: ThemeData(
        // 1.亮度: light-dark
          brightness: Brightness.light,
          // 2.primarySwatch: primaryColor/accentColor的结合体
          primarySwatch: Colors.red,
          // 3.主要颜色: 导航/底部TabBar
          primaryColor: Colors.pink,
          // 4.次要颜色: FloatingActionButton/按钮颜色
          accentColor: Colors.orange,
          // 5.卡片主题
          cardTheme: CardTheme(
              color: Colors.greenAccent,
              elevation: 10,
              shape: Border.all(width: 3, color: Colors.red),
              margin: EdgeInsets.all(10)
          ),
          // 6.按钮主题
          buttonTheme: ButtonThemeData(
              minWidth: 0,
              height: 38
          ),
          // 7.文本主题
          textTheme: TextTheme(
            title: TextStyle(fontSize: 30, color: Colors.blue),
            display1: TextStyle(fontSize: 10),
          )
      ),
//     home: Tabs(),
    home: StartWidget(),
//   home:IdentityPage()
//      home: ChangeNotifierProvider(
//        create: (_) => LoginViewModel(),
//        child: LoginWidget(),
//      ),
    );
  }
}


