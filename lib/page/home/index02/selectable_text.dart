import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SelectableTextPage extends StatefulWidget {
  @override
  _SelectableTextPageState createState() => _SelectableTextPageState();
}

class _SelectableTextPageState extends State<SelectableTextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('可选文本'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16,horizontal: 10),
          child: SelectableText(
            'SelectableTextPageSelectableTextPageSelectableTextPageSelectableTextPageSelectableTextPageSelectableTextPageSelectableTextPageSelectableTextPageSelectableTextPageSelecSelectableTextPageSelectableTextPageSelectableTextPageSelectableTextPageSelectableTextPageSelectableTextPageSelectableTextPageSelectableTextPageSelectableTextPageSelectableTextPageSelectableTextPageSelectableTextPageSelectableTextPagetableTextPageSelectableTextPageSelectableTextPageSelectableTextPage',
                cursorRadius: Radius.circular(5),
                showCursor: true,
            cursorColor: Colors.cyan,
            scrollPhysics: ClampingScrollPhysics(),
            onTap: ()=> print('that ticklse'),
          ),
        ),
      ),
    );
  }
}
