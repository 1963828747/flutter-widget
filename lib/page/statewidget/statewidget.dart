import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget/page/statewidget/index02/widgettree_page.dart';

import 'index02/context_page.dart';
import 'index02/lifecycle_page.dart';
import 'index02/stateful_page.dart';
import 'index02/stateless_page.dart';

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
//                StatefulPage
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StatefulPage(),
                        ));
                  },
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    color: Colors.redAccent,
                    child: Text('有状态组件'),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StatelessPage(),
                        ));
                  },
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    color: Colors.blueAccent,
                    child: Text('无状态组件'),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ContextPage(),
                        ));
                  },
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    color: Colors.amberAccent,
                    child: Text('Context'),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LifeCycle(),
                        ));
                  },
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    color: Colors.purpleAccent,
                    child: Text('生命周期'),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WidgetTreePage(),
                        ));
                  },
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    color: Colors.greenAccent,
                    child: Text('Widget树'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
