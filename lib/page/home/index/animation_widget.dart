import 'package:flutter/material.dart';

import 'Animation.dart';
import 'Jitter_page.dart';
import 'animation_AnimatedContainer.dart';
class AnimationWidget extends StatefulWidget {
  @override
  _AnimationWidgetState createState() => _AnimationWidgetState();
}

class _AnimationWidgetState extends State<AnimationWidget> {
//  void Bubble(
//  color: Colors.purple,
//  child: Text(
//  "你6666",
//  style: TextStyle(color: Colors.white),
//  ),
//  ),
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('动画大全'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                        builder: (context) => AnimationPage()
                      ));
              },
              child: Text('动画1')),
          GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => AnimationAnimatedContainer()
                ));
              },
              child: Text('动画2')),
          GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => JitterPage()
                ));
              },
              child: Text('动画3')),
          Hero(
            tag: "DemoTag",
            child: Icon(
              Icons.add,
              size: 70.0,
            ),
          ),
        ],
      ),
    );
  }
}
