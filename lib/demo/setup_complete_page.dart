import 'package:flutter/material.dart';

///中心-我的收益-设置完成
class SetupCompletePage extends StatefulWidget {
  @override
  _SetupCompletePageState createState() => _SetupCompletePageState();
}

class _SetupCompletePageState extends State<SetupCompletePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('验证已通过',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Container(
            margin: EdgeInsets.all(14),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border(
                  top: BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),
                  left: BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),
                  right: BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 1,
                  )),
            ),
            child: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.black,
              size: 26,
            ),
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(height: 72,),
            Container(
                child: Icon(Icons.check_circle,color: Colors.blue,size: 70,)),
            SizedBox(height: 24,),
            Text('以验证',style: TextStyle(fontSize: 16,color: Colors.blue),),
            SizedBox(height: 17,),
            Container(
              width: 111,
              height: 36,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border(
                    top: BorderSide(
                      color: Colors.blue,
                      width: 1,
                    ),
                    left: BorderSide(
                      color: Colors.blue,
                      width: 1,
                    ),
                    right: BorderSide(
                      color: Colors.blue,
                      width: 1,
                    ),
                    bottom: BorderSide(
                      color: Colors.blue,
                      width: 1,
                    )),
              ),
              child: Text('添加银行卡',style: TextStyle(
                color: Colors.blue,fontSize:14
              ),),
            ),
          ],
        ),
      )
    );
  }
}
