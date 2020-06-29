import 'dart:math';
import 'package:flutter/material.dart';
import 'package:widget/page/home/index/shakeview.dart';
class JitterPage extends StatefulWidget {
  @override
  _JitterPageState createState() => _JitterPageState();
}

class _JitterPageState extends State<JitterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('抖动'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body: Center(
        child:Container(
          child: ShakeView(
            child: Image.network(
              'https://img02.mockplus.cn/idoc/xd/2020-06-17/4bf523b2-ae85-4c74-86d1-94995ad17393.png',
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
        )
      ),
    );
  }

//  ShakeView({Image child}) {
//
//
//  }
}

//class ShakeView extends StatefulWidget {
//  final Widget child;
//
//  ShakeView({
//    this.child,
//  });
//
//  _ShakeViewState createState() => _ShakeViewState();
//}
//
//class _ShakeViewState extends State<ShakeView>
//    with SingleTickerProviderStateMixin {
//  Animation<double> animation;
//  AnimationController controller;
//
//  initState() {
//    super.initState();
//
//    controller = AnimationController(
//        duration: const Duration(milliseconds: 500), vsync: this);
//    animation = TweenSequence<double>([
//      //使用TweenSequence进行多组补间动画
//      TweenSequenceItem<double>(tween: Tween(begin: 0, end: 10), weight: 1),
//      TweenSequenceItem<double>(tween: Tween(begin: 10, end: 0), weight: 1),
//      TweenSequenceItem<double>(tween: Tween(begin: 0, end: -10), weight: 1),
//      TweenSequenceItem<double>(tween: Tween(begin: -10, end: 0), weight: 1),
//    ]).animate(controller);
//    controller.forward();
//  }
//
//  Widget build(BuildContext context) {
//    return AnimateWidget(animation: animation, child: widget.child);
//  }
//
//  dispose() {
//    controller.dispose();
//    super.dispose();
//  }
//}
//
//class AnimateWidget extends AnimatedWidget {
//  final Widget child;
//
//  AnimateWidget({Animation<double> animation, this.child})
//      : super(listenable: animation);
//
//  @override
//  Widget build(BuildContext context) {
//    final Animation<double> animation = listenable;
//    var result = Transform(
//      transform: Matrix4.rotationZ(animation.value * pi / 180),
//      alignment: Alignment.bottomCenter,
//      child: new ClipRRect(
//        borderRadius: BorderRadius.all(Radius.circular(5)),
//        child: this.child,
//      ),
//    );
//    return result;
//  }
//}
