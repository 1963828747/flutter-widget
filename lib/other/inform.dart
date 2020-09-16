import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///信息详情页面
///huangyunyin
///评论添加，textfeild信息获取
class Inform extends StatefulWidget {
  @override
  _InformState createState() => _InformState();
}

class _InformState extends State<Inform> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left,color: Colors.black,)),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height-128,
              child: Center(
                child: ListView(
                  children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child:Text('315之后，电子烟未燃断，',style: TextStyle(fontSize: 20),),
                  ),
                    SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text('今天 08: 37',style: TextStyle(color: Colors.grey,fontSize: 12),),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: FadeInImage.assetNetwork(
                          placeholder: 'images/avatar.png',
                          image: 'http://pic1.win4000.com/wallpaper/8/561dc74235157.jpg',
                          width: MediaQuery.of(context).size.width,

                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                         child: Text('       '+'当电池板登上315晚会后，伸'
                             '出北京的电子烟线下电电阻，乙某觉得松'
                             '了一口气，你某上升网描述3月15日当天上午，电子'
                             '途中就已经有消息称可能会被删，一五点名业内几个店'
                             '主最担忧的报道方向集中在电子烟直至问题，在他们看来，这'
                             '甚至可能让整个行业从此毁掉，但当315晚会报导，只是拒'
                             '交在电子烟，同样对于人体有害，消费者不要为了赶时髦掉'
                             '入令一个消费误区，黎某所在的电子'
                             '烟微信群里纷纷拍手，相信称过关了',style: TextStyle(fontSize: 14),),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 1,
              color: Colors.black12,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
              child: Row(
                children: [
                  Container(
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 10,left: 20),
                        hintText: '我要参与',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                      ),
                    ),
                  ),
                  SizedBox(width: 50,),
                  Icon(Icons.message),
                  Spacer(),
                  Icon(Icons.assignment_returned),
                  Spacer(),
                  Icon(Icons.open_in_new),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
