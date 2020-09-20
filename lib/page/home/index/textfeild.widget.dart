import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextfeildWidget extends StatefulWidget {
  TextfeildWidget({Key key}) : super(key: key);

  @override
  _TextfeildWidgetState createState() => _TextfeildWidgetState();
}

class _TextfeildWidgetState extends State<TextfeildWidget> {
  @override
  Widget build(BuildContext context) {

    final TextEditingController _controller = new TextEditingController();

    var controller = TextEditingController();
    controller.addListener(() {
      print('controller:${controller.text}');
    });
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
          appBar: AppBar(
            title: Text('文本框'),
            centerTitle: true,
            leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.keyboard_arrow_left)),
          ),
          body: Container(
            color: Colors.grey[200],
            child: ListView(
                padding: EdgeInsets.all(16),
                shrinkWrap: true,
                children: <Widget>[
                  Text('普通TextField'),
                  TextField(
                    keyboardType: TextInputType.text,
                    textCapitalization: TextCapitalization.characters,
                  ),
                  Text('中间输入TextField'),
                  TextField(
                    textAlign: TextAlign.center,
                  ),
                  Text('右边输入TextField'),
                  TextField(
                    textDirection: TextDirection.rtl,
                  ),
                  Text('密码输入'),
                  TextField(
                    obscureText: true,
                  ),
                  Text('计数输入'),
                  TextField(
                    maxLength: 5,
                    maxLengthEnforced: true,
                  ),
                  Text('字母限制'),
                  TextField(
                    inputFormatters: [
                      WhitelistingTextInputFormatter(RegExp("[a-zA-Z]")),
                    ],
                  ),
                  Text('改变光标'),
                  TextField(
                    cursorColor: Colors.red,
                    cursorWidth: 5,
                    cursorRadius: Radius.circular(10),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.add),
                      labelText: 'label',
                    ),
                  ),
                  Text('添加文字标识'),
                  TextField(
                    decoration: InputDecoration(
                      helperText: 'helperText',
                      hintText: 'hintText',
                    ),
                  ),
                  Text('添加错误提示'),
                  TextField(
                    decoration: InputDecoration(errorText: 'errorText'),
                  ),
                  Text('添加图标与左右标识'),
                  TextField(
                    decoration: InputDecoration(
                      prefixText: 'prefixText',
                      prefixIcon: Icon(Icons.add),
                      suffixText: 'suffixText',
                      suffixIcon: Icon(Icons.add),
                      counterText: 'counterText',
                    ),
                  ),
                  Text('添加背景颜色'),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.red,
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        child: new AlertDialog(
                          title: new Text('What you typed'),
                          content: new Text(_controller.text),
                        ),
                      );
                    },
                    child: new Text('DONE'),
                  ),
                  TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.search,
                    obscureText: true,
                    onChanged: (value) {
                      print('onChanged:$value');
                    },
                    onEditingComplete: () {
                      print('onEditingComplete');
                    },
                    onSubmitted: (value) {
                      print('onSubmitted:$value');
                    },
                    onTap: () {
                      print('onTap');
                    },
                  ),
                  Text('禁止输入'),
                  TextField(
                    enabled: false,
                    decoration: InputDecoration(
                        icon: Icon(Icons.add), labelText: 'label'),
                  ),
                ]),
          )),
    );
  }
}
