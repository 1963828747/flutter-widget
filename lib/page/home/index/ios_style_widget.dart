import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cuperino_widget.dart';

class IosStyleWidget extends StatefulWidget {
  @override
  _IosStyleWidgetState createState() => _IosStyleWidgetState();
}

class _IosStyleWidgetState extends State<IosStyleWidget> {
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Ios风格组件'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
        shrinkWrap: true,
        children: <Widget>[
          CupertinoActivityIndicator(
            radius: 60,//值越大  圆圈越大
          ),
        RaisedButton(
          onPressed: (){
            showDialog(
                context: context,
                builder: (context) {
                  return NewWidget04();
                });
          },
          child: Text('ios弹窗'),
        ),
          CupertinoButton(
            child: Text("ios按钮",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            disabledColor: Colors.blue,
            color: Colors.green,
            onPressed: (){},
//            onPressed: null,
            pressedOpacity: 0.9,
          ),
      CupertinoSwitch(
          value: _switchValue,

          onChanged: (bool value) {///点击切换开关的状态
            setState(() {
              _switchValue = value;
            });
          }///end onChanged
      ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CupperinoWidget(),
                  ));
            },
          child:Container(
            alignment: Alignment.center,
            child: Text('cuperinowidget'),
          ),
          )
        ],
      ),
    );
  }
}

class NewWidget04 extends StatelessWidget {
  const NewWidget04({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text('我是标题'),
      content:Text('我是content'),
      actions:<Widget>[

        CupertinoDialogAction(
          child: Text('YES'),
          onPressed: (){
            print('yes...');
            Navigator.of(context).pop();
          },
        ),

        CupertinoDialogAction(
          child: Text('NO'),
          onPressed: (){
            print('no...');
            Navigator.of(context).pop();
          },
        ),

      ],
    );
  }
}
