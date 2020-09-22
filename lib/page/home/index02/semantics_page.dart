import 'package:flutter/material.dart';
class SemanticsPage extends StatefulWidget {
  @override
  _SemanticsPageState createState() => _SemanticsPageState();
}

class _SemanticsPageState extends State<SemanticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Semantics'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body: Center(
        child: Column(
          children: [
            Semantics(
              child: UnconstrainedBox(
                child: ClipOval(
                  child: Image.network(
                    'http://attach.52pojie.cn/forum/201604/01/184715erqfhcfr99wcqrwh.jpg',
                    width: 150,
                    height: 150, fit: BoxFit.cover,
//                  fit: BoxFit.cover,
                  ),
                ),
              ),
              label:'An image of  ',
              enabled: true,
              readOnly: false,
            ),
            Semantics(
              container: true,
              button: true,
              enabled: true,
              selected: true,
              header: true,
//              TextField: true,
//              selected: true,
//              selected: true,
//              selected: true,
              child: new Material(
                  child: Container(
                      height: 100,
                      width: 100,
                      alignment: Alignment.center,
                      color:Colors.cyan,
                      child: Text('1231')),
                ),
            )
          ],
        ),
      ),
    );
  }
}
