import 'package:flutter/material.dart';

class AspedtratioPage extends StatefulWidget {
  @override
  _AspedtratioPageState createState() => _AspedtratioPageState();
}

class _AspedtratioPageState extends State<AspedtratioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aspedtratio子组件长宽比'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body: Center(
        child: Expanded(
            child: Align(alignment: Alignment.bottomCenter,
              child: AspectRatio(
          aspectRatio: 3 / 1,
          child: Card(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
                alignment: Alignment.center,
                  color: Colors.blue,
                height: 100,
                width: 100,
                  child: Text('Aspedtratio')),
          ),
        ),
            )),
      ),
    );
  }
}
