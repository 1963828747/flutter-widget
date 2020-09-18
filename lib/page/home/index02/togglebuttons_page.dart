import 'package:flutter/material.dart';
class ToggleButtonPage extends StatefulWidget {
  @override
  _ToggleButtonPageState createState() => _ToggleButtonPageState();
}

class _ToggleButtonPageState extends State<ToggleButtonPage> {
  List<bool> _selections = List.generate(3, (index) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToggleButton多项选择按钮'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body: Center(
        child: ToggleButtons(
          children: [
            Icon(Icons.local_activity),
            Icon(Icons.add),
            Icon(Icons.remove),
          ],
          color: Colors.black,//图标颜色
          fillColor: Colors.redAccent,//背景颜色   疑问：不起作用
          splashColor: Colors.black,//点击瞬间的颜色
       //   disabledBorderColor:Colors.blueGrey,//禁用时的边框颜色
        //  disabledColor:  Colors.grey[300],//禁用时的图标颜色
          highlightColor: Colors.blue,//长按后的高亮颜色
//          renderBorder: false,
          selectedColor: Colors.redAccent,//选中的图标颜色
          focusColor: Colors.cyanAccent,
//          focusNodes: [
//            _focusButton1,
//            _focusButton2,
//            _focusButton3,
//          ],
          hoverColor: Colors.yellow,
          isSelected: _selections,
          borderRadius: BorderRadius.circular(30),
          borderWidth: 2,
          borderColor: Colors.black12,
          selectedBorderColor: Colors.white,
//          onPressed: null,禁用
          onPressed: (int index){
            setState(() {
              _selections[index] = _selections[index];
            });
          },
        ),
      ),
    );
  }
}
