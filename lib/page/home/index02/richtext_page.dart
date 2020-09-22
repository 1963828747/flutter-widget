
import 'package:flutter/material.dart';

class RichTextPage extends StatefulWidget {
  @override
  _RichTextPageState createState() => _RichTextPageState();
}

class _RichTextPageState extends State<RichTextPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('RichText'),
          centerTitle: true,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.keyboard_arrow_left)),
        ),
        body: Center(
          child: RichText(
              text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              TextSpan(text: 'Its',style: TextStyle(fontWeight: FontWeight.bold,fontSize:18,)),
              TextSpan(text: ' all ',style: TextStyle(fontWeight: FontWeight.bold,fontSize:30,)),
              TextSpan(text: 'Widget',style: TextStyle(fontWeight: FontWeight.bold,fontSize:18,)),
            ]
          )),
        ),
      ),
    );
  }
}
