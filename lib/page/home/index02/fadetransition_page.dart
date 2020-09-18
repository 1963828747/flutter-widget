import 'package:flutter/material.dart';

class FadeTransitionPage extends StatefulWidget {
  final Widget child;

  const FadeTransitionPage({Key key, this.child}) : super(key: key);
  @override
  _FadeTransitionPageState createState() => _FadeTransitionPageState();
}

class _FadeTransitionPageState extends State<FadeTransitionPage> with SingleTickerProviderStateMixin{

  AnimationController _controller;
  Animation _animation;

  void initState(){
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _animation = Tween(
      begin: 0.0,
      end:1.0,
    ).animate(_controller);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();

    return FadeTransition(
      opacity: _animation,
      child: Scaffold(
        appBar: AppBar(
          title: Text('转场动画'),
          centerTitle: true,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.keyboard_arrow_left)),
        ),
        body: Center(
          child: Container(

          ),
        ),
      ),
    );
  }
}

