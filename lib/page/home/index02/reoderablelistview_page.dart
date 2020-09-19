import 'package:flutter/material.dart';
class ReoderableListviewPage extends StatefulWidget {
  @override
  _ReoderableListviewPageState createState() => _ReoderableListviewPageState();
}

class _ReoderableListviewPageState extends State<ReoderableListviewPage> {
  List<int> list = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 100; i++) {
      list.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text('拖拽listview'),
          centerTitle: true,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.keyboard_arrow_left)),
        ),
        body: SafeArea(
          child: ReorderableListView(
              children: list.map(f).toList(),
              header: Text('header!'),
              onReorder: (oldIndex, newIndex) {
                setState(() {
                  _updateMyItems(oldIndex, newIndex);
                });
              }),
        ),
      )
    );
  }

  void _updateMyItems(int oldIndex, int newIndex) {
    var tmp = list[oldIndex];
    list[oldIndex] = list[newIndex];
    list[newIndex] = tmp;
  }

  Widget f(int i) {
    return ListTile(
      key: ValueKey("$i"),
      title: Text('Item $i'),
    );
  }
}