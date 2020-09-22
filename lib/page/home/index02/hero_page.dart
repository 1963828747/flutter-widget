import 'package:flutter/material.dart';
import 'package:widget/page/home/index02/hero2_page.dart';

class HeroPage extends StatefulWidget {
  @override
  _HeroPageState createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Hero2Page()));
        },
        child: SingleChildScrollView(
          child: Hero(
            tag: 'dash',
            child: UnconstrainedBox(
              child: ClipOval(
                child: Image.network(
                  'http://attach.52pojie.cn/forum/201604/01/184715erqfhcfr99wcqrwh.jpg',
                  width: 50,
                  height: 50, fit: BoxFit.cover,
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




