import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
///性别
class Sex extends StatefulWidget {
  @override
  _SexState createState() => _SexState();
}

class _SexState extends State<Sex> {
  bool isClck01 = false;
  bool isClck02 = false;
  bool isClck03 = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('三目运算',
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
          child: Container(
              height: 20,
              padding: EdgeInsets.all(17),
              child: Image.asset(
                'assets/images/fanhui1.png',
              )),
        ),
      ),
      body: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        if(isClck01==false){
                          isClck01 = true;
                        }else{
                          isClck01=false;
                        }
                      });
                      print(isClck01);
                    },
                    child: Center(
                      child: Container(
                        child: isClck01 == false
                            ?Icon(Icons.check_circle_outline,color: Colors.lightBlueAccent,)
                            :Icon(Icons.check_circle_outline,color: Colors.white,),
                      ),
                    ),
                  ),
                  SizedBox(height: 8,)
                ],
              ),
            ],
          ),

    );
  }
}
