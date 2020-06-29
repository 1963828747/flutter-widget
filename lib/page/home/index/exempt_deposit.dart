import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
///免审押金
class ExemptDeposit extends StatefulWidget {
  ExemptDeposit({Key key}) : super(key: key);

  @override
  _ExemptDepositState createState() => _ExemptDepositState();
}

class _ExemptDepositState extends State<ExemptDeposit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar:AppBar(
          title: Text('免审押金',style:TextStyle(fontSize: 18,color: Colors.black,)),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
            child: Container(
                padding: EdgeInsets.all(17),
                child: Image.asset('assets/images/fanhui1.png'))
        ),
        ),
        body: Container(
          height: 96,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                height: 48,
                padding: EdgeInsets.only(left: 16,right: 16),
                child: Row(
                  children: <Widget>[
                    Text('预存免审核保证金额',style:TextStyle(fontSize: 16,color: Colors.black,)),
                    Expanded(child: Container()),
                    Text('不得少于￥ 800.00',style:TextStyle(fontSize: 18,color: Color.fromRGBO(191,191,191,1),))
                  ],
                ),
              ),Center(
                child: Container(
                  height: 30,
                  width: 66,
                  margin: EdgeInsets.only(top: 9),
                  child: FlatButton(
                    color: Colors.grey[400],
                    //设置背景色为黄色
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    //设置斜角矩形边框
                    colorBrightness: Brightness.light,
                    //使用亮色主题，保证按钮文字颜色为深色
                    onPressed: () {},
                    child: Text('支付',style:TextStyle(fontSize: 16,color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}