import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';
class SwiperWidget extends StatefulWidget {
  @override
  _SwiperWidgetState createState() => _SwiperWidgetState();
}

class _SwiperWidgetState extends State<SwiperWidget> {
  List<Map> imgList = [
    {
  "url":"http://attach.52pojie.cn/forum/201604/01/184715erqfhcfr99wcqrwh.jpg",
    },
    {
     "url":"http://img.zcool.cn/community/017ae9584154e3a8012060c8e04e06.jpg@2o.jpg",
    },
    {
      "url":"http://pic1.win4000.com/wallpaper/8/561dc74235157.jpg",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('轮播图'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Container(child: Text('横向轮播图'),),
          Container(
            height: 200,
            width: double.infinity,//无穷数 / 无尽期 / 无穷 / 无限大
            child: AspectRatio(
              aspectRatio: 16/9,//设置子组件宽高比，防止变形
              child: Swiper(
              itemBuilder: (BuildContext context,int index){
                return new Image.network(imgList[index]["url"],fit: BoxFit.fill,);
              },
              itemCount: imgList.length,
              pagination: new SwiperPagination(),//指示器
                loop: true,//无限轮播开关
                autoplay: true,//自动轮播
               //scrollDirection: Axis.vertical,//滚动方向横向
                control: new SwiperControl(),//双箭头
//                duration: ,
          ),
            ),),
          Container(child: Text('纵向轮播图'),),
          Container(
            height: 200,
            width: double.infinity,//无穷数 / 无尽期 / 无穷 / 无限大
            child: AspectRatio(
              aspectRatio: 16/9,//设置子组件宽高比，防止变形
              child: Swiper(
                itemBuilder: (BuildContext context,int index){
                  return ClipRect(

                  );
                },
                itemCount: imgList.length,
                pagination: new SwiperPagination(),//指示器
                loop: true,//无限轮播开关
                autoplay: true,//自动轮播
                //scrollDirection: Axis.vertical,//滚动方向横向
                scrollDirection: Axis.vertical,
                control: new SwiperControl(),//双箭头
//                duration: ,
              ),
            ),),
        ],
      )
//    body: Container(child: Text('data'),),
    );
  }
}
