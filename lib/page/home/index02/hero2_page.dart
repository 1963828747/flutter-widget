import 'package:flutter/material.dart';

class Hero2Page extends StatefulWidget {
  @override
  _Hero2PageState createState() => _Hero2PageState();
}

class _Hero2PageState extends State<Hero2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero2'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Hero(
            tag: 'dash',
            child: UnconstrainedBox(
              child: ClipOval(
                child: Image.network(
                  'http://attach.52pojie.cn/forum/201604/01/184715erqfhcfr99wcqrwh.jpg',
                  width: 200,
                  height: 200, fit: BoxFit.cover,
//                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
