import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///中心-我的收益
class MyincomePage extends StatefulWidget {
  @override
  _MyincomePageState createState() => _MyincomePageState();
}

class _MyincomePageState extends State<MyincomePage> {
  @override
  Widget build(BuildContext context) {
//    debugShowCheckedModeBanner: false, //去掉debug图标
    return Scaffold(
//        appBar: AppBar(
//          title: Text('我的收益'),
//          centerTitle: true,
//          leading: GestureDetector(
//              onTap: () {
//                Navigator.pop(context);
//              },
//              child: Icon(Icons.keyboard_arrow_left)),
//        ),
      body: Stack(
        children: [
          ClipPath(
            //路径裁切组件
            clipper: BottomClipper(),
            child: Container(
              color: Colors.red,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.1,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 44),
            child: Center(
              child: Column(
//        crossAxisAlignment: CrossAxisAlignment.center,
//        mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border(
                                  top: BorderSide(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                  left: BorderSide(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                  right: BorderSide(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                  bottom: BorderSide(
                                    color: Colors.white,
                                    width: 1,
                                  )),
                            ),
                            child: Icon(
                              Icons.keyboard_arrow_left,
                              color: Colors.white,
                              size: 26,
                            ),
                          ),
                        ),
                        Spacer(),
                        Text(
                          '我的收益',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border(
                                top: BorderSide(
                                  color: Colors.white,
                                  width: 1,
                                ),
                                left: BorderSide(
                                  color: Colors.white,
                                  width: 1,
                                ),
                                right: BorderSide(
                                  color: Colors.white,
                                  width: 1,
                                ),
                                bottom: BorderSide(
                                  color: Colors.white,
                                  width: 1,
                                )),
                          ),
                          child: Icon(
                            Icons.credit_card,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  Text(
                    '余额(元)',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  Container(
                    height: 53,
                    width: 126,
                    child: Text(
                      '888.88',
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Text(
                    '历史收入',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Text(
                    '554.458.98',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width - 32,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  //     Icon(Icons.arrow_upward,color: Colors.white,size: 40,),
                  Container(
                    height: 48,
                    width: 48,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border(
                          top: BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          left: BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          right: BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          bottom: BorderSide(
                            color: Colors.white,
                            width: 1,
                          )),
                    ),
                    child: Icon(
                      Icons.arrow_upward,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 30,
                    width: 64,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border(
                          top: BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          left: BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          right: BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          bottom: BorderSide(
                            color: Colors.white,
                            width: 1,
                          )),
                    ),
                    child: Text(
                      '提现',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '*满200.00可提现',
                        style: TextStyle(color: Colors.grey[300], fontSize: 14),
                      ),
                      Text(
                        '*每月15-25方可提现',
                        style: TextStyle(color: Colors.grey[300], fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0); //第1个点
    path.lineTo(0, size.height - 60.0); //第2个点
    var firstControlPoint = Offset(size.width / 2, size.height);
    var firstEdnPoint = Offset(size.width, size.height - 60.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEdnPoint.dx, firstEdnPoint.dy);
    path.lineTo(size.width, size.height - 60.0); //第3个点
    path.lineTo(size.width, 0); //第4个点

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

//class BottomClipper extends CustomClipper<Path> {
//  @override
//  Path getClip(Size size) {
//    var path = Path(); //定义路径
//    //path.lineTo(0, 0); //第1个点
//    //path.lineTo(0, size.height-50.0); //第2个点
//    //var firstControlPoint = Offset(size.width/2, size.height); //第一段曲线控制点
//    //var firstEdnPoint = Offset(size.width, size.height-50.0); //第一段曲线结束点
//    //path.quadraticBezierTo( //形成曲线
//    //  firstControlPoint.dx,
//    //  firstControlPoint.dy,
//    //  firstEdnPoint.dx,
//    //  firstEdnPoint.dy
//    //);
//    //path.lineTo(size.width, size.height-50.0); //第3个点
//    //path.lineTo(size.width, 0); //第4个点
//
//    //波浪曲线路径
//    path.lineTo(0, 0); //第1个点
//    path.lineTo(0, size.height - 40.0); //第2个点
//    var firstControlPoint = Offset(size.width / 4, size.height); //第一段曲线控制点
//    var firstEndPoint = Offset(size.width / 2.25, size.height - 30); //第一段曲线结束点
//    path.quadraticBezierTo(
//        //形成曲线
//        firstControlPoint.dx,
//        firstControlPoint.dy,
//        firstEndPoint.dx,
//        firstEndPoint.dy);
//
//    var secondControlPoint =
//        Offset(size.width / 4 * 3, size.height - 90); //第二段曲线控制点
//    var secondEndPoint = Offset(size.width, size.height - 40); //第二段曲线结束点
//    path.quadraticBezierTo(
//        //形成曲线
//        secondControlPoint.dx,
//        secondControlPoint.dy,
//        secondEndPoint.dx,
//        secondEndPoint.dy);
//
//    path.lineTo(size.width, size.height - 40);
//    path.lineTo(size.width, 0);
//
//    return path;
//  }
//
//  @override
//  bool shouldReclip(CustomClipper<Path> oldClipper) {
//    return false;
//  }
//}
