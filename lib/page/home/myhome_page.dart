import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget/other/bang.dart';
import 'package:widget/other/classsort.dart';
import 'package:widget/other/cost_description.dart';
import 'package:widget/other/inform.dart';
import 'package:widget/other/result_determination.dart';
import 'package:widget/other/xinjixueyuan.dart';
import 'package:widget/page/home/index02/animatedcrossfade_page.dart';
import 'package:widget/page/home/index02/animatedpadding_page.dart';
import 'package:widget/page/home/index02/animatedpositioned_page.dart';
import 'package:widget/page/home/index02/animationopacity_page.dart';
import 'package:widget/page/home/index02/aspedtratio_page.dart';
import 'package:widget/page/home/index02/audio_page.dart';
import 'package:widget/page/home/index02/charts_page.dart';
import 'package:widget/page/home/index02/data_table_page.dart';
import 'package:widget/page/home/index02/get_page.dart';
import 'package:widget/page/home/index02/fadeinimage_page.dart';
import 'package:widget/page/home/index02/fadetransition_page.dart';
import 'package:widget/page/home/index02/frationallyfizedbox_page.dart';
import 'package:widget/page/home/index02/hero_page.dart';
import 'package:widget/page/home/index02/indexedstack_page.dart';
import 'package:widget/page/home/index02/limitedbox_page.dart';
import 'package:widget/page/home/index02/list_tile_page.dart';
import 'package:widget/page/home/index02/reoderablelistview_page.dart';
import 'package:widget/page/home/index02/richtext_page.dart';
import 'package:widget/page/home/index02/rount1_page.dart';
import 'package:widget/page/home/index02/selectable_text.dart';
import 'package:widget/page/home/index02/semantics_page.dart';
import 'package:widget/page/home/index02/slider_page.dart';
import 'package:widget/page/home/index02/sliver_page.dart';
import 'package:widget/page/home/index02/state2_page.dart';
import 'package:widget/page/home/index02/state_page.dart';
import 'package:widget/page/home/index02/togglebuttons_page.dart';
import 'package:widget/page/home/index02/tooltip_page.dart';
import 'package:widget/view/login_widget.dart';
import 'package:widget/view_models/login_view_model.dart';
import '../../main.dart';
import 'index/Animation.dart';
import 'index/Interaction_model.dart';
import 'index/Jitter_page.dart';
import 'index/auxiliary_functions_page.dart';
import 'index/card_widget.dart';
import 'index/novel_reading_page.dart';
import 'index/placehold_widget.dart';
import 'index/scrollview_page.dart';
import 'index/sex.dart';
import 'index/swiper_widget.dart';
import 'index/tabBar_widget.dart';
import '../../other/academic_degree_page.dart';
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
import '../../other/identity_authentication_page.dart';
import 'index/images_widget.dart';
import 'index/ios_style_widget.dart';
import 'index/listView_widget.dart';
import '../Framework/muke_wangneng.dart';
import 'index/padding_margin_widget.dart';
import 'index/phone_number_page.dart';
import 'index/progress_widget.dart';
import 'index/stack_widget.dart';
import 'index/text_widget.dart';
import 'index/textfeild.widget.dart';
import 'index/video_widget.dart';
import 'index02/draggablescrollablesheet_page.dart';
import 'index02/slivergrid_list_page.dart';
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();

}
// {"nam":(), "name":""},
List<Map> nameList = [{"nam":MukeWangNeng(), "name":"MukeWangNeng"},
  {"nam":RichTextPage(), "name":"RichText"},{"nam":TooltipPage(), "name":"Tooltip"},
  {"nam":IndexedStackPage(), "name":"IndexedStackPage"},{"nam":HeroPage(), "name":"Hero"},
  {"nam":AnimatedPositionedPage(), "name":"AnimatedPositionedPage"},{"nam":AnimatedOpacityPage(), "name":"AnimatedOpacity"},
  {"nam":AnimatedPaddingPage(), "name":"AnimatedPaddingPage"},{"nam":SemanticsPage(), "name":"SemanticsPage"},
  {"nam":SelectableTextPage(), "name":"SelectableText"},{"nam":AnimatedCrossFadePage(), "name":"AnimatedCrossFadePage"},
  {"nam":GetPage(), "name":"get post请求"},{"nam":ReoderableListviewPage(), "name":"ReoderableListviewPage"},
  {"nam":ChartsPage(), "name":"Charts折现图"},{"nam":Rount1Page(), "name":"Rount1Page"},
  {"nam":SliverGridListPage(), "name":"SliverGridListPage"},{"nam":FadeInImagePage(), "name":"FadeInImagePage"},
  {"nam":DraggablePage(), "name":"长按移动"},{"nam":SliverPage(), "name":"SliverPage"},
  {"nam":SliderPage(), "name":"参数设置"},{"nam":AspedtratioPage(), "name":"Aspedtratio"},
  {"nam":FrationallySizedBox(), "name":"Widget百分比"},{"nam":LimitedBoxPage(), "name":"LimitedBoxPage"},
  {"nam":FadeTransitionPage(), "name":"转场动画"},{"nam":ToggleButtonPage(), "name":"多项选择按钮"},
  {"nam":StatePage(), "name":"状态管理"},{"nam":State2Page(), "name":"状态管理2"},
  {"nam":ListTilePage(), "name":"ListTile"},{"nam":DataTablePage(), "name":"DataTablePage"},
  {"nam":AudioPlaybackPage(), "name":"音频播放"},{"nam":DraggableScrollableSheet_Page(), "name":"组件滑动"},
  {"nam":Bang(), "name":"首页"}, {"nam":ClassSort(), "name":"侧边导航栏"},
  {"nam":Inform(), "name":"'信息详情"}, {"nam":Xinjixueyuan(), "name":"搜索页面"},
  {"nam":NovelReading(), "name":"'NovelReading',"}, {"nam":Bang(), "name":"ScrollViewPage"},
  {"nam":Bang(), "name":"'ScrollView',"}, {"nam":AuxiliaryFunctions(), "name":"辅助功能"},
  {"nam":JitterPage(), "name":"抖动"},
  {"nam":ClipPathWidget(), "name":"ClipRect绘制"}, {"nam":CustompaintWidget(title: '绘制时钟与温度计'), "name":"绘制时钟"},
  {"nam":CardWidget(), "name":"Card卡片"}, {"nam":ContainerWidget(), "name":"Container盒子"},
  {"nam":IconWidget(), "name":"Icon图标"}, {"nam":FlutterLogoWidget(), "name":"FlutterLogo"},
  {"nam":TextWidget(), "name":"Text"}, {"nam":PlaceholdWidget(), "name":"Placehold"},
  {"nam":PaddingMargin(), "name":"内边距与外边距"}, {"nam":ColumnRow(), "name":"垂直布局与水平布局"},
  {"nam":AnimationWidget(), "name":"基本动画"}, {"nam":ImagesWidget(), "name":"Image图片"},
  {"nam":ImagesWidget(), "name":"辅助功能"}, {"nam":IosStyleWidget(), "name":"ios风格组件"},
  {"nam":AppbarWidget(), "name":"AppBar头部导航"}, {"nam":TabbarWidget(), "name":"TabBar"},
  {"nam":StackWidget(), "name":"层叠组件"}, {"nam":SwiperWidget(), "name":"Swiper轮播图"},
  {"nam":ProgressWidget(), "name":"Progress进度条"}, {"nam":CameraPhotos1Widget(), "name":"拍照,相册上传"},
  {"nam":ButtonWidget(), "name":"各种Button"}, {"nam":AdaptorWidget(), "name":"时间地点日期选择器"},
  {"nam":ConmiunicationWidget(), "name":"'聊天页面"}, {"nam":TextfeildWidget(), "name":"文本框"},
  {"nam":ListViewWidget(), "name":"'ListView',"}, {"nam":GridViewWidget(), "name":"'GridView',"},
  {"nam":DialogWidget(), "name":"各种弹窗"}, {"nam":GestureDetectorWidget(), "name":"点击事件"},
  {"nam":ViodeWidget(), "name":"视频播放"}, {"nam":GetPage(), "name":"异步编程"},
  {"nam":GridViewWidget(), "name":"侧边栏"},{ "nam":LoginViewModel(), "name":"mvvm框架"},
  {"nam":GridViewWidget(), "name":"屏幕适配"}, {"nam":GridViewWidget(), "name":"全局主题"},
  {"nam":Sex(), "name":"三目运算"}, {"nam":ExemptDeposit(), "name":"弹出菜单"},
];
class _HomePageState extends State<HomePage> {
  bool isClick = false;
  int i;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text('Widget'),
          actions: [
            InkWell(
                onTap: (){
                  setState(() {
                    if (isClick == true){
                      isClick = false;
                    }else{
                      isClick = true;
                    }
                  });
                },
                child: isClick == false
                    ?Icon(Icons.apps,color: Colors.white,)
                    :Icon(Icons.calendar_view_day ,color: Colors.white,),
            ),
          ],
        ),
        body: Center(
          child:
          isClick == false
              ?GridView.builder(
              itemCount: nameList.length,
              padding: EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => nameList[index]["nam"],
                        ));
                  },
                  child:  Container01(
                    text01: nameList[index]["name"],
                  ),
                );
              })
              : ListView.builder(
              itemCount: nameList.length,
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => nameList[index]["nam"],
                        ));
                  },
                  child:  Container01(
                    text01: nameList[index]["name"],
                  ),
                );
              }),

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
      height: 190,
        margin: EdgeInsets.only(bottom: 10),
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



