import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

///搜索页
///huangyunyin
///数组，轮播图

class Xinjixueyuan extends StatefulWidget {
  @override
  _XinjixueyuanState createState() => _XinjixueyuanState();
}

class _XinjixueyuanState extends State<Xinjixueyuan> {
  List<Map> imgList = [
    {
      "url":
      "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1723152643,2724026866&fm=26&gp=0.jpg",
    },
    {
      "url":
      "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3770064398,4110132465&fm=26&gp=0.jpg",
    },
    {
      "url":
      "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=231252774,4074170430&fm=26&gp=0.jpg",
    }
  ];

  List<Map> _imgList01 = [
    {
      "url":
      "https://img02.mockplus.cn/idoc/xd/2020-05-31/5f23468b-5aa6-454a-9a24-91b4ce57894e.png",
      'text':'全部课程',
    },
    {
      "url":
      "https://img02.mockplus.cn/idoc/xd/2020-06-17/8d7721c6-ec45-4ac0-9bc8-1b12709ea597.png",
      'text':'找投资人',
    },
    {
      "url":
      "https://img02.mockplus.cn/idoc/xd/2020-06-17/b6f7dea6-ac0a-4ec2-9858-d408db500cd6.png",
      'text':'创业百科',
    },
    {
      "url":
      "https://img02.mockplus.cn/idoc/xd/2020-06-17/ce7d9900-9c07-4fb1-b362-34bb2cdc9b00.png",
      'text':'有时书',
    },
    {
      "url":
      "https://img02.mockplus.cn/idoc/xd/2020-06-17/4680cbb4-1e48-4de1-80d9-909395f4c845.png",
      'text':'会员专区',
    },
    {
      "url":
      "https://img02.mockplus.cn/idoc/xd/2020-06-17/66dc15d7-471f-4d61-9bc7-b9422bada6d0.png",
      'text':'我的商品',
    },
    {
      "url":
      "https://img02.mockplus.cn/idoc/xd/2020-06-17/34a00672-7040-4ad8-a917-70f82b5df4ba.png",
      'text':'分销中心',
    },
    {
      "url":
      "https://img02.mockplus.cn/idoc/xd/2020-06-17/1c040bb9-94d3-4caa-9e61-429b15e8f2e9.png",
      'text':'咨询',
    },
  ];
  List<Map> textList01 = [
    {
      'text':'创业融资',
    },
    {
      'text':'股权财税',
    },
    {
      'text':'知识升级',
    },
    {
      'text':'市场经营',
    },
    {
      'text':'战略创新',
    },
    {
      'text':'市场运营',
    },
    {
      'text':'战略创新',
    },
    {
      'text':'组织管理',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
            width: MediaQuery.of(context).size.width,
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon:Container(
                    margin: EdgeInsets.only(top: 10,bottom: 10,right: 10),
                    child: Icon(Icons.search),
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(width: 1,color: Colors.grey),
                        )
                      ),
                  ),
                filled: true,
                fillColor: Colors.redAccent[90],
//                  prefixIcon:Row(
//                    children: [
//                      Icon(Icons.search),
//                      SizedBox(width: 5,),
//                      Text('l',style: TextStyle(fontSize: 30,color: Colors.grey),),
//                    ],
//                  ),
                contentPadding: EdgeInsets.only(top: 10,left: 20),
                hintText: '搜索你需要的课程',
                helperStyle: TextStyle(fontSize: 16,color: Colors.black),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              borderRadius:
              BorderRadius.circular(40.0),
            ),
            height: 200,
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
                      //   control: new SwiperControl(),//双箭头duration: ,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 150,
            width: 375,
            child: GridView.builder(
                itemCount: _imgList01.length,
                padding: EdgeInsets.all(10),
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio:2/1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: Column(
                      children: <Widget>[
                        Image.network(_imgList01[index]['url'], width: 40,
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
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
            child: Row(
              children: [
                Text('全部课程',style: TextStyle(fontSize: 20,),),
                Spacer(),
                Text('更多'),
              ],
            ),
          ),
          Container(
              height: 150,
              child: GridView.builder(
                  itemCount: textList01.length,
                  padding: EdgeInsets.all(10),
                  physics: new NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                      childAspectRatio:9/5,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width/3-60,
                      child: Text(textList01[index]["text"],style: TextStyle(color: Colors.white,fontSize: 16),),
                      decoration: BoxDecoration(
                          color: Colors.deepOrangeAccent,
                          borderRadius: BorderRadius.circular(10)
                      ),
                    );
                  }),
            ),
        ],
      )
    );
  }
}
