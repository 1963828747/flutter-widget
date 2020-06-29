import 'package:flutter/material.dart';


class ContainerWidget extends StatefulWidget {
  ContainerWidget({Key key}) : super(key: key);

  @override
  _ContainerWidgetState createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar:AppBar(
         title: Text('Container容器'),
         centerTitle: true,
         leading: GestureDetector(
             onTap: (){
               Navigator.pop(context);
             },
             child: Icon(Icons.keyboard_arrow_left)),
       ),
      body: Center(
        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                height: 200,
                width: 200,
                padding: EdgeInsets.only(left:1,right:1,top:1,bottom:1),
                margin: EdgeInsets.only(left:1,right:1,top:1,bottom:1),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius:BorderRadius.circular(20),
                ),
              child: Text('Container',style: TextStyle(
                color:Colors.white,fontSize:16,fontWeight: FontWeight.bold
              ),),
              ),
            ),
//            Radio(
//              value: "aaa",
//              groupValue: groupValue,
//              onChanged: (result) {
//                setState(() {
//                  groupValue = result;
//                });
//              },
//              activeColor: Colors.red,
//              materialTapTargetSize: MaterialTapTargetSize.padded,
//            ),
//            Radio(
//              value: "bbb",
//              groupValue: groupValue,
//              onChanged: (result) {
//                setState(() {
//                  groupValue = result;
//                });
//              },
//              activeColor: Colors.red,
//              materialTapTargetSize: MaterialTapTargetSize.padded,
//            ),
//
//            RadioListTile(
//              value: "ccc",
//              groupValue: groupValue,
//              onChanged: (result) {
//                setState(() {
//                  groupValue = result;
//                });
//              },
//              activeColor: Colors.red,
//              title: Text("标题"),
//              subtitle: Text("副标题副标题副标题副标题副标题副标题副标题副标题副标题"),
//              isThreeLine: false,
//              secondary: Icon(Icons.alarm),
////                selected:true
//              controlAffinity: ListTileControlAffinity.trailing,
//            )
          ],
        ),
      ),
       ),
    );
  }
}