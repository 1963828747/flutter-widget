import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class MukeWangNeng extends StatefulWidget {

  @override
  _MukeWangNengState createState() => _MukeWangNengState();
}

class _MukeWangNengState extends State<MukeWangNeng>
    with TickerProviderStateMixin {
  var controller1;
  var tabs1 = <Tab>[
    Tab(
      text: "手艺",
    ),
    Tab(
      text: "爱好",
    ),
    Tab(
      text: "休闲",
    ),
    Tab(
      text: "健美",
    ),
    Tab(
      text: "教学",
    ),
    Tab(
      text: "游戏",
    ),
  ];
  var controller;
  var tabs = <Tab>[
    Tab(
      text: "静态",
    ),
    Tab(
      text: "动态",
    ),
    Tab(
      text: "回传",
    ),
    Tab(
      text: "自定义",
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
  List<Map> _imgList = [
    {
      "url":
      "https://img02.mockplus.cn/idoc/xd/2020-06-17/7265d270-8115-4edd-bef7-df06ce543ad3.png",
    },
    {
      "url":
      "https://img02.mockplus.cn/idoc/xd/2020-06-17/be4edce5-6f02-43c0-aa36-eb01d4544fb1.png",
    },
    {
      "url":
      "https://img02.mockplus.cn/idoc/xd/2020-06-17/97ef67ea-3dcc-4ab5-9ed1-b53c196556f7.png",
    }
  ];
  List<Map> _imgList01 = [
    {
      "url":
      "https://img02.mockplus.cn/idoc/xd/2020-05-31/5f23468b-5aa6-454a-9a24-91b4ce57894e.png",
      'text':'管理',
    },
    {
      "url":
      "https://img02.mockplus.cn/idoc/xd/2020-06-17/8d7721c6-ec45-4ac0-9bc8-1b12709ea597.png",
      'text':'研发',
    },
    {
      "url":
      "https://img02.mockplus.cn/idoc/xd/2020-06-17/b6f7dea6-ac0a-4ec2-9858-d408db500cd6.png",
      'text':'营销',
    },
    {
      "url":
      "https://img02.mockplus.cn/idoc/xd/2020-06-17/ce7d9900-9c07-4fb1-b362-34bb2cdc9b00.png",
      'text':'生产',
    },
    {
      "url":
      "https://img02.mockplus.cn/idoc/xd/2020-06-17/fd4793be-c91d-48a6-813e-23c4399deaba.png",
      'text':'服务',
    },
    {
      "url":
      "https://img02.mockplus.cn/idoc/xd/2020-06-17/4680cbb4-1e48-4de1-80d9-909395f4c845.png",
      'text':'家政',
    },
    {
      "url":
      "https://img02.mockplus.cn/idoc/xd/2020-06-17/66dc15d7-471f-4d61-9bc7-b9422bada6d0.png",
      'text':'维修',
    },
    {
      "url":
      "https://img02.mockplus.cn/idoc/xd/2020-06-17/34a00672-7040-4ad8-a917-70f82b5df4ba.png",
      'text':'配送',
    },
    {
      "url":
      "https://img02.mockplus.cn/idoc/xd/2020-06-17/1c040bb9-94d3-4caa-9e61-429b15e8f2e9.png",
      'text':'咨询',
    },
    {
      "url":
      "https://img02.mockplus.cn/idoc/xd/2020-06-17/66811fc0-0436-495a-ad46-77c755c809b4.png",
      'text':'装饰',
    },
  ];
  List _imageList = [
    {
      'isClick01':false,
      'image01':
          'https://img02.mockplus.cn/idoc/xd/2020-05-31/4826a872-d310-4690-be9c-6ac0f0a1453b.png',
      'text01':'合家欢家政',
      'number':'23W',
    },
    {
      'isClick01':true,
      'image01':
          'https://img02.mockplus.cn/idoc/xd/2020-05-31/c0a8250b-a322-4e6a-8ecd-7d4b313e1e5b.png',
      'text01':'家和保洁',
      'number':'23',
    },
    {
      'isClick01':false,
      'image01':
          'https://img02.mockplus.cn/idoc/xd/2020-05-31/8714a3e2-62c2-4f5a-a6b4-0f86e7b5999d.png',
      'text01':'合家欢家政',
      'number':'27W',
    },
    {
      'isClick01':true,
      'image01':
          'https://img02.mockplus.cn/idoc/xd/2020-05-31/e4e06290-5c60-47a7-9a3c-71ec9a7bd12d.png',
      'text01':'家和保洁',
      'number':'23',
    },
    {
      'isClick01':false,
      'image01':
          'https://img02.mockplus.cn/idoc/xd/2020-05-31/4826a872-d310-4690-be9c-6ac0f0a1453b.png',
      'text01':'合家欢家政',
      'number':'23W',
    },
    {
      'isClick01':true,
      'image01':
          'https://img02.mockplus.cn/idoc/xd/2020-05-31/c0a8250b-a322-4e6a-8ecd-7d4b313e1e5b.png',
      'text01':'家和保洁',
      'number':'23',
    },
    {
      'isClick01':false,
      'image01':
          'https://img02.mockplus.cn/idoc/xd/2020-05-31/8714a3e2-62c2-4f5a-a6b4-0f86e7b5999d.png',
      'text01':'合家欢家政',
      'number':'23W',
    },
    {
      'isClick01':true,
      'image01':
          'https://img02.mockplus.cn/idoc/xd/2020-05-31/e4e06290-5c60-47a7-9a3c-71ec9a7bd12d.png',
      'text01':'家和保洁',
      'number':'23',
    },
  ];

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: tabs.length,
      vsync: this, //动画效果的异步处理，默认格式，背下来即可
    );
    controller1 = TabController(
      length: tabs1.length,
      vsync: this, //动画效果的异步处理，默认格式，背下来即可
    );
  }

  @override
  Widget build(BuildContext context) {
    buildSwiperPagination() {
      return SwiperPagination(
        //指示器显示的位置
        alignment: Alignment.bottomCenter, // 位置 Alignment.bottomCenter 底部中间
        // 距离调整
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
        // 指示器构建
        builder: DotSwiperPaginationBuilder(
            // 点之间的间隔
            space: 2,
            // 没选中时的大小
            size: 6,
            // 选中时的大小
            activeSize: 12,
            // 没选中时的颜色
            color: Colors.black54,
            //选中时的颜色
            activeColor: Colors.white),
      );
    }

    return  Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width/2,
              decoration: BoxDecoration(
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: new NetworkImage(
                    'https://img02.mockplus.cn/idoc/xd/2020-06-17/4bf523b2-ae85-4c74-86d1-94995ad17393.png',),
                ),
              ),
            ),
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                Container(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 16, right: 16),
                          child: Row(
                            children: <Widget>[
                              Image.network(
                                'https://img02.mockplus.cn/idoc/xd/2020-05-31/16d84f11-23a7-4704-a4f8-d763b3ea64fa.png',
                                width: 20,
                                height: 20,
                              ),
                              Expanded(flex: 1, child: Container()),
                              Opacity(
                                opacity: 0.4,
                                child: Container(
                                  height: 28,
                                  width: 263,
                                  child: TextField(
//              controller: provider.usernameController,
                                    decoration: InputDecoration(
//                            errorText: 'errorText',
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.all(Radius.circular(20))),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(flex: 1, child: Container()),
                              Image.network(
                                'https://img02.mockplus.cn/idoc/xd/2020-05-31/87d78c4e-6150-4a69-81b5-06998db64a9a.png',
                                width: 20,
                                height: 20,
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 10),
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          child: TabBar(
                            tabs: tabs,
                            controller: controller,
                            //配置控制器
                            isScrollable: true,
                            indicatorColor: Colors.white,
                            indicatorSize: TabBarIndicatorSize.tab,
                            indicatorWeight: 2,
                            indicatorPadding: EdgeInsets.only(
                              left: 10,
                              right: 10,
                            ),
                            labelPadding: EdgeInsets.only(
                              left: 10,
                              right: 10,
                            ),
                            labelColor: Colors.white,
                            labelStyle: TextStyle(
                              fontSize: 20.0,
                            ),
                            unselectedLabelColor: Colors.white,
                            unselectedLabelStyle: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height - 116,
                          child: TabBarView(
                              controller: controller, //配置控制器
                              children: <Widget>[
                                Container(
                                  height: MediaQuery.of(context).size.height - 400,
                                  child:
                                      ListView(
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(top: 10),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(40.0),
                                            ),
                                            height: 142,
                                            width: 358, //无穷数 / 无尽期 / 无穷 / 无限大
                                            child: AspectRatio(
                                              aspectRatio: 16 / 9, //设置子组件宽高比，防止变形
                                              child: Swiper(
                                                itemBuilder:
                                                    (BuildContext context,
                                                    int index) {
                                                  return Container(
                                                    margin: EdgeInsets.only(bottom: 20),
                                                    padding: EdgeInsets.only(left: 10,right: 10),
                                                    child: ClipRRect(
                                                        borderRadius: BorderRadius.circular(10),
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
//                                                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                                                  margin: const EdgeInsets.only(top: 10),
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
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(20),
                                                    topRight: Radius.circular(20)),
                                              ),
                                              child: Container(
                                                padding:
                                                EdgeInsets.symmetric(horizontal: 16),
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      height: 56,
                                                      width:
                                                      MediaQuery.of(context).size.width,
                                                      margin: EdgeInsets.only(
                                                        top: 24,
                                                      ),
                                                      padding: EdgeInsets.only(
                                                        top: 8,
                                                      ),
                                                      child: Row(
                                                        children: <Widget>[
                                                          Image.network(
                                                            'https://img02.mockplus.cn/idoc/xd/2020-05-31/690d624e-ef46-4703-9a63-e8e339371f7f.png',
                                                            fit: BoxFit.fill,
                                                            width: 40,
                                                            height: 40,
                                                          ),
                                                          SizedBox(
                                                            width: 8,
                                                          ),
                                                          Column(
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment.start,
                                                            children: <Widget>[
                                                              Text(
                                                                '找住家保姆',
                                                                style: TextStyle(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                  FontWeight.bold,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 6,
                                                              ),
                                                              Text(
                                                                '吉大街道第五花园小区',
                                                                style: TextStyle(
                                                                    fontSize: 10,
                                                                    color: Color.fromRGBO(
                                                                        89, 89, 89, 1)),
                                                              ),
                                                            ],
                                                          ),
                                                          Spacer(),
                                                          Column(
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment.end,
                                                            children: <Widget>[
                                                              Text(
                                                                '3分钟前',
                                                                style: TextStyle(
                                                                    fontSize: 10,
                                                                    color: Color.fromRGBO(
                                                                        89, 89, 89, 1)),
                                                              ),
                                                              SizedBox(
                                                                height: 7,
                                                              ),
                                                              Text(
                                                                '1.8km',
                                                                style: TextStyle(
                                                                    fontSize: 10,
                                                                    color: Color.fromRGBO(
                                                                        89, 89, 89, 1)),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                        height: 8, color: Colors.grey[300]),
                                                    Container(
                                                      height: 56,
                                                      width:
                                                      MediaQuery.of(context).size.width,
                                                      margin: EdgeInsets.only(bottom: 8),
                                                      padding: EdgeInsets.only(
                                                        top: 8,
                                                      ),
                                                      child: Row(
                                                        children: <Widget>[
                                                          Column(
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment.start,
                                                            children: <Widget>[
                                                              Text(
                                                                '外卖配送吉大平安大厦',
                                                                style: TextStyle(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                  FontWeight.bold,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 6,
                                                              ),
                                                              Text(
                                                                '吉大园林路与景乐路十字路口   ',
                                                                style: TextStyle(
                                                                    fontSize: 10,
                                                                    color: Color.fromRGBO(
                                                                        89, 89, 89, 1)),
                                                              ),
                                                            ],
                                                          ),
                                                          Spacer(),
                                                          Column(
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment.end,
                                                            children: <Widget>[
                                                              Text(
                                                                '5分钟前',
                                                                style: TextStyle(
                                                                    fontSize: 10,
                                                                    color: Color.fromRGBO(
                                                                        89, 89, 89, 1)),
                                                              ),
                                                              SizedBox(
                                                                height: 7,
                                                              ),
                                                              Text(
                                                                '1.8km',
                                                                style: TextStyle(
                                                                    fontSize: 10,
                                                                    color: Color.fromRGBO(
                                                                        89, 89, 89, 1)),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            width: 8,
                                                          ),
                                                          Image.network(
                                                            'https://img02.mockplus.cn/idoc/xd/2020-05-31/babe5c18-624e-41f2-9029-f1a0d27d2532.png',
                                                            fit: BoxFit.fill,
                                                            width: 40,
                                                            height: 40,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                      children: <Widget>[
                                                        Container(
                                                          height: 40,
                                                          width: 159,
                                                          margin:
                                                          EdgeInsets.only(bottom: 8),
                                                          decoration: new BoxDecoration(
                                                            gradient: const LinearGradient(
                                                                colors: [
                                                                  Color.fromRGBO(
                                                                      126, 191, 252, 1),
                                                                  Color.fromRGBO(
                                                                      24, 144, 255, 1)
                                                                ]),
                                                          ),
                                                          child: Container(
                                                            padding: EdgeInsets.only(
                                                                left: 24, top: 2),
                                                            child: Row(
                                                              children: <Widget>[
                                                                Image.network(
                                                                  'https://img02.mockplus.cn/idoc/xd/2020-05-31/f11b901f-95b8-48e1-b66c-2dec8f66e3e6.png',
                                                                  height: 24,
                                                                  width: 24,
                                                                  fit: BoxFit.cover,
                                                                ),
                                                                SizedBox(
                                                                  width: 16,
                                                                ),
                                                                Text(
                                                                  '法律服务',
                                                                  style: TextStyle(
                                                                      fontSize: 14,
                                                                      color: Colors.white),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 9,
                                                        ),
                                                        Container(
                                                          height: 40,
                                                          width: 159,
                                                          margin:
                                                          EdgeInsets.only(bottom: 8),
                                                          decoration: new BoxDecoration(
                                                            gradient: const LinearGradient(
                                                                colors: [
                                                                  Color.fromRGBO(
                                                                      126, 191, 252, 1),
                                                                  Color.fromRGBO(
                                                                      24, 144, 255, 1)
                                                                ]),
                                                          ),
                                                          child: Container(
                                                            padding: EdgeInsets.only(
                                                                left: 24, top: 2),
                                                            child: Row(
                                                              children: <Widget>[
                                                                Image.network(
                                                                  'https://img02.mockplus.cn/idoc/xd/2020-05-31/9c7199fc-f203-425d-a6c8-e3576886f62e.png',
                                                                  height: 24,
                                                                  width: 24,
                                                                  fit: BoxFit.cover,
                                                                ),
                                                                SizedBox(
                                                                  width: 16,
                                                                ),
                                                                Text(
                                                                  '叫车出行',
                                                                  style: TextStyle(
                                                                      fontSize: 14,
                                                                      color: Colors.white),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Container(
                                                      height: 156,
                                                      width:
                                                      MediaQuery.of(context).size.width,
                                                      margin: EdgeInsets.only(bottom: 8),
                                                      child: ListView.builder(
                                                          scrollDirection:Axis.horizontal,
                                                          shrinkWrap: true,
                                                          itemCount: _imgList.length,
                                                          itemBuilder: (context,index){
                                                            return Container(
                                                              margin:EdgeInsets.symmetric(horizontal: 5),
                                                              child: Image.network(
                                                                _imgList[index]["url"],
                                                                width: 100,
                                                                height: 156,
                                                                fit: BoxFit.cover,
                                                              ),
                                                            );
                                                          }),
                                                    ),
//                                                    Container(
//                                                      height: 156,
//                                                      width:
//                                                      MediaQuery.of(context).size.width,
//                                                      margin: EdgeInsets.only(bottom: 8),
//                                                      child: ListView(
//                                                        scrollDirection:Axis.horizontal,
//                                                        shrinkWrap: true,
//                                                        children: <Widget>[
//                                                          Container(
//                                                            margin:EdgeInsets.symmetric(horizontal: 5),
//                                                            child: Image.network(
//                                                              _imgList[index]["url"],
//                                                              width: 100,
//                                                              height: 156,
//                                                              fit: BoxFit.cover,
//                                                            ),
//                                                          ),
//                                                          Container(
//                                                            margin:EdgeInsets.symmetric(horizontal: 5),
//                                                            child: Image.network(
//                                                              'https://img02.mockplus.cn/idoc/xd/2020-05-31/a074cd26-e583-4b8c-a8d8-cc970b6a7914.png',
//                                                              width: 100,
//                                                              height: 156,
//                                                              fit: BoxFit.cover,
//                                                            ),
//                                                          ),
//                                                          Container(
//                                                            margin:EdgeInsets.symmetric(horizontal: 5),
//                                                            child: Image.network(
//                                                              'https://img02.mockplus.cn/idoc/xd/2020-05-31/6b9d77e6-65fe-4121-bc41-ce390cb51ba1.png',
//                                                              width: 100,
//                                                              height: 156,
//                                                              fit: BoxFit.cover,
//                                                            ),
//                                                          ),
//                                                        ],
//                                                      ),
//                                                    ),
                                                    Container(
                                                      height: 126,
                                                      width: 375,
                                                      child: GridView.builder(
                                                          itemCount: _imgList01.length,
                                                          padding: EdgeInsets.all(10),
                                                          physics:
                                                          const NeverScrollableScrollPhysics(),
                                                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                            crossAxisCount: 5,
                                                            crossAxisSpacing: 10,
                                                            mainAxisSpacing: 10,
                                                          ),
                                                          itemBuilder: (BuildContext context, int index) {
                                                            return Container(
                                                              child: Column(
                                                                children: <Widget>[
                                                                  Image.network(_imgList01[index]['url'], width: 25,
                                                                    height: 25,
                                                                    fit: BoxFit.cover,
                                                                  ),
                                                                  Text(_imgList01[index]['text'],
                                                                      style: TextStyle(
                                                                          fontSize: 12,
                                                                          color: Colors
                                                                              .black)),
                                                                ],
                                                              ),
                                                            );
                                                          }),
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                      children: <Widget>[
                                                        Container(
                                                          height: 40,
                                                          width: 76,
                                                          margin:
                                                          EdgeInsets.only(bottom: 8),
                                                          decoration: new BoxDecoration(
                                                            gradient: const LinearGradient(
                                                                colors: [
                                                                  Color.fromRGBO(
                                                                      126, 191, 252, 1),
                                                                  Color.fromRGBO(
                                                                      24, 144, 255, 1)
                                                                ]),
                                                          ),
                                                          child: Container(
                                                              alignment: Alignment.center,
                                                              padding:
                                                              EdgeInsets.only(top: 2),
                                                              child: Text(
                                                                '教育培训',
                                                                style: TextStyle(
                                                                    fontSize: 10,
                                                                    color: Colors.white),
                                                              )),
                                                        ),
                                                        Spacer(),
                                                        Container(
                                                          height: 40,
                                                          width: 76,
                                                          margin:
                                                          EdgeInsets.only(bottom: 8),
                                                          decoration: new BoxDecoration(
                                                            gradient: const LinearGradient(
                                                                colors: [
                                                                  Color.fromRGBO(
                                                                      126, 191, 252, 1),
                                                                  Color.fromRGBO(
                                                                      24, 144, 255, 1)
                                                                ]),
                                                          ),
                                                          child: Container(
                                                              alignment: Alignment.center,
                                                              padding:
                                                              EdgeInsets.only(top: 2),
                                                              child: Text(
                                                                '礼仪庆典',
                                                                style: TextStyle(
                                                                    fontSize: 10,
                                                                    color: Colors.white),
                                                              )),
                                                        ),
                                                        Spacer(),
                                                        Container(
                                                          height: 40,
                                                          width: 76,
                                                          margin:
                                                          EdgeInsets.only(bottom: 8),
                                                          decoration: new BoxDecoration(
                                                            gradient: const LinearGradient(
                                                                colors: [
                                                                  Color.fromRGBO(
                                                                      126, 191, 252, 1),
                                                                  Color.fromRGBO(
                                                                      24, 144, 255, 1)
                                                                ]),
                                                          ),
                                                          child: Container(
                                                              alignment: Alignment.center,
                                                              padding:
                                                              EdgeInsets.only(top: 2),
                                                              child: Text(
                                                                '宠物园艺',
                                                                style: TextStyle(
                                                                    fontSize: 10,
                                                                    color: Colors.white),
                                                              )),
                                                        ),
                                                        Spacer(),
                                                        Container(
                                                          height: 40,
                                                          width: 76,
                                                          margin:
                                                          EdgeInsets.only(bottom: 8),
                                                          decoration: new BoxDecoration(
                                                            gradient: const LinearGradient(
                                                                colors: [
                                                                  Color.fromRGBO(
                                                                      126, 191, 252, 1),
                                                                  Color.fromRGBO(
                                                                      24, 144, 255, 1)
                                                                ]),
                                                          ),
                                                          child: Container(
                                                              alignment: Alignment.center,
                                                              padding:
                                                              EdgeInsets.only(top: 2),
                                                              child: Text(
                                                                '健身美护',
                                                                style: TextStyle(
                                                                    fontSize: 10,
                                                                    color: Colors.white),
                                                              )),
                                                        ),
                                                      ],
                                                    ),
                                                    Container(
                                                      height: 50,
                                                      child: TabBar(
                                                        tabs: tabs1,
                                                        controller: controller1,
                                                        //配置控制器
                                                        isScrollable: true,
                                                        indicatorColor: Colors.blue,
                                                        indicatorSize:
                                                        TabBarIndicatorSize.tab,
                                                        indicatorWeight: 2,
                                                        indicatorPadding: EdgeInsets.only(
                                                          left: 10,
                                                          right: 10,
                                                        ),
                                                        labelPadding: EdgeInsets.only(
                                                            left: 10, right: 10),
                                                        labelColor: Colors.blue,
                                                        labelStyle: TextStyle(
                                                          fontSize: 20.0,
                                                        ),
                                                        unselectedLabelColor:
                                                        Color.fromRGBO(89, 89, 89, 1),
                                                        unselectedLabelStyle: TextStyle(
                                                          fontSize: 16.0,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                        height: MediaQuery.of(context).size.height,
                                                        child: TabBarView(
                                                          controller: controller1, //配置控制器
                                                          children: <Widget>[
                                                            Container(
                                                              child:GridView.builder(
                                                                  itemCount:
                                                                  _imageList.length,
                                                                  padding:
                                                                  EdgeInsets.all(
                                                                      10),
                                                                  physics:
                                                                  const NeverScrollableScrollPhysics(),
                                                                  gridDelegate:
                                                                  SliverGridDelegateWithFixedCrossAxisCount(
                                                                    crossAxisCount: 2,
                                                                    crossAxisSpacing:
                                                                    10,
                                                                    mainAxisSpacing: 10,
                                                                  ),
                                                                  itemBuilder:
                                                                      (BuildContext
                                                                  context,
                                                                      int index) {
                                                                    return Container(
                                                                      child: _imageList[index]['isClick01']==false
                                                                          ?Container(
                                                                        child:
                                                                        Stack(
                                                                          children: <
                                                                              Widget>[
                                                                            Container(
                                                                              width: MediaQuery.of(context).size.width /2,
                                                                              height: MediaQuery.of(context).size.width,
                                                                              child: Image.network(_imageList[index]['image01'],fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              height: 15,
                                                                              width: 40,
                                                                              decoration: BoxDecoration(
                                                                                  color: Colors
                                                                                      .pink,
                                                                                  borderRadius:
                                                                                  BorderRadius.only(
                                                                                      bottomRight: Radius.circular(10))),
                                                                              child: Row(
                                                                                children: <
                                                                                    Widget>[
                                                                                  SizedBox(
                                                                                    width:
                                                                                    2,
                                                                                  ),
                                                                                  Icon(Icons.play_circle_filled,
                                                                                      size: 13,
                                                                                      color: Colors.white),
                                                                                  SizedBox(
                                                                                    width: 2,
                                                                                  ),
                                                                                  Text('视频',
                                                                                    style: TextStyle(fontSize: 8,
                                                                                        color: Colors.white),
                                                                                  ),
                                                                                  SizedBox(
                                                                                    width: 2,
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),

                                                                            Container(
                                                                              width: MediaQuery.of(context).size.width/2,
                                                                              height: MediaQuery.of(context).size.width,
                                                                              child: Center(
                                                                                child: Container(
                                                                                    child: Icon(
                                                                                      Icons.play_circle_outline,
                                                                                      size: 20,)
                                                                                ),),
                                                                            ),
                                                                            Container(
                                                                                padding:EdgeInsets.symmetric(horizontal: 5,vertical: 8),
                                                                                width: MediaQuery.of(context).size.width/2,
                                                                                height: MediaQuery.of(context).size.width,
                                                                                alignment: Alignment.bottomCenter,
                                                                                child: Row(
                                                                                  children: <Widget>[
                                                                                    Text(_imageList[index]['text01'],
                                                                                      style: TextStyle(fontSize: 8,
                                                                                          color: Colors.white),),
                                                                                    Spacer(),
                                                                                    Icon(Icons.remove_red_eye,size: 10,color: Colors.white),
                                                                                    SizedBox(width: 3,),
                                                                                    Text(_imageList[index]['number'],
                                                                                      style: TextStyle(fontSize: 8,
                                                                                          color: Colors.white),),
                                                                                  ],
                                                                                )
                                                                            ),
                                                                          ],
                                                                        ),)
                                                                          :Container(
                                                                        child:
                                                                        Stack(
                                                                          children: <
                                                                              Widget>[
                                                                            Container(
                                                                              width: MediaQuery.of(context).size.width /2,
                                                                              height: MediaQuery.of(context).size.width,
                                                                              child: Image.network(_imageList[index]['image01'],fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              height: 15,
                                                                              width: 40,
                                                                              decoration: BoxDecoration(
                                                                                  color: Colors
                                                                                      .blue,
                                                                                  borderRadius:
                                                                                  BorderRadius.only(
                                                                                      bottomRight: Radius.circular(10))),
                                                                              child: Row(
                                                                                children: <
                                                                                    Widget>[
                                                                                  SizedBox(
                                                                                    width:
                                                                                    2,
                                                                                  ),
                                                                                  Icon(Icons.photo_size_select_actual,
                                                                                      size: 13,
                                                                                      color: Colors.white),
                                                                                  SizedBox(
                                                                                    width: 2,
                                                                                  ),
                                                                                  Text('图片',
                                                                                    style: TextStyle(fontSize: 8,
                                                                                        color: Colors.white),
                                                                                  ),
                                                                                  SizedBox(
                                                                                    width: 2,
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                                padding:EdgeInsets.symmetric(horizontal: 5,vertical: 8),
                                                                                width: MediaQuery.of(context).size.width/2,
                                                                                height: MediaQuery.of(context).size.width,
                                                                                alignment: Alignment.bottomCenter,
                                                                                child: Row(
                                                                                  children: <Widget>[
                                                                                    Text(_imageList[index]['text01'],
                                                                                      style: TextStyle(fontSize: 8,
                                                                                          color: Colors.white),),
                                                                                    Spacer(),
                                                                                    Icon(Icons.remove_red_eye,size: 10,color: Colors.white),
                                                                                    SizedBox(width: 3,),
                                                                                    Text(_imageList[index]['number'],
                                                                                      style: TextStyle(fontSize: 8,
                                                                                          color: Colors.white),),
                                                                                  ],
                                                                                )
                                                                            ),
                                                                          ],
                                                                        ),),
                                                                    );
                                                                  }),
                                                            ),
                                                            Container(
                                                              child:Center(child: Text('爱好')),
                                                            ),
                                                            Container(
                                                              child:Center(child: Text('休闲')),
                                                            ),
                                                            Container(
                                                              child:Center(child: Text('健美')),
                                                            ),
                                                            Container(
                                                              child:Center(child: Text('教学')),
                                                            ),Container(
                                                              child:Center(child: Text('游戏')),
                                                            ),
                                                          ],
                                                        )),
                                                  ],
                                                ),
                                              )),
                                        ],
                                      ),
                                ),
                                Container(
                                  child: Center(child: Text('求职')),
                                ),
                                Container(
                                  child: Center(child: Text('帮手')),
                                ),
                                Container(
                                  child: Center(child: Text('零活')),
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
  }

  //当整个页面dispose时，记得把控制器也dispose掉，释放内存
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}


