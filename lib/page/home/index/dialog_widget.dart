import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class DialogWidget extends StatefulWidget {
  @override
  _DialogWidgetState createState() => _DialogWidgetState();
}

class _DialogWidgetState extends State<DialogWidget> {
  _alertDialog(){
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('提示信息'),
            content: Text('您确定吗'),
            actions: <Widget>[
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                  print('取消');
                },
                child: Text('取消'),),
              GestureDetector(
                onTap: (){
                  print('确定');
                  Navigator.pop(context);
                },

                child: Text('确定'),)
            ],
          );
        });
  }
  _simpleDialog() async{
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text('选择项目'),
            children: <Widget>[
              SimpleDialogOption(
                child: Text('选项1'),
                onPressed: (){print('选项1');},
              ),
              SimpleDialogOption(
                child: Text('选项2'),
                onPressed: (){print('选项2');},
              ),
              SimpleDialogOption(
                child: Text('选项3'),
                onPressed: (){print('选项3');},
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                        print('取消');
                      },
                      child: Text('取消'),),
                    Expanded(child: Container()),
                    GestureDetector(
                      onTap: (){
                        print('确定');
                        Navigator.pop(context);
                      },

                      child: Text('确定'),)
                  ],
                ),
              ),
            ],
          );
        });
  }
  _modelBottomSheet() async {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 150,
            child: Column(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                  color: Colors.deepPurpleAccent,
                  height: 30,
                  child: Text('data1'),
                ),
                Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlueAccent,
                  height: 30,
                  child: Text('data2'),
                ),
                Container(
                  alignment: Alignment.center,
                  color: Colors.redAccent,
                  height: 30,
                  child: Text('data3'),
                ),
                Container(
                  alignment: Alignment.center,
                  color: Colors.greenAccent,
                  height: 30,
                  child: Text('data4'),
                ),
                Container(
                  alignment: Alignment.center,
                  color: Colors.amberAccent,
                  height: 30,
                  child: Text('data5'),
                ),
              ],
            ),
          );
        });
  }
  void showToast(String msg, {int duration, int gravity}) {
    Toast.show(msg, context, duration: duration, gravity: gravity);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('各种弹窗'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _alertDialog();
                },
                child: Text('普通弹窗AlertDialog'),
              ),
              GestureDetector(
                onTap: () {
                  _simpleDialog();
                },
                child: Text('普通弹窗SimpleDialog'),
              ),
              GestureDetector(
                  onTap: () {
                    _modelBottomSheet();
                  },
                  child: Text('底部弹窗modelBottomSheet')),
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return NameGroupDialog();
                      });
                },
                child: Container(child: Text('自定义弹窗')),
              ),
              GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return NameGroupDialog();
                        });
                  },
                  child: Text('第三方插件弹窗showTosat')),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RaisedButton(
                    child: Text('Long Toast'),
                    onPressed: () => showToast("Show Long Toast", duration: Toast.LENGTH_LONG)),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RaisedButton(
                    child: Text('Top Toast'),
                    onPressed: () => showToast("Show Top Toast", gravity: Toast.TOP)),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RaisedButton(
                    child: Text('Center Toast'),
                    onPressed: () => showToast("Show Center Toast", gravity: Toast.CENTER)),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RaisedButton(
                    child: Text('Bottom Toast'),
                    onPressed: () => showToast("Show Bottom Toast", gravity: Toast.BOTTOM)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
///修改名称
class NameGroupDialog extends AlertDialog {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Stack(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.width/2, left: MediaQuery.of(context).size.width/2-134),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
              width: 268,
              height: 166,
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    child: Text('自定义弹窗',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    height: 40,
                    color: Colors.grey[200],
                    margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                    child: TextField(
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          fillColor: Colors.grey,
                          border: InputBorder.none,
                          hintText: '立立顶',
                          hintStyle:
                          TextStyle(fontSize: 14, color: Colors.grey)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },

                    child: Container(
                      width: 236,
                      height: 44,
                      margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 45, 136, 255),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "确定",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "PingFang SC",
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
