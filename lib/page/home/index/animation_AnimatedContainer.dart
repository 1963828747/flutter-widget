import 'package:flutter/material.dart';

class AnimationAnimatedContainer extends StatefulWidget {
  @override
  _AnimationAnimatedContainerState createState() => _AnimationAnimatedContainerState();
}

class _AnimationAnimatedContainerState extends State<AnimationAnimatedContainer>{
  bool selected = false;
  bool _showFirst = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('动画2'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
        children: <Widget>[
          Text('AnimatedContainer变化'),
          GestureDetector(
            onTap: (){
              setState(() {
                selected  = !selected;
              });
            },
            child: Center(
              child: AnimatedContainer(
                width: selected ? 200.0 : 100.0,//宽度
                height: selected ? 100.0 : 200.0,//高度
                color: selected ? Colors.red : Colors.blue,//背景色
                alignment:
                selected ? Alignment.center : AlignmentDirectional.topCenter,//子元素对齐方式
                duration: Duration(seconds: 2),//动画持续时间
                curve: Curves.decelerate,//差值器（动画效果）
                child: Container(//子元素
                  height: 50,
                  width: 50,
                  color: Colors.yellow,
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Text('Hero变化'),
          GestureDetector(
            onTap: (){
                setState(() {
                  _showFirst = !_showFirst;
                });
            },
            child: Center(
              child: AnimatedCrossFade(
                duration: Duration(seconds: 1),
                crossFadeState:
                _showFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                firstChild: Container(
                  height: 150,
                  width: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                  child: Text('first child',style: TextStyle(color: Colors.white),),
                ),
                secondChild: Container(
                  height: 150,
                  width: 150,
                  alignment: Alignment.center,
                  decoration:
                  BoxDecoration(shape: BoxShape.rectangle, color: Colors.orange,borderRadius:BorderRadius.circular(20)),
                  child: Text('second child',style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
          ),
          Hero(
            tag: "DemoTag",
            child: Icon(
              Icons.add,
            ),
            transitionOnUserGestures: true,
          ),

          Text('AnimatedCrossFade变化'),
        ],
      ),
    );
  }

}