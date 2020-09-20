import 'package:flutter/material.dart';
class AnimatedCrossFadePage extends StatefulWidget {
  @override
  _AnimatedCrossFadePageState createState() => _AnimatedCrossFadePageState();
}

class _AnimatedCrossFadePageState extends State<AnimatedCrossFadePage> {
  var _lst = <String>[];

  @override
  void initState() {
    getData();
    super.initState();
  }

  getData() async {
    await Future.delayed(Duration(seconds: 4));
    setState(() {
      _lst = List.generate(100, (int index) => "Item ${index + 1}");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedCrossFade交叉淡入'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body:  AnimatedCrossFade(
        duration: Duration(milliseconds: 6000),
        firstChild: Center(
          child: CircularProgressIndicator(),//刷新图标
        ),
        secondChild: ListView(
          children: _lst
              .map((String s) => ListTile(
            key: Key(s),
            title: Text(s),
          ))
              .toList(),
        ),
        crossFadeState:
        _lst.isEmpty //_lst.isEmpty 如果数组为空
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
      ),
    );
  }
}
