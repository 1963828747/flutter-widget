import 'package:flutter/material.dart';
class SliverGridListPage extends StatefulWidget {
  @override
  _SliverGridListPageState createState() => _SliverGridListPageState();
}

class _SliverGridListPageState extends State<SliverGridListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliverGrid、SliverList'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body: Column(
        children: [
          SliverGrid(
              delegate: SliverChildBuilderDelegate(
              (BuildContext context,int index){
                return Container(
                  height: 700,
                  color: Colors.amber,
                );
              }
          ), gridDelegate: null),
        ],
      ),
    );
  }
}
