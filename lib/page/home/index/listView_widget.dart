import 'package:flutter/material.dart';

class ListViewWidget extends StatefulWidget {
  ListViewWidget({Key key}) : super(key: key);

  @override
  _ListViewWidgetState createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  List<Widget> _list = new List();


  @override
  Widget build(BuildContext context) {
    return Container(
//      height: MediaQuery.of(context).size.height,
      child: Scaffold(
          appBar: AppBar(
            title: Text('ListView列表'),
            centerTitle: true,
            leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.keyboard_arrow_left)),
          ),
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('ListView普通列表'),
                Container(
                  height: 100,
                  child: ListView(
//              ListView({
//                Key key,
//                Axis scrollDirection = Axis.vertical,//滑动的方向,默认为 Axis.vertical，垂直方向可滑动
//                bool reverse = false,//控制 ListView 里列表项的排列顺序，是按照插入顺序排，还是按照插入顺序相反的方向排序
//                ScrollController controller,//可以控制 ListView 滚动的位置
//                bool primary,//是否是与父级关联的主滚动视图
//                ScrollPhysics physics,//设置 ListView 的滚动效果
//                bool shrinkWrap = false,//是否根据列表项的总长度来设置 ListView的长度
//                EdgeInsetsGeometry padding,//ListView 的内边距
//                this.itemExtent,//itemExtent 指的是列表项的大小
//                bool addAutomaticKeepAlives = true,//是否用 AutomaticKeepAlive 来包列表项,默认为 true
//                bool addRepaintBoundaries = true,// 是否用 RepaintBoundary 来包列表项，默认为 true
//                bool addSemanticIndexes = true,//是否用 IndexedSemantics 来包列表项,默认为 true,使用 IndexedSemantics 是为了正确的用于辅助模式
//                double cacheExtent,//ListView 可见部分的前面和后面的区域可以用来缓存列表项,这部分区域的 item 即使不可见，也会加载出来，所以当滑动到这个区域的时候，缓存的区域就会变的可见，cacheExtent 就表示缓存区域在可见部分的前面和后面有多少像素
//                List<Widget> children = const <Widget>[],//ListView 的列表项
//                int semanticChildCount,//提供语义信息的列表项的数量,默认为 ListView 的 item 的数量
//                DragStartBehavior dragStartBehavior = DragStartBehavior.start,//同SingleChildScrollView中解释
//              }) : childrenDelegate = SliverChildListDelegate(
//              children,
//              addAutomaticKeepAlives: addAutomaticKeepAlives,
//              addRepaintBoundaries: addRepaintBoundaries,
//              addSemanticIndexes: addSemanticIndexes,
//            ),
//                super(
//                ...
//                );
                    reverse: true,
                    //控制 ListView 里列表项的排列顺序，是按照插入顺序排，还是按照插入顺序相反的方向排序
                    shrinkWrap: true,
                    //是否根据列表项的总长度来设置 ListView的长度
                    padding: EdgeInsets.only(left: 16, right: 16),
                    //ListView 的内边距
                    scrollDirection: Axis.horizontal,
                    addAutomaticKeepAlives: false,
                    children: <Widget>[
                      Center(child: Text('1')),
                      Center(child: Text('2')),
                      Center(child: Text('3')),
                    ],
                  ),
                ),
                Text('ListView.builder用于建立重复组件'),
                Container(
                  height: 100,
                  child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Center(child: Text('$index'));
                      }),
                ),
                Text('ListView.separated夹杂其他组件+去除水波'),
                Container(
                  height: 100,
                  child: ListView.separated(
                      physics: BouncingScrollPhysics(), //去除水波
                      itemBuilder: (context, index) {
                        return Center(child: Text('$index'));
                      },
                      separatorBuilder: (context, index) {
                        return Divider(color: Colors.blue); //例如一条分割线,不包括最下面一列
                      },
                      itemCount: 3),
                ),
                Text('ListView.custom自定义列表'),
                Expanded(
                  child: Container(
                      child: ListView.custom(
//                  scrollDirection: Direction.vertical,
                    shrinkWrap: true,
                    primary: true,
                    childrenDelegate: SliverChildListDelegate(_getWidget()),
                  )),
                ),
              ],
            ),
          )),
    );
  }

  _getWidget() {
    List<Widget> widgets = [];
    for (var i = 0; i < 100; i++) {
      widgets.add(
        Column(
          children: <Widget>[
            ListTile(
              title: Center(child: Text("item $i")),
            ),
            Image.asset('assets/images/aa.jpg'),
            Divider(color: Colors.blue),
          ],
        ),
      );
    }
    return widgets;
  }
}
