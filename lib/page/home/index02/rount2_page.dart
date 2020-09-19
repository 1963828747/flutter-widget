import 'package:flutter/material.dart';
class Rount2Page extends StatefulWidget {
  @override
  _Rount2PageState createState() => _Rount2PageState();
}

class _Rount2PageState extends State<Rount2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/screen3');
            },
            child: Text(
              'screen2',
              style: TextStyle(fontSize: 30),
            ),
          ),

        ),
      ),
    );
  }
}
