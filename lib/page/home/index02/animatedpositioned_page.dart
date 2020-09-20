import 'package:flutter/material.dart';
class AnimatedPositionedPage extends StatefulWidget {
  @override
  _AnimatedPositionedPageState createState() => _AnimatedPositionedPageState();
}

class _AnimatedPositionedPageState extends State<AnimatedPositionedPage> {
  bool showMessage = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPositionedPage'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
        actions: [
          InkWell(
          onTap: (){
            setState(() {
              if(showMessage==false){
                showMessage=true;
              }else{
                showMessage=false;
              }
            });
            print(showMessage);
          },
          child: Icon(Icons.all_inclusive),

        )],
      ),
      body: Center(
        child: Stack(
          children: [
            Positioned(
                bottom: 10,
                right: 10,
                child: Container(
                  color: Colors.amberAccent,
                  height: 100,
                  width: 100,
                  child: Text('123'),)),
            AnimatedPositioned(
                right: 10,
                bottom: showMessage?70:70,
                top: showMessage?150:50,
                child: Container(
              color: Colors.cyan,
              height: 100,
              width: 100,
              child: Text('321'),),
                duration: Duration(seconds: 1)),
          ],
        ),
      ),
    );
  }
}
