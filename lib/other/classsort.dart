
import 'package:flutter/material.dart';

///课程分类
///黄云音
///三目运算、拼凑
class ClassSort extends StatefulWidget {
  @override
  _ClassSortState createState() => _ClassSortState();
}

class _ClassSortState extends State<ClassSort> {


  List<Map> imgList = [
    {
      "url":
      "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1723152643,2724026866&fm=26&gp=0.jpg",
    },
    {
      "url":
      "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3770064398,4110132465&fm=26&gp=0.jpg",
    },
    {
      "url":
      "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=231252774,4074170430&fm=26&gp=0.jpg",
    }
  ];

  List imageList = [
    {
      'isClick':false,
      "url": "https://ns-strategy.cdn.bcebos.com/ns-strategy/upload/fc_big_pic/part-00320-313.jpg",
      'text01':'创业',
    },
    {
      'isClick':true,
      "url": "https://ns-strategy.cdn.bcebos.com/ns-strategy/upload/fc_big_pic/part-00064-2983.jpg",
      'text01':'融资',
    },
    {
      'isClick':true,
      "url": "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3382834812,275681356&fm=26&gp=0.jpg",
      'text01':'商业计划书',
    },
    {
      'isClick':true,
      "url":"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1600234504176&di=389288368f43a548c31f22f78f15c1d5&imgtype=0&src=http%3A%2F%2Fimg.yzt-tools.com%2F20190510%2F161f87b7b2e11b63118ba46ee98b52ae.png%3Fx-oss-process%3Dimage%2Fresize%2Cw_600%2Fauto-orient%2C1%2Fquality%2Cq_90%2Fformat%2Cjpg",
      'text01':'财税',
    },
    {
      'isClick':true,
      "url":"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1600234556093&di=c7b6de7bed6d3b808215bde2fb831428&imgtype=0&src=http%3A%2F%2Fimg.mp.itc.cn%2Fupload%2F20161227%2Fb384523d1154406c9af0d082872b3688_th.jpeg",
      'text01':'法务',
    },
    {
      'isClick':true,
      "url":"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1600234818139&di=5f8e48bffe20b66db904f2e5a1126444&imgtype=0&src=http%3A%2F%2Fh.hiphotos.baidu.com%2Fbaike%2Fpic%2Fitem%2F0ff41bd5ad6eddc40e1bf7d63bdbb6fd5266331a.jpg",
      'text01':'公司经营',
    },
    {
      'isClick':true,
      "url":"https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3652545010,1802597970&fm=26&gp=0.jpg",
      'text01':'股份期权',
    },{
      'isClick':true,
      "url":"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1600234621052&di=3a6765a76ae989c49bac75ae4012a88a&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20180925%2F21cb6c21db004b2f981cb6aab4f4c42f.jpeg",
      'text01':'财富积累',
    },
    {
      'isClick':true,
      "url":"https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3732412557,1839313964&fm=26&gp=0.jpg",
      'text01':'超凡技能',
    },
    {
      'isClick':true,
      "url":"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1600234671947&di=3fdef13e43446042c1a64e9299673c39&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20190102%2F8ec628eff99b46149a287e5859529704.jpeg",
      'text01':'个人提升',
    },
    {
      'isClick':true,
      "url":"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1600234691572&di=6d6029abc49574acdd059f0667675d50&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20170907%2F0fd162378e364de4bb005854491d810a.jpeg",
      'text01':'商业思维',
    },
    {
      'isClick':true,
      "url":"https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1256053504,941084490&fm=15&gp=0.jpg",
      'text01':'社交沟通',
    },




  ];
  int choose = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          '课程分类',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onTap: (){
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          Icon(
            Icons.search,
            color: Colors.black,
            size: 30,
          ),
          SizedBox(width: 10,)
        ],
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Row(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width/3,
              height: MediaQuery.of(context).size.height,
              color: Colors.blue,
//              child: ListView(
//                children: imageList.map((e) => ).toList(),
//              ),

              child: ListView.builder(
                  itemCount: imageList.length,
                  itemBuilder: (context,index){
                    return GestureDetector(
                      child: Container(
                          padding: EdgeInsets.only(bottom: 1,top: 1),
                          color: !imageList[index]['isClick']
                              ?Colors.blue
                              :Colors.grey[200],
                          height: MediaQuery.of(context).size.height/11,
                          child: Center(child: Text(imageList[index]["text01"],style: TextStyle(
                              fontSize: 16
                          ),))),
                      onTap: (){
                        imageList.forEach((element) {
                          element['isClick'] = true;
                        });
                        setState(() {
                          imageList[index]['isClick']=!imageList[index]['isClick'];
                          choose = index;
                          print(choose);
                        });
                      },
                    );
                  })
            ),
            Container(
              width: MediaQuery.of(context).size.width*2/3,
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
//                    aligment:Aligment.centerlife,
                      child: Text(
                          imageList[choose]["text01"]
                      )),
                  Container(
                    height: MediaQuery.of(context).size.height-103,
                     child: ListView.builder(
                      itemCount: imgList.length,
                       itemBuilder: (context,index){
                        return Container(
                          margin:EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          decoration: BoxDecoration(
                            color:Colors.grey[200],
                            borderRadius:
                            BorderRadius.circular(20.0),
                          ),
                          height: MediaQuery.of(context).size.width/2,
                          width: MediaQuery.of(context).size.width,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: new Image.network(imageList[choose]["url"],fit: BoxFit.fill,)
                          ),
                        );
                       },
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
