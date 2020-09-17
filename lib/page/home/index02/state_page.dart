import 'package:flutter/material.dart';
class StatePage extends StatefulWidget {
  final String title;

  const StatePage({Key key, this.title}) : super(key: key);
  @override
  _StatePageState createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('状态管理'),
      centerTitle: true,
      leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.keyboard_arrow_left)),
    ),
      body: Center(
        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('$_count',style: TextStyle(fontSize: 30),),
            BottomWidget(count: _count,callback: changeCount,),
          ],
        ),
      )
    );
  }
  changeCount(int num){
    setState(() {
      _count = num;
    });
  }
}

class BottomWidget extends StatelessWidget {
  final int count;
  final Function callback;

  const BottomWidget({Key key, this.count, this.callback}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlatButton(onPressed: (){
          callback(count-1);
        }, child: Icon(Icons.remove)),
        Container(
          child: Text('$count'),
        ),
        FlatButton(onPressed: (){
          callback(count+1);
        }, child: Icon(Icons.add)),
      ],
    );
  }
}
