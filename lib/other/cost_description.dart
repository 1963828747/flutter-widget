import 'package:flutter/material.dart';

class CostDescription extends StatefulWidget {
  @override
  _CostDescriptionState createState() => _CostDescriptionState();
}

class _CostDescriptionState extends State<CostDescription> {
  List _clickList = [
    {
      'isClick':false,
      'label':'胜者免费',
    },
    {
      'isClick':false,
      'label':'负者自费',
    },
    {
      'isClick':false,
      'label':'差额由发起人补足',
    },
    {
      'isClick':false,
      'label':'余额用于网值公益',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('费用说明',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            )),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            alignment: Alignment.centerLeft,
            height: 17,
            child: Text('复选项',style: TextStyle(
              fontSize: 10,
              color: Color.fromRGBO(140,140,140,1),
            )),),
          Column(
            children:_clickList.map((e) {
              return GestureDetector(
                onTap: (){
                  setState(() {
                    e['isClick']=!e['isClick'];
                  });
                },
                child: Container(
                  color: Colors.white,
                  height: 48,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Text(e['label'],
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(89,89,89,1),
                            )),
                      ),
                      Spacer(),
                      Container(
                        child:!e['isClick']
                            ?Icon(Icons.check_box,size: 14,color: Colors.blue,)
                            :Icon(Icons.check_circle_outline,color: Colors.white,),
                      ),
                    ],
                  ),
                ),
              );
            }).toList()
          ),
        ],
      ),
    );
  }
}
