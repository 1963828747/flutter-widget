import 'package:flutter/material.dart';
class FrationallySizedBox extends StatefulWidget {
  @override
  _FrationallySizedBoxState createState() => _FrationallySizedBoxState();
}

class _FrationallySizedBoxState extends State<FrationallySizedBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置Widget百分比'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.7,
          child: Container(
            color: Colors.blue,
            child: FlatButton(
                onPressed: null, child: Text('PRESS HERE')),
          ),
        ),
      ),
    );
  }
}
