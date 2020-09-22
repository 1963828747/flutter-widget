import 'package:flutter/material.dart';
class IndexedStackPage extends StatefulWidget {
  @override
  _IndexedStackPageState createState() => _IndexedStackPageState();
}

class _IndexedStackPageState extends State<IndexedStackPage> {
  var _widgetIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IndexedStack'),
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
                if(_widgetIndex == 0){
                  _widgetIndex = 2;
                }else{
                  _widgetIndex = 0;
                }
              });
              print(_widgetIndex);
            },
            child: Icon(Icons.all_inclusive),

          )],
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        child: IndexedStack(
          index: _widgetIndex,
          children: [
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.cyan,
              child: Text('container'),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.amberAccent,
              child: Text('container'),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.pinkAccent,
              child: Text('container'),
            ),
          ],
        ),
      ),
    );
  }
}
