import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget/page/home/index/shakeview.dart';
import 'clippath_widget.dart';

class ConmiunicationWidget extends StatefulWidget {
  @override
  _ConmiunicationWidgetState createState() => _ConmiunicationWidgetState();
}

class _ConmiunicationWidgetState extends State<ConmiunicationWidget> {
  List <String> data = [];

  TextEditingController textC = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('聊天页面'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),

      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: <Widget>[
                      MsgView(index.isEven, '${data[index]}'),
                    ],
                  );
                }),
          ),
          new Container(
            color: Colors.grey[200],
            height: 40,
            padding: EdgeInsets.only(bottom: 5),
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: new TextField(
                  controller: textC,
                  onSubmitted: (String str) {
                    textC.clear();
                    setState(() => data.insert(data.length , str));
                  },
                ),),
                new Icon(Icons.add),
                GestureDetector(
                    onTap: (){
                      if(textC.text==null||textC.text==""){
                        return ;
                      }
                      setState(() => data.insert(data.length , textC.text));
                      textC.clear();
                    },
                    child: new Icon(Icons.send)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class MsgView extends StatelessWidget {
  final bool isSelf;
  final String content;

  MsgView(this.isSelf,
      this.content,);

  @override
  Widget build(BuildContext context) {
    List <Widget> body = [
      new Padding(padding: EdgeInsets.symmetric(horizontal: 5),
        child: new Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: ShakeView(
            child: new CircleAvatar(
              backgroundImage: AssetImage('assets/images/aa.jpg'),
              radius: 18,
            ),
          ),
        ),
      ),
//      new Container(
//        decoration: BoxDecoration(
//          color: Colors.lightBlueAccent,
//          borderRadius: BorderRadius.all(Radius.circular(5)),
//        ),
//        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//        child: Bubble(
//          child: new Text('$content', style: TextStyle(
//            color: Colors.white,
//          ),),
//        ),
//      ),
      Bubble(
        color: Colors.lightBlueAccent,
        child: Text(
          "$content",
          style: TextStyle(color: Colors.white),
        ),
        direction:isSelf
            ?BubbleDirection.left
            :BubbleDirection.right
      ),
      new Spacer(),
    ];
    if (isSelf) {
      body = body.reversed.toList();
    }
    return new Container(
      margin: EdgeInsets.only(top: 5),
      width: MediaQuery
          .of(context)
          .size
          .width,
      child: new Row(children: body),
    );
  }
}
