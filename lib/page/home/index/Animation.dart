import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  AnimationPage({Key key}) : super(key: key);

  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation oneAnimation;
  AnimationController oneController;
  Animation twoAnimation;
  AnimationController twoController;
  Animation thereAnimation;
  AnimationController thereController;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: new Duration(seconds: 1));
    _controller.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        print('动画完成');
        _controller.reset();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
    _controller.forward();

    oneController =
        AnimationController(vsync: this, duration: new Duration(seconds: 4));
    oneAnimation = Tween(begin: Offset(0.0, 0), end: Offset(0.0, 0.2))
        .animate(oneController)
          ..addListener(() {
            setState(() {});
          });
    oneController.repeat(reverse: true);

    twoController =
        AnimationController(vsync: this, duration: new Duration(seconds: 20));
    twoAnimation = Tween(begin: Offset(-1.0, 0.0), end: Offset(1, 0.0))
        .animate(twoController)
          ..addListener(() {
            setState(() {});
          });
    twoController.repeat(reverse: false);

    thereController =
        AnimationController(vsync: this, duration: new Duration(seconds: 10));
    thereAnimation = Tween(begin: Offset(3.0, 0.0), end: Offset(-4, 0.0))
        .animate(thereController)
          ..addListener(() {
            setState(() {});
          });
    thereController.repeat(reverse: false);
  }

  bool isClick01 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('动画大全'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Positioned(
              child: isClick01 == false
                  ? Image.asset(
                      'assets/images/bg_down.png',
                    )
                  : Image.asset(
                      'assets/images/bg_down_night.png',
                    ),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height / 2,
                child: isClick01 == false
                    ? Image.asset(
                  'assets/images/bg_up_f.png',
                        width: MediaQuery.of(context).size.width,
                      )
                    : Image.asset(
                  'assets/images/bg_up_night.png',
                        width: MediaQuery.of(context).size.width,
                      )),
            Positioned(
              top: 10,
              right: 200,
              child: SlideTransition(
                position: twoAnimation,
                child: Image.asset(
                  'assets/images/cloud_1.png',
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ),
            Positioned(
              top: 200,
              right: 100,
              child: SlideTransition(
                position: thereAnimation,
                child: Image.asset(
                  'assets/images/cloud_2.png',
                  width: MediaQuery.of(context).size.width / 7,
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 100,
              child: SlideTransition(
                position: twoAnimation,
                child: Image.asset(
                  'assets/images/cloud_3.png',
                  width: MediaQuery.of(context).size.width / 3,
                ),
              ),
            ),
            Positioned(
                top: MediaQuery.of(context).size.width * 3 / 4 + 30,
                right: MediaQuery.of(context).size.width / 100,
                child: isClick01 == false
                    ? Image.asset(
                  'assets/images/windmill.png',
                        width: MediaQuery.of(context).size.width / 7,
                      )
                    : Image.asset(
                  'assets/images/windmill_night.png',
                        width: MediaQuery.of(context).size.width / 7,
                      )),
            Positioned(
              top: MediaQuery.of(context).size.width * 3 / 4 + 10,
              right: 5,
              child: RotationTransition(
                turns: _controller,
                alignment: Alignment.center,
                child: Container(
                  child: isClick01 == false
                      ? Image.asset(
                    'assets/images/fengshan.png',
                          width: MediaQuery.of(context).size.width / 7,
                        )
                      : Image.asset(
                    'assets/images/fengshan_night.png',
                          width: MediaQuery.of(context).size.width / 7,
                        ),
                ),
              ),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height / 4,
                left: 10,
                child: isClick01 == false
                    ? Container()
                    : Image.asset(
                  'assets/images/bg_moon.png',
                        width: 80,
                      )),
            Positioned(
                top: MediaQuery.of(context).size.height / 2,
                left: 50,
                child: SlideTransition(
                  position: oneAnimation,
                  child: Column(children: <Widget>[
                    Image.asset(
                      'assets/images/wheat_3.png',
                      width: MediaQuery.of(context).size.width / 7,
                    )
                  ]),
                )),
            Positioned(
                top: MediaQuery.of(context).size.height * 2 / 3,
                left: MediaQuery.of(context).size.width / 3,
                child: SlideTransition(
                  position: oneAnimation,
                  child: Column(children: <Widget>[
                    Image.asset(
                      'assets/images/wheat_3.png',
                      width: MediaQuery.of(context).size.width / 7,
                    )
                  ]),
                )),
            Positioned(
                top: MediaQuery.of(context).size.height / 2,
                left: MediaQuery.of(context).size.width / 2,
                child: SlideTransition(
                  position: oneAnimation,
                  child: Column(children: <Widget>[
                    Image.asset(
                      'assets/images/wheat_3.png',
                      width: MediaQuery.of(context).size.width / 7,
                    )
                  ]),
                )),
            Positioned(
                top: MediaQuery.of(context).size.height * 2 / 3,
                left: MediaQuery.of(context).size.width * 3 / 5,
                child: SlideTransition(
                  position: oneAnimation,
                  child: Column(children: <Widget>[
                    Image.asset(
                      'assets/images/wheat_3.png',
                      width: MediaQuery.of(context).size.width / 7,
                    )
                  ]),
                )),
            Positioned(
              bottom: MediaQuery.of(context).size.height / 16,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: <Widget>[
                    Expanded(child: Container()),
                    Container(
                      height: 40,
                      color: Colors.yellow,
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            if (isClick01 == false) {
                              isClick01 = true;
                            } else {
                              isClick01 = false;
                            }
                          });
                        },
                        child: Text(
                          '模式切换',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
