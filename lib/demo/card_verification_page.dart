import 'dart:async';

import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

///中心-我的收益--添加银行卡-验证
class CardVerificationPage extends StatefulWidget {
  List<Asset> images = List<Asset>();

  @override
  _CardVerificationPageState createState() => _CardVerificationPageState();
}

class _CardVerificationPageState extends State<CardVerificationPage> {
  var _imgPath;
  var _imgPath2;

  bool  isButtonEnable=true;      //按钮状态  是否可点击
  String buttonText='发送验证码';   //初始文本
  int count=60;                     //初始倒计时时间
  Timer timer;                       //倒计时的计时器
  TextEditingController mController=TextEditingController();

  void _buttonClickListen(){
    setState(() {
      if(isButtonEnable){         //当按钮可点击时
        isButtonEnable=false;   //按钮状态标记
        _initTimer();

        return null;            //返回null按钮禁止点击
      }else{                    //当按钮不可点击时
//        debugPrint('false');
        return null;             //返回null按钮禁止点击
      }
    });
  }


  void _initTimer(){
    timer = new Timer.periodic(Duration(seconds: 1), (Timer timer) {
      count--;
      setState(() {
        if(count==0){
          timer.cancel();             //倒计时结束取消定时器
          isButtonEnable=true;        //按钮可点击
          count=60;                   //重置时间
          buttonText='发送验证码';     //重置按钮文本
        }else{
          buttonText='重新发送($count)';  //更新文本内容
        }
      });
    });
  }


  @override
  void dispose() {
    timer?.cancel();      //销毁计时器
    timer=null;
    mController?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('身份认证',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            )),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: UnconstrainedBox(
            child: Container(
//          padding: EdgeInsets.all(18),
                child: Image.network(
              'https://img02.mockplus.cn/idoc/xd/2020-06-17/eaaa9c8c-355c-467d-8aaf-db2583d2490e.png',
              width: 24,
              height: 24,
              fit: BoxFit.fill,
            )),
          ),
        ),
        actions: <Widget>[
          UnconstrainedBox(
            child: Container(
//          padding: EdgeInsets.all(18),
                child: Image.network(
              'https://img02.mockplus.cn/idoc/xd/2020-06-17/27e245f4-ee33-4cfb-b045-12e1b08d62d2.png',
              width: 24,
              height: 24,
              fit: BoxFit.fill,
            )),
          ),
          SizedBox(
            width: 16,
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '身份信息',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        height: 40,
                        child: Row(
                          children: [
                            Text('真实姓命'),
                            Container(
                              width: MediaQuery.of(context).size.width * 2 / 3,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                    hintStyle: TextStyle(
                                        fontSize: 14, color: Colors.grey)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        height: 40,
                        child: Row(
                          children: [
                            Text('身份证号'),
                            Container(
                              alignment: Alignment.centerLeft,
                              width: MediaQuery.of(context).size.width * 2 / 3,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                    hintStyle: TextStyle(
                                        fontSize: 14, color: Colors.grey)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(child: _ImageView(_imgPath)),
                Card(child: _ImageView2(_imgPath2)),
                GestureDetector(
                  onTap: _openGallery,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Card(
                      child: Container(
                          height: 150,
                          color: Colors.white,
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add_circle_outline,
                                size: 60,
                                color: Colors.grey,
                              ),
                              Text('身份证正面'),
                            ],
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                GestureDetector(
                  onTap: _openGallery,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Card(
                      child: Container(
                          height: 150,
                          color: Colors.white,
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add_circle_outline,
                                size: 60,
                                color: Colors.grey,
                              ),
                              Text('身份证反面'),
                            ],
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                    padding: EdgeInsets.only(left: 16), child: Text('手机认证',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Color(0xff333333)),)),
                Container(
                  height: 40,
                  color: Colors.white,
                  padding: EdgeInsets.only(left: 16,right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                  crossAxisAlignment: CrossAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.ideographic,
                    children: <Widget>[
                      Text('手机号码',style: TextStyle(fontSize: 16,color: Color(0xff333333)),),
                      Container(
                        height: 40,
                        width: 120,
                        child: RaisedButton(
                          disabledColor: Colors.grey.withOpacity(0.1),     //按钮禁用时的颜色
                          disabledTextColor: Colors.white,                   //按钮禁用时的文本颜色
                          textColor:isButtonEnable?Colors.white:Colors.black.withOpacity(0.2),                           //文本颜色
                          color: isButtonEnable?Colors.blue:Colors.grey.withOpacity(0.1),                          //按钮的颜色
                          splashColor: isButtonEnable?Colors.white.withOpacity(0.1):Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          onPressed: (){ setState(() {
                            _buttonClickListen();
                          });},
//                        child: Text('重新发送 (${secondSy})'),
                          child: Text('$buttonText',style: TextStyle(fontSize: 13,),),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                        padding: EdgeInsets.only(left: 16), child: Text('验证号码')),
                    Container(
                      height:40,
                      width: MediaQuery.of(context).size.width*2/3,
                      child: Padding(padding: EdgeInsets.only(left: 15,right: 15,),
                        child: TextFormField(
                          maxLines: 1,
                          onSaved: (value) { },
                          controller: mController,
                          textAlign: TextAlign.left,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly,LengthLimitingTextInputFormatter(6)],
                          decoration: InputDecoration(
                            hintText: ('填写验证码'),
                            contentPadding: EdgeInsets.only(top: -5,bottom: 0),
                            hintStyle: TextStyle(
                              color: Color(0xff999999),
                              fontSize: 13,
                            ),
                            alignLabelWithHint: true,
                            border: OutlineInputBorder(borderSide: BorderSide.none),
                          ),
                        ),),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  child: RaisedButton(
                    color: Colors.blue,
                    // 按钮背景色
                    highlightColor: Colors.blue[700],
                    // 按钮高亮后的背景色
                    colorBrightness: Brightness.dark,
                    // 使用深色主题，保证按钮文字颜色为浅色
                    splashColor: Colors.grey,
                    // 点击时，水波动画中水波的颜色
                    child: Container(
                        alignment: Alignment.center,
                        height: 48,
                        width: 161,
                        child: Text(
                          "下一步",
                          style: TextStyle(fontSize: 16),
                        )),
                    // 文本
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    //圆角矩形
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _ImageView(imgPath) {
    if (imgPath == null) {
      return null;
    } else {
      return Stack(
        children: <Widget>[],
      );
    }
  }

  Widget _ImageView2(imgPath) {
    if (imgPath == null) {
      return null;
    } else {
      return Stack(
        children: <Widget>[
          FDottedLine(
            strokeWidth: 2.5,
            color: Colors.grey,
            child: Container(
              width: 343,
              height: 199,
              margin: EdgeInsets.only(bottom: 17),
              child: Image.file(
                imgPath,
                height: 196,
                width: 315,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      );
    }
  }

  _takePhoto() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _imgPath = image;
    });
  }

/*相册*/
  _openGallery() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _imgPath = null ? _imgPath = image : _imgPath2 = image;
    });
  }
}
