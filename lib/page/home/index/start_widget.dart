import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:provider/provider.dart';
import 'package:widget/view/login_widget.dart';
import 'package:widget/view_models/login_view_model.dart';

class StartWidget extends StatefulWidget {
  @override
  _StartWidgetState createState() => _StartWidgetState();
}

class _StartWidgetState extends State<StartWidget> {
  @override
  Widget build(BuildContext context) {
    List<Map> imgList = [
      {
        "url":"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592199258532&di=579ff0276b9d7684bbed294f678ce027&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201809%2F28%2F20180928231223_hjdpm.jpg",
      },
      {
        "url":"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592199448929&di=a9b5c30f0073eb5d836d4732cfc96277&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201404%2F05%2F20140405095222_TMyhJ.thumb.700_0.jpeg",
      },
      {
        "url":"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592199258535&di=2712ee3f4480340a6caad4376c6defc2&imgtype=0&src=http%3A%2F%2Fd.paper.i4.cn%2Fmax%2F2018%2F09%2F27%2F11%2F1538018314795_960267.jpg",
      }
    ];
    return Material(
      child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
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
                autoplay: false,//自动轮播
                //scrollDirection: Axis.vertical,//滚动方向横向
//              control: new SwiperControl(),//双箭头
//                duration: ,
              ),
            ),),
          Positioned(
            top: 30,
            right: MediaQuery.of(context).size.width/12,
            child: GestureDetector(
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
              child: Container(
                child: Text('跳过',style: TextStyle(
                  fontSize: 12,color: Colors.white
                ),),)
            ),
          ),
        ],
      ),
    );
  }
}
