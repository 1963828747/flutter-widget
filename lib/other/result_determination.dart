import 'package:flutter/material.dart';

class ResultDetermination extends StatefulWidget {
  @override
  _ResultDeterminationState createState() => _ResultDeterminationState();
}

class _ResultDeterminationState extends State<ResultDetermination> {
  List _clickList = [
    {
      'isClick01':false,
      'label':'按话题所指事件的官方意见',
    },
    {
      'isClick02':false,
      'label':'比较正反两方人数，人多者胜',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('结果判定',
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
          Column(
              children:_clickList.map((e) {
                return GestureDetector(
                  onTap: (){
                    _clickList.forEach((element) {
                      element['isClick'] = true;
                    });
                    setState(() {
                      e['isClick']=!e['isClick'];

                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    height: 48,
                    color: Colors.white,
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
                          child: !e['isClick']
                              ?Icon(Icons.radio_button_checked,size: 18,color: Colors.blue,)
                              :Icon(Icons.radio_button_unchecked,size: 18,color: Colors.grey,),
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

