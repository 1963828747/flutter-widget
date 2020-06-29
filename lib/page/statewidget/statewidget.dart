import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StateWidget extends StatefulWidget {
  @override
  _StateWidgetState createState() => _StateWidgetState();
}

class _StateWidgetState extends State<StateWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Center(
          child: Container(
//            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  color: Colors.redAccent,
                  child: Text('有状态组件'),
                ),
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  color: Colors.blueAccent,
                  child: Text('无状态组件'),
                ),
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  color: Colors.amberAccent,
                  child: Text('Context'),
                ),
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  color: Colors.purpleAccent,
                  child: Text('生命周期'),
                ),
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  color: Colors.greenAccent,
                  child: Text('Widget树'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
