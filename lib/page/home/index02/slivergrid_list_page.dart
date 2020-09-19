import 'package:flutter/material.dart';
class SliverGridListPage extends StatefulWidget {
  @override
  _SliverGridListPageState createState() => _SliverGridListPageState();
}

class _SliverGridListPageState extends State<SliverGridListPage> {
  List<String> _list = new List();
  List<Color> myColors = new List();

  @override
  void initState() {
    _list.add("班级");
    _list.add("部门");
    _list.add("部门");
    myColors.add(Colors.amberAccent);
    myColors.add(Colors.cyan);
    myColors.add(Colors.lightBlue);
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: new CustomScrollView(physics: ScrollPhysics(), slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
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
                    child: new Image.network('http://pic1.win4000.com/wallpaper/8/561dc74235157.jpg',fit: BoxFit.fill,)

                ),
              ),
              centerTitle: true,
              title: Text('SliverAppBar'),
            ),
          ),
          const SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: const FlexibleSpaceBar(
              title: const Text('SliverGrid'),
            ),
          ),
          new SliverGrid(
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                //SliverGridDelegateWithFixedCrossAxisCount   以数量定行
               // SliverGridDelegateWithMaxCrossAxisExtent    以宽度定行
                     crossAxisCount: 3,//数量
                    crossAxisSpacing: 10,//左右边距
                    mainAxisSpacing: 20,//上下边距
                    childAspectRatio: 3/4//宽高比
            ),
            delegate: new SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return new Container(
                  //设置child居中显示
                  alignment: Alignment.center,
                  child: Text(
                    _list[index],
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        //去掉黄色下划线
                        decoration: TextDecoration.none),
                  ),
                  decoration: new BoxDecoration(
                    color: myColors[index],
                  ),
                );
              },
              childCount: _list.length,
            ),
          ),
          const SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: const FlexibleSpaceBar(
              title: const Text('SliverList'),
            ),
          ),
          new SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: new SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return new Container(
                  alignment: Alignment.center,
                  color: Colors.primaries[(index % 10)],
                  child: new Text('$index'),
                );
              },
            ),
          ),
        ]),
      ),
    );
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('SliverGrid、SliverList'),
//        centerTitle: true,
//        leading: GestureDetector(
//            onTap: () {
//              Navigator.pop(context);
//            },
//            child: Icon(Icons.keyboard_arrow_left)),
//      ),
//      body: CustomScrollView(
//          slivers:[
//            SliverList(
//                delegate: SliverChildBuilderDelegate(
//                        (BuildContext context, int index) {
//                      return Container(
//                        height: 100,
//                        color: Colors.primaries[(index % 10)],
//                      );
//                    },
//                    childCount: 5
//                )
//            ),
//            SliverGrid(
//                delegate: SliverChildBuilderDelegate(
//                        (BuildContext context, int index) {
//                      return Container(
//                        color: Colors.primaries[(index % 18)],
//                      );
//                    },
//                    childCount: 21
//                ),
//                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                    crossAxisCount: 3,//数量
//                    crossAxisSpacing: 10,//左右边距
//                    mainAxisSpacing: 20,//上下边距
//                    childAspectRatio: 1.5//宽高比
//                )
//            )
//          ]
//      ),
//    );
  }
}
