import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget/view/login_widget.dart';
import 'package:widget/view_models/login_view_model.dart';
import 'index/Interaction_model.dart';
import 'index/Jitter_page.dart';
import 'index/auxiliary_functions_page.dart';
import 'index/card_widget.dart';
import 'index/placehold_widget.dart';
import 'index/scrollview_page.dart';
import 'index/sex.dart';
import 'index/swiper_widget.dart';
import 'index/tabBar_widget.dart';
import 'index/adaptorwidget.dart';
import 'index/animation_widget.dart';
import 'index/appbar_widget.dart';
import 'index/button_widget.dart';
import 'index/cameraphotos1_widget.dart';
import 'index/clippath_widget.dart';
import 'index/column_row_widget.dart';
import 'index/conmiunication_widget.dart';
import 'index/container_widget.dart';
import 'index/custompaint_widget.dart';
import 'index/dialog_widget.dart';
import 'index/drawer_widget.dart';
import 'index/exempt_deposit.dart';
import 'index/flutter_logo_widget.dart';
import 'index/gestureDetector_widget.dart';
import 'index/gridview_widget.dart';
import 'index/icon_widget.dart';
import 'index/images_widget.dart';
import 'index/ios_style_widget.dart';
import 'index/listView_widget.dart';
import 'index/padding_margin_widget.dart';
import 'index/phone_number_page.dart';
import 'index/progress_widget.dart';
import 'index/stack_widget.dart';
import 'index/text_widget.dart';
import 'index/textfeild.widget.dart';
import 'index/video_widget.dart';
import 'index/wrap_page.dart';
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
//        appBar: AppBar(
//          title: Text('Flutter基本组件'),
//          centerTitle: true,
//          elevation: 0,
//        ),
        body: Center(
          child: GridView.count(
            crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            padding: EdgeInsets.all(10),
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WrapPage(),
                      ));
                },
                child: Container01(
                  text01: 'ScrollView',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScrollViewPage(),
                      ));
                },
                child: Container01(
                  text01: 'ScrollView',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AuxiliaryFunctions(),
                      ));
                },
                child: Container01(
                  text01: '辅助功能',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => JitterPage(),
                      ));
                },
                child: Container01(
                  text01: '抖动',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InteractionModel(),
                      ));
                },
                child: Container01(
                  text01: '交互模型',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ClipPathWidget(),
                      ));
                },
                child: Container01(
                  text01: 'ClipRect绘制',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CustompaintWidget(title: '绘制时钟与温度计'),
                      ));
                },
                child: Container01(
                  text01: '绘制时钟',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CardWidget(),
                      ));
                },
                child: Container01(
                  text01: 'Card卡片',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContainerWidget(),
                      ));
                },
                child: Container01(
                  text01: 'Container盒子',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => IconWidget(),
                      ));
                },
                child: Container01(
                  text01: 'Icon图标',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FlutterLogoWidget(),
                      ));
                },
                child: Container01(
                  text01: 'FlutterLogo',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TextWidget(),
                      ));
                },
                child: Container01(
                  text01: 'Text',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlaceholdWidget(),
                      ));
                },
                child: Container01(
                  text01: 'Placehold',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PaddingMargin(),
                      ));
                },
                child: Container01(
                  text01: '内边距与外边距',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ColumnRow(),
                      ));
                },
                child: Container01(
                  text01: '垂直布局与水平布局',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AnimationWidget(),
                      ));
                },
                child: Container01(
                  text01: '基本动画',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImagesWidget(),
                      ));
                },
                child: Container01(
                  text01: 'Image图片',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImagesWidget(),
                      ));
                },
                child: Container01(
                  text01: '辅助功能',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => IosStyleWidget(),
                      ));
                },
                child: Container01(
                  text01: 'ios风格组件',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AppbarWidget(),
                      ));
                },
                child: Container01(
                  text01: 'AppBar头部导航',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TabbarWidget(),
                      ));
                },
                child: Container01(
                  text01: 'TabBar',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StackWidget(),
                      ));
                },
                child: Container01(
                  text01: '层叠组件',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SwiperWidget(),
                      ));
                },
                child: Container01(
                  text01: 'Swiper轮播图',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProgressWidget(),
                      ));
                },
                child: Container01(
                  text01: 'Progress进度条',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CameraPhotos1Widget(),
                      ));
                },
                child: Container01(
                  text01: '拍照,相册上传',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ButtonWidget(),
                      ));
                },
                child: Container01(
                  text01: '各种Button',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AdaptorWidget(),
                      ));
                },
                child: Container01(
                  text01: '时间地点日期选择器',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ConmiunicationWidget(),
                      ));
                },
                child: Container01(
                  text01: '聊天页面',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TextfeildWidget(),
                      ));
                },
                child: Container01(
                  text01: '文本框',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListViewWidget(),
                      ));
                },
                child: Container01(
                  text01: 'ListView',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GridViewWidget(),
                      ));
                },
                child: Container01(
                  text01: 'GridView',
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DialogWidget(),
                      ));
                },
                child: Container01(
                  text01: '各种弹窗',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GestureDetectorWidget(),
                      ));
                },
                child: Container01(
                  text01: '点击事件',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ViodeWidget(),
                      ));
                },
                child: Container01(
                  text01: '视频播放',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GridViewWidget(),
                      ));
                },
                child: Container01(
                  text01: '抽离组件',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GridViewWidget(),
                      ));
                },
                child: Container01(
                  text01: '建立数据模型',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GridViewWidget(),
                      ));
                },
                child: Container01(
                  text01: '异步编程',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DrawerWidget(),
                      ));
                },
                child: Container01(
                  text01: '侧边栏',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GridViewWidget(),
                      ));
                },
                child: Container01(
                  text01: 'dio请求',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GridViewWidget(),
                      ));
                },
                child: Container01(
                  text01: 'post请求',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChangeNotifierProvider(
                          create: (_) => LoginViewModel(),
                          child: LoginWidget(),
                        ),
                      ));
                },
                child: Container01(
                  text01: 'mvvm框架',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GridViewWidget(),
                      ));
                },
                child: Container01(
                  text01: '屏幕适配',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GridViewWidget(),
                      ));
                },
                child: Container01(
                  text01: '全局主题',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Sex(),
                      ));
                },
                child: Container01(
                  text01: '组件复用',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ExemptDeposit(),
                      ));
                },
                child: Container01(
                  text01: '弹出菜单',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ExemptDeposit(),
                      ));
                },
                child: Container01(
                  text01: 'flare游戏',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Container01 extends StatefulWidget {
  final text01;
  final text02;

  const Container01({Key key, this.text01, this.text02}) : super(key: key);

  @override
  _Container01State createState() => _Container01State();
}

class _Container01State extends State<Container01> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.circular(20),
        ),
        alignment: Alignment.center,
        child: TextTheme(widget: widget));
  }
}

class TextTheme extends StatelessWidget {
  const TextTheme({
    Key key,
    @required this.widget,
  }) : super(key: key);

  final Container01 widget;

  @override
  Widget build(BuildContext context) {
    return Text(widget.text01,style: TextStyle(
      color:Colors.white,
      fontSize:16,
    ),);
  }
}



