import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget/page/home/myhome_page.dart';

import '../home/index/sex.dart';

class Grammar extends StatefulWidget {
  @override
  _GrammarState createState() => _GrammarState();
}

class _GrammarState extends State<Grammar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title: Text('Dart语言'),
          centerTitle: true,
        ),
        body: Center(
          child: ListView(
//          crossAxisAlignment: CrossAxisAlignment.center,
//          mainAxisAlignment: MainAxisAlignment.center,
          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Sex(),
                      ));
                },
                child: Container02(
                  text01: '数据类型',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Sex(),
                      ));
                },
                child: Container02(
                  text01: '加减乘除',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Sex(),
                      ));
                },
                child: Container02(
                  text01: '取余',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Sex(),
                      ));
                },
                child: Container02(
                  text01: 'List和Map数组',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Sex(),
                      ));
                },
                child: Container02(
                  text01: '循环语句',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Sex(),
                      ));
                },
                child: Container02(
                  text01: '三目运算',
                ),
              ),
            ],
          ),
        ),
      );
  }
}


class Container02 extends StatefulWidget {
  final text01;

  const Container02({Key key, this.text01, }) : super(key: key);

  @override
  _Container02State createState() => _Container02State();
}

class _Container02State extends State<Container02> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: 80,
        margin: EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: TextTheme(widget: widget));
  }
}

class TextTheme extends StatelessWidget {
  const TextTheme({
    Key key,
    @required this.widget,
  }) : super(key: key);

  final Container02 widget;

  @override
  Widget build(BuildContext context) {
    return Text(widget.text01,style: TextStyle(
      color:Colors.white,
      fontSize:16,
    ),);
  }
}


