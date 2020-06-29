import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollViewPage extends StatefulWidget {
  @override
  _ScrollViewPageState createState() => _ScrollViewPageState();
}

class _ScrollViewPageState extends State<ScrollViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScrollViewPage'),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

                  Text('ListView'),
                  Text(
                    '一个可滚动的列表 ',
                    maxLines: 1,
                    style:
                        TextStyle(fontSize: 14, decoration: TextDecoration.none),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text('GridView'),
                  Text('一个可滚动的二维空间数组',
                    maxLines: 1,
                    style:
                    TextStyle(fontSize: 14, decoration: TextDecoration.none),
                    overflow: TextOverflow.ellipsis,),

                  Text('SingleChildScrollView'),
                  Text('有一个子widget的可滚动的widget，子内容超过父容器时可以滚动。',
                    maxLines: 1,
                    style:
                    TextStyle(fontSize: 14, decoration: TextDecoration.none),
                    overflow: TextOverflow.ellipsis,),

                  Text('Scrollable'),
                  Text('实现了可滚动widget的交互模型，但不包含UI显示相关的逻辑',
                    maxLines: 2,
                    style:
                    TextStyle(fontSize: 14, decoration: TextDecoration.none),
                    overflow: TextOverflow.ellipsis,),

                  Text('Scrollbar'),
                  Text('一个Material Design 滚动条，表示当前滚动到了什么位置',
                    maxLines: 2,
                    style:
                    TextStyle(fontSize: 14, decoration: TextDecoration.none),
                    overflow: TextOverflow.ellipsis,),

                  Text('CustomScrollView'),
                  Text('一个使用slivers创建自定义的滚动效果的ScrollView',
                    maxLines: 2,
                    style:
                    TextStyle(fontSize: 14, decoration: TextDecoration.none),
                    overflow: TextOverflow.ellipsis,),

                  Text('NotificationListener'),
                  Text('一个用来监听树上冒泡通知的widget。',
                    maxLines: 2,
                    style:
                    TextStyle(fontSize: 14, decoration: TextDecoration.none),
                    overflow: TextOverflow.ellipsis,),

                  Text('ScrollConfiguration'),
                  Text('控制可滚动组件在子树中的表现行为。',
                    maxLines: 2,
                    style:
                    TextStyle(fontSize: 14, decoration: TextDecoration.none),
                    overflow: TextOverflow.ellipsis,),

                  Text('RefreshIndicator'),
                  Text('Material Design下拉刷新指示器，包装一个可滚动widget。',
                    maxLines: 2,
                    style:
                    TextStyle(fontSize: 14, decoration: TextDecoration.none),
                    overflow: TextOverflow.ellipsis,),
              Container(
                height: 100,
                child: new CustomScrollView(
                  shrinkWrap: true,
                  // 内容
                  slivers: <Widget>[
                    new SliverPadding(
                      padding: const EdgeInsets.all(20.0),
                      sliver: new SliverList(
                        delegate: new SliverChildListDelegate(
                          <Widget>[
                            const Text('A'),
                            const Text('B'),
                            const Text('C'),
                            const Text('D'),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                child: Scrollbar(
                  child: new CustomScrollView(
                    shrinkWrap: true,
                    // 内容
                    slivers: <Widget>[
                      new SliverPadding(
                        padding: const EdgeInsets.all(20.0),
                        sliver: new SliverList(
                          delegate: new SliverChildListDelegate(
                            <Widget>[
                              const Text('A'),
                              const Text('B'),
                              const Text('C'),
                              const Text('D'),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
