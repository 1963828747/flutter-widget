import 'package:flutter/material.dart';

class AnimatedPaddingPage extends StatefulWidget {
  @override
  _AnimatedPaddingPageState createState() => _AnimatedPaddingPageState();
}

class _AnimatedPaddingPageState extends State<AnimatedPaddingPage> {
  double padValue = 100;
  double padValue2 = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPadding边距动画'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body: Center(
        child: AnimatedPadding(
          padding: EdgeInsets.only(left: padValue2,right: padValue2,bottom: padValue-30,top: padValue-30),
          duration: Duration(seconds: 1),
          child: GestureDetector(
            onTap: (){
              setState(() {
                if(padValue == 100){
                  padValue = 300;
                }else if(padValue == 300){
                  padValue2 = 300;
                }
              });
            },
            child: Container(
              height: 200,
              width: 200,
              color: Colors.cyan,
            ),
          ),
        ),
      ),
    );
  }
}
