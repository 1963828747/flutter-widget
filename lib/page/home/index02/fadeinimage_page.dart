import 'package:flutter/material.dart';

class FadeInImagePage extends StatefulWidget {
  @override
  _FadeInImagePageState createState() => _FadeInImagePageState();
}

class _FadeInImagePageState extends State<FadeInImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: FadeInImage.assetNetwork(
              placeholder: 'assets/images/f1.png',
              image: 'http://pic1.win4000.com/wallpaper/8/561dc74235157.jpg')),
    );
  }
}
