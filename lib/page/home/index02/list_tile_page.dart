import 'package:flutter/material.dart';
class ListTilePage extends StatefulWidget {
  @override
  _ListTilePageState createState() => _ListTilePageState();
}

class _ListTilePageState extends State<ListTilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTile'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('伞兵一号卢本位'),
            subtitle: Text('准备就绪'),
            leading: Icon(Icons.accessibility),
            trailing: Icon(Icons.add),
          ),
          ListTile(
            title: Text('伞兵一号卢本位'),
            subtitle: Text('准备就绪'),
            leading: Icon(Icons.accessibility),
            trailing: Icon(Icons.add),
          ),
          ListTile(
            title: Text('伞兵一号卢本位'),
            subtitle: Text('准备就绪'),
            leading: Icon(Icons.accessibility),
            trailing: Icon(Icons.add),
          ),
          ListTile(
            title: Text('伞兵一号卢本位'),
            subtitle: Text('准备就绪'),
            leading: Icon(Icons.accessibility),
            trailing: Icon(Icons.add),
          ),
          ListTile(
            title: Text('伞兵一号卢本位'),
            subtitle: Text('准备就绪'),
            leading: Icon(Icons.accessibility),
            trailing: Icon(Icons.add),
          ),
          ListTile(
            title: Text('伞兵一号卢本位'),
            subtitle: Text('准备就绪'),
            leading: Icon(Icons.accessibility),
            trailing: Icon(Icons.add),
          ),
          ListTile(
            title: Text('伞兵一号卢本位'),
            subtitle: Text('准备就绪'),
            leading: Icon(Icons.accessibility),
            trailing: Icon(Icons.add),
          ),ListTile(
            title: Text('伞兵一号卢本位'),
            subtitle: Text('准备就绪'),
            leading: Icon(Icons.accessibility),
            trailing: Icon(Icons.add),
          ),ListTile(
            title: Text('伞兵一号卢本位'),
            subtitle: Text('准备就绪'),
            leading: Icon(Icons.accessibility),
            trailing: Icon(Icons.add),
          ),ListTile(
            title: Text('伞兵一号卢本位'),
            subtitle: Text('准备就绪'),
            leading: Icon(Icons.accessibility),
            trailing: Icon(Icons.add),
          ),




        ],
      ),
    );
  }
}
