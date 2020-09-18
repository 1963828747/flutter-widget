import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class FrameworkWidget extends StatefulWidget {
  @override
  _FrameworkWidgetState createState() => _FrameworkWidgetState();
}

class _FrameworkWidgetState extends State<FrameworkWidget> {
  List<Map> imgList = [
    {
      "url":"assets/images/f2.jpeg",
    },
    {
      "url":"assets/images/f5.jpg",
    },
    {
      "url":"assets/images/f3.png",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text('路由管理'),
            centerTitle: true,
          ),
          body: Container(
            height: MediaQuery.of(context).size.height,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
              shrinkWrap: true,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 200,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,//无穷数 / 无尽期 / 无穷 / 无限大
                  child: AspectRatio(
                    aspectRatio: 16/9,//设置子组件宽高比，防止变形
                    child: Swiper(
                      itemBuilder: (BuildContext context,int index){
                        return new Image.asset(imgList[index]["url"],fit: BoxFit.fill,);
                      },
                      itemCount: imgList.length,
                      pagination: new SwiperPagination(),//指示器
                      loop: true,//无限轮播开关
                      autoplay: true,//自动轮播
                      //scrollDirection: Axis.vertical,//滚动方向横向
//                      control: new SwiperControl(),//双箭头
//                duration: ,
                    ),
                  ),),
                Expanded(
                  child: Column(
                    children: [
                      Container03(
                        text01: '静态路由',
                      ),
                      Container03(
                        text01: '动态路由',
                      ),
                      Container03(
                        text01: '参数回传',
                      ),
                      Container03(
                        text01: '路由栈',
                      ),
                      Container03(
                        text01: '自定义路由',
                      ),
                    ],
                  )
                ),
              ],
            ),
          )),
    );
  }
}

class Container03 extends StatefulWidget {
  final text01;

  const Container03({Key key, this.text01, }) : super(key: key);

  @override
  _Container03State createState() => _Container03State();
}

class _Container03State extends State<Container03> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(8),
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

  final Container03 widget;

  @override
  Widget build(BuildContext context) {
    return Text(widget.text01,style: TextStyle(
      color:Colors.white,
      fontSize:16,
    ),);
  }
}
