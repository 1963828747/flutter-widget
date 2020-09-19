import 'package:flutter/material.dart';
class Rount1Page extends StatefulWidget {
  @override
  _Rount1PageState createState() => _Rount1PageState();
}

class _Rount1PageState extends State<Rount1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/screen2');
            },
            child: Text(
              'screen1',
              style: TextStyle(fontSize: 30),
            ),
          ),

        ),
      ),
    );
  }
}
