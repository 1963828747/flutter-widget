import 'package:flutter/material.dart';

import 'images_widget.dart';
import '../myhome_page.dart';

class InteractionModel extends StatefulWidget {
  @override
  _InteractionModelState createState() => _InteractionModelState();
}

class _InteractionModelState extends State<InteractionModel> {
  var _dragData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('InteractionModel'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16,right: 16),
        child: Center(
          child: Column(
    //    shrinkWrap: true,
            children: <Widget>[
              SizedBox(height: 20,),
              Row(children: <Widget>[
                _buildDraggable(),
                Spacer(),
                Container(
                  height: 100,
                  width: 100,
                  child: Draggable(
//              axis: Axis.vertical,
                    axis: Axis.horizontal,
                    child: Container(
                      height: 100,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.redAccent, borderRadius: BorderRadius.circular(10)),
                      child: Text('点击'),
                    ),
                    childWhenDragging: Container(
                      height: 100,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey, borderRadius: BorderRadius.circular(10)),
                    ),
                    feedback: Container(
                      height: 100,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Material(
                          type: MaterialType.transparency,
                          child: Text('flutter',style: TextStyle(color: Colors.white,fontSize: 18),)),
                    ),
                  ),
                ),
                Spacer(),
                DragTarget<Color>(
                  builder: (BuildContext context, List<Color> candidateData,
                      List<dynamic> rejectedData) {
                    print('candidateData:$candidateData,rejectedData:$rejectedData');
                    return _dragData == null
                        ? Container(
                      height: 100,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.red)),
                    )
                        : Container(
                      height: 100,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        'flutter',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    );
                  },
                  onWillAccept: (Color color) {
                    print('onWillAccept:$color');
                    return true;
                  },
                  onAccept: (Color color) {
                    setState(() {
                      _dragData = color;
                    });
                    print('onAccept:$color');
                  },
                  onLeave: (_){

                  },
                ),
              ],),
              SizedBox(
                height: 20,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
 
}

_buildDraggable() {
  return LongPressDraggable(
    data: Color(0x000000FF),
    child: Container(
      height: 100,
      width: 100,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(10)),
      child: Text(
        '长按',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    ),
    feedback: Container(
      height: 100,
      width: 100,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(10)),
      child: DefaultTextStyle.merge(
        style: TextStyle(color: Colors.white, fontSize: 18),
        child: Material(
          type: MaterialType.transparency,
          child: Text(
            'flutter',
          ),
        ),
      ),
    ),
  );
}