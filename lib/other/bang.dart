import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
///首页
///huangyunyin
///tabBar叠加、轮播图

class Bang extends StatefulWidget {

  @override
  _BangState createState() => _BangState();
}

class _BangState extends State<Bang>  with TickerProviderStateMixin {

  var controller1;
  var tabs1 = [
    Tab(text: "首发",),
    Tab(text: "发现",),
    Tab(text: "快讯",),
  ];

  var controller2;
  var tabs2 = <Tab>[
    Tab(
      text: "推荐",
    ),
    Tab(
      text: "初创",
    ),
    Tab(
      text: "特写",
    ),
    Tab(
      text: "科技",
    ),
    Tab(
      text: "出行",
    ),
    Tab(
      text: "消费",
    ),
    Tab(
      text: "海外",
    ),
  ];
  List<Map> imgList = [
    {
      "url":
      "https://img02.mockplus.cn/idoc/xd/2020-05-31/738c2825-9531-4dd7-9900-b21f3db1a8e8.png",
    },
    {
      "url":
      "https://img02.mockplus.cn/idoc/xd/2020-05-31/690d624e-ef46-4703-9a63-e8e339371f7f.png",
    },
    {
      "url":
      "https://img02.mockplus.cn/idoc/xd/2020-05-31/4826a872-d310-4690-be9c-6ac0f0a1453b.png",
    }
  ];
  @override
  void initState() {
    super.initState();
    controller1 = TabController(
      length: tabs1.length,
      vsync: this, //动画效果的异步处理，默认格式，背下来即可
    );
    controller2 = TabController(
      length: tabs2.length,
      vsync: this, //动画效果的异步处理，默认格式，背下来即可
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20,left: 0,right: 16),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  height: 50,
                  child: TabBar(
                    tabs: tabs1,
                    controller: controller1,
                    //配置控制器
                    isScrollable: true,
                    indicatorColor: Colors.white,
                    indicatorWeight: 1,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorPadding: EdgeInsets.only(bottom: 10.0),
                    labelPadding: EdgeInsets.only(left: 20),
                    labelColor: Color(0xff333333),
                    labelStyle: TextStyle(
                      fontSize: 20.0,
                    ),
                    unselectedLabelColor: Color(0xff333333),
                    unselectedLabelStyle: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Spacer(),
                Icon(Icons.search),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height-70,
            child: TabBarView(
                controller: controller1, //配置控制器
                children: <Widget>[
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          alignment: Alignment.center,
                          color: Colors.white70,
                          child: Text('融资速递：WarDucks完成A轮融资',style: TextStyle(fontSize: 16),),
                        ),
                        Container(
                          height: 553,
                          child: ListView(
                            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
//                      physics: BouncingScrollPhysics(),//去除水波

                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(40.0),
                                ),
                                height: 170,
                                width: 358, //无穷数 / 无尽期 / 无穷 / 无限大
                                child: AspectRatio(
                                  aspectRatio: 16 / 9, //设置子组件宽高比，防止变形
                                  child: Swiper(
                                    itemBuilder:
                                        (BuildContext context,
                                        int index) {
                                      return Container(
                                        child: ClipRRect(
                                            child: new Image.network(imgList[index]["url"],fit: BoxFit.fill,)
                                        ),
//                                                      child: new Image.network(imgList[index]["url"],fit: BoxFit.fill,)
                                      );
                                    },
                                    itemCount: imgList.length,
                                    pagination: new SwiperPagination(
                                      //指示器显示的位置
                                      alignment:
                                      Alignment.bottomCenter,
                                      // 位置 Alignment.bottomCenter 底部中间
                                      // 距离调整
                                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                                      // 指示器构建
                                      builder:
                                      DotSwiperPaginationBuilder(
                                        // 点之间的间隔
                                          space: 4,
                                          // 没选中时的大小
                                          size: 6,
                                          // 选中时的大小
                                          activeSize: 7,
                                          // 没选中时的颜色
                                          color: Colors.white70,
                                          //选中时的颜色
                                          activeColor:
                                          Colors.white),
                                    ),
                                    //指示器
                                    loop: true,
                                    //无限轮播开关
                                    autoplay:
                                    true, //自动轮播//scrollDirection: Axis.vertical,//滚动方向横向//
//                                              control: new SwiperControl(),//双箭头duration: ,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 50,
                                child: TabBar(
                                  tabs: tabs2,
                                  controller: controller2,
                                  //配置控制器
                                  isScrollable: true,
                                  indicatorColor: Colors.deepOrangeAccent,
                                  indicatorSize:
                                  TabBarIndicatorSize.tab,
                                  indicatorWeight: 2,
                                  indicatorPadding: EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                  ),
                                  labelPadding: EdgeInsets.only(
                                      left: 10, right: 10),
                                  labelColor: Colors.black,
                                  labelStyle: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                  unselectedLabelColor:
                                  Colors.black,
                                  unselectedLabelStyle: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                              Container(height: 1700,
                                child: TabBarView(
                                  controller: controller2, //配置控制器
                                  children: <Widget>[
                                    Container(
                                      child: Column(
                                        children: [
                                          NewWidget01(),
                                          NewWidget01(),
                                          NewWidget01(),
                                          NewWidget01(),
                                          NewWidget01(),
                                          NewWidget01(),
                                          NewWidget01(),
                                          NewWidget01(),
                                          NewWidget01(),
                                          NewWidget01(),
                                          NewWidget01(),
                                          NewWidget01(),
                                        ],
                                      )
                                    ),
                                    Container(
                                      child:Center(child: Text('初创')),
                                    ),
                                    Container(
                                      child:Center(child: Text('特写')),
                                    ),
                                    Container(
                                      child:Center(child: Text('科技')),
                                    ),
                                    Container(
                                      child:Center(child: Text('出行')),
                                    ),Container(
                                      child:Center(child: Text('消费')),
                                    ),
                                    Container(
                                      child:Center(child: Text('海外')),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Text('01'),
                  ),
                  Container(
                    child: Text('01'),
                  ),
                ]
            ),
          ),
        ],
      ),
    );
  }
  @override
  void dispose() {
    controller1.dispose();
    super.dispose();
  }
}

class NewWidget01 extends StatelessWidget {
  const NewWidget01({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(height: 100,width: 250,
            child: Column(
              children: [
                Text('腾讯没有想象的那么糟，触底反弹值得期待'),
                Spacer(),
                Row(
                  children: [
                    Text('58分钟前'),
                    Spacer(),
                    Icon(Icons.remove_red_eye,color: Colors.grey,),
                    SizedBox(width: 10,),
                    Text('869'),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            child: UnconstrainedBox(
              child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
//                  使用ShapeDecoration可以做出各种形状
//                  斜切角: BeveledRectangleBorder
//                  圆角: RoundedRectangleBorder
//                  超椭圆: SuperellipseShape
//                  体育场: StadiumBorder
//                  圆形: CircleBorder
//                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage('http://attach.52pojie.cn/forum/201604/01/184715erqfhcfr99wcqrwh.jpg'),
                          fit: BoxFit.cover
                      )
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
//当整个页面dispose时，记得把控制器也dispose掉，释放内存


}

