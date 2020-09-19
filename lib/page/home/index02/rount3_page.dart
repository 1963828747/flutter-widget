import 'package:flutter/material.dart';
import 'package:widget/page/home/index02/rount4_page.dart';
class Rount3Page extends StatefulWidget {
  @override
  _Rount3PageState createState() => _Rount3PageState();
}

class _Rount3PageState extends State<Rount3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: RaisedButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => Rount4Page()),
                  ModalRoute.withName('/screen1'));

            },
            child: Text(
              'screen3',
              style: TextStyle(fontSize: 30),
            ),
          ),

        ),
      ),
    );
  }
}
