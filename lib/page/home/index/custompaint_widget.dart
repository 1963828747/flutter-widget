import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget/other/clock.dart';
import 'package:widget/other/thermometer.dart';


class CustompaintWidget extends StatefulWidget {
  CustompaintWidget({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _CustompaintWidgetState createState() => _CustompaintWidgetState();
}

class _CustompaintWidgetState extends State<CustompaintWidget> {
  final items = ["时钟", "温度计"];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return FlatButton(
              child: Text(items[index]),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage1(
                      index: items[index],
                    ),
                  ),
                );
              },
            );
          },
          itemCount: items.length,
        ));
  }
}

class HomePage1 extends StatefulWidget {
  HomePage1({Key key, this.index}) : super(key: key);
  final String index;

  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Custom Widget"),
        ),
        body: Center(
          child: getWidget(),
        ));
  }

  Widget getWidget() {
    switch (widget.index) {
      case "时钟":
        return ClockPage();
      case "温度计":
        return ThermometerPage(
          width: 300,
          degree: 50,
        );
      default:
        return ClockPage();
    }
  }
}