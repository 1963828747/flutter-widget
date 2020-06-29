import 'package:flutter/material.dart';

class ImagesWidget extends StatefulWidget {
  ImagesWidget({Key key}) : super(key: key);

  @override
  _ImagesWidgetState createState() => _ImagesWidgetState();
}

class _ImagesWidgetState extends State<ImagesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar:AppBar(
          title: Text('Image组件的用法'),
          centerTitle: true,
          leading: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.keyboard_arrow_left)),
        ),
        body: Center(
          child: ListView(
            padding: EdgeInsets.all(16),
            shrinkWrap: true,
            children: <Widget>[
              UnconstrainedBox(
                child: Container(
                  width: 100,
                  height: 100,
                  child: CircleAvatar(
                    //头像半径
                    radius: 50,
                    //头像图片 -> NetworkImage网络图片，AssetImage项目资源包图片, FileImage本地存储图片
                    backgroundImage: NetworkImage(
                      'https://imagepphcloud.thepaper.cn/pph/image/71/675/575.jpg',
                    ),
                  ),
                ),
              ),
//          new Container(
//            width: 88.0,
//            height: 88.0,
//            decoration: BoxDecoration(
//              shape: BoxShape.rectangle,
//              borderRadius: BorderRadius.circular(6.0),
//              image: DecorationImage(
//                image: AssetImage(
//                  Utils.getImgPath('ali_connors'),
//                ),
//              ),
//            ),),
              SizedBox(
                height: 10,
              ),
              UnconstrainedBox(
                child: ClipOval(
                  child: Image.network(
                    'http://attach.52pojie.cn/forum/201604/01/184715erqfhcfr99wcqrwh.jpg',
                    width: 150,
                    height: 150, fit: BoxFit.cover,
//                  fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              UnconstrainedBox(
                child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
//                  使用ShapeDecoration可以做出各种形状
//                  斜切角: BeveledRectangleBorder
//                  圆角: RoundedRectangleBorder
//                  超椭圆: SuperellipseShape
//                  体育场: StadiumBorder
//                  圆形: CircleBorder
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage('http://attach.52pojie.cn/forum/201604/01/184715erqfhcfr99wcqrwh.jpg'),
                            fit: BoxFit.cover
                        )
                    )
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset('assets/images/aa.jpg'),
              SizedBox(
                height: 10,
              ),
              Image.network(
                'http://img.zcool.cn/community/017ae9584154e3a8012060c8e04e06.jpg@2o.jpg',
              ),
              SizedBox(
                height: 10,
              ),
              FadeInImage.assetNetwork(
                  placeholder: 'images/avatar.png',
                  image: 'http://pic1.win4000.com/wallpaper/8/561dc74235157.jpg',
                  width: 200,
                  height: 200
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}