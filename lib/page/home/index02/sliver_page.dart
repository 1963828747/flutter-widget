import 'package:flutter/material.dart';
class SliverPage extends StatefulWidget {
  @override
  _SliverPageState createState() => _SliverPageState();
}

class _SliverPageState extends State<SliverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.redAccent,
              ),
            ),
            title: Text('SliverAppBar'),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 700,
              color: Colors.amber,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 700,
              color: Colors.yellow,
            ),
          ),

        ],
      ),
    );
  }
}
