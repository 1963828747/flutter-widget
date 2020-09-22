import 'package:flutter/material.dart';

class TooltipPage extends StatefulWidget {
  @override
  _TooltipPageState createState() => _TooltipPageState();
}

class _TooltipPageState extends State<TooltipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tooltip长按提示'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body: Center(
        child: Column(
          children: [
            Tooltip(
              message: '你点击了按钮',
              verticalOffset: 48,
              height: 24,
              child: FlatButton(
                  color: Colors.pinkAccent,
                  onPressed: null, child: Text('123')),
            ),
            IconButton(
              icon: Icon(Icons.home),
              tooltip: 'home',
            ),
          ],
        ),
      ),
    );
  }
}
