import 'package:flutter/material.dart';
import 'package:widget/page/Framework/framework_widget.dart';
import 'package:widget/page/Framework/muke_wangneng.dart';
import 'package:widget/page/grammar/grammar.dart';
import 'package:widget/page/home/index/drawer_widget.dart';
import 'package:widget/page/home/index02/computer_page.dart';
import 'package:widget/page/home/myhome_page.dart';
import 'package:widget/page/persion/persion.dart';
import 'package:widget/page/statewidget/statewidget.dart';

import '../navigation_icon_view.dart'; // 如果是在同一个包的路径下，可以直接使用对应的文件名

// 创建一个 带有状态的 Widget Index
class Tabs extends StatefulWidget {

  // 固定的写法
  @override
  State<StatefulWidget> createState() => new _TabsState();
}

// 要让主页面 Index 支持动效，要在它的定义中附加mixin类型的对象TickerProviderStateMixin
class _TabsState extends State<Tabs> with TickerProviderStateMixin{

  int _currentIndex = 0; // 当前界面的索引值
  List<NavigationIconView> _navigationViews; // 底部图标按钮区域
  List<StatefulWidget> _pageList; // 用来存放我们的图标对应的页面
  StatefulWidget _currentPage; // 当前的显示页面

  // 定义一个空的设置状态值的方法
  void _rebuild() {
    setState((){});
  }

  @override
  void initState() {
    super.initState();

    // 初始化导航图标
    _navigationViews = <NavigationIconView>[
      new NavigationIconView(icon: new Icon(Icons.assessment), title: new Text("组件"), vsync: this), // vsync 默认属性和参数
      new NavigationIconView(icon: new Icon(Icons.burst_mode), title: new Text("路由管理"), vsync: this),
//      new NavigationIconView(icon: new Icon(Icons.apps), title: new Text("状态管理"), vsync: this),
      new NavigationIconView(icon: new Icon(Icons.cloud_queue), title: new Text("Dart语言"), vsync: this),
      new NavigationIconView(icon: new Icon(Icons.perm_identity), title: new Text("个人"), vsync: this),
    ];

    // 给每一个按钮区域加上监听
    for (NavigationIconView view in _navigationViews) {
      view.controller.addListener(_rebuild);
    }

    // 将我们 bottomBar 上面的按钮图标对应的页面存放起来，方便我们在点击的时候
    _pageList = <StatefulWidget>[
      new HomePage(),
      new FrameworkWidget(),
//      new StateWidget(),
      new Grammar(),
      new Persion(),
    ];
    _currentPage = _pageList[_currentIndex];
  }

  @override
  Widget build(BuildContext context) {

    // 声明定义一个 底部导航的工具栏
    final BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
      items: _navigationViews
          .map((NavigationIconView navigationIconView) => navigationIconView.item)
          .toList(), // 添加 icon 按钮
      currentIndex: _currentIndex, // 当前点击的索引值
      type: BottomNavigationBarType.fixed, // 设置底部导航工具栏的类型：fixed 固定
      onTap: (int index){ // 添加点击事件
        setState((){ // 点击之后，需要触发的逻辑事件
          _navigationViews[_currentIndex].controller.reverse();
          _currentIndex = index;
          _navigationViews[_currentIndex].controller.forward();
          _currentPage = _pageList[_currentIndex];
        });
      },
    );

    return new MaterialApp(
      home: new Scaffold(
//        appBar: AppBar(
//
////          leading: GestureDetector(
////            onTap: (){
////
////            },
////            child: Icon(Icons.keyboard_arrow_left),
////          ),
//
//        ),
        body: new Center(
            child: _currentPage // 动态的展示我们当前的页面
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ComputerPage()));
          },
            backgroundColor:Colors.white,
            elevation: 0,
        child: Icon(Icons.gradient,size: 35,color:Colors.blue,),
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: bottomNavigationBar,
        drawer: NewWidget03(),// 底部工具栏
//          drawer: Drawer(),
      ),
      theme: new ThemeData(
        primarySwatch: Colors.blue, // 设置主题颜色
      ),

    );
  }

}