import 'package:flutter/material.dart';

class WidgetTreePage extends StatefulWidget {
  @override
  _WidgetTreePageState createState() => _WidgetTreePageState();
}

class _WidgetTreePageState extends State<WidgetTreePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('WidgetTreePage'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
    );
  }
}
