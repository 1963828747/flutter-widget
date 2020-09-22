import 'package:flutter/material.dart';
class AnimatedOpacityPage extends StatefulWidget {
  @override
  _AnimatedOpacityPageState createState() => _AnimatedOpacityPageState();
}

class _AnimatedOpacityPageState extends State<AnimatedOpacityPage> {
  var _currentOpacity=0.0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedOpacity'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
        actions: [
          InkWell(
            onTap: (){
              setState((){
                if(_currentOpacity == 0.0){
                  _currentOpacity = 1.0;
                }else{
                  _currentOpacity = 0.0;
                }
              });
              print(_currentOpacity);
            },
            child: Icon(Icons.all_inclusive),

          )],
      ),
      body: Center(
          child:AnimatedOpacity(
            child: Container(
              alignment: Alignment.center,
              height: 300,
              width: 300,
              color: Colors.cyan,
              child: Text('container'),
            ),
            curve: Curves.linear,
            opacity: _currentOpacity,
            duration: Duration(seconds:1),
          )
      ),
    );
  }
}
