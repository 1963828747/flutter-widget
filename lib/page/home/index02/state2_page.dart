import 'package:flutter/material.dart';
import 'package:widget/page/home/index/container_widget.dart';
class State2Page extends StatefulWidget {
  final String title;

  const State2Page({Key key, this.title}) : super(key: key);
  @override
  _State2PageState createState() => _State2PageState();
}

class _State2PageState extends State<State2Page> {
  int _count = 12;
  ValueNotifier<int> num =ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return CountWidget(
      _count,
      child: Scaffold(
          appBar: AppBar(
        title: Text('状态刷新'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
          body: Center(
            child: ValueListenableBuilder<int>(
              valueListenable: num,
              builder: (BuildContext context, int value, Widget child){
                return Column(
//          mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('$_count',style: TextStyle(fontSize: 30),),
                    BottomWidget(),
                  ],
                );
              },
            ),
          )
      ),
    );
  }
  changeCount(int num){
    setState(() {
      _count = num;
    });
  }
}

class CountWidget extends InheritedWidget {
  final int count;

  CountWidget(this.count,{Widget child}):super(child:child);

  static CountWidget of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<CountWidget>();
  }
  @override
  bool updateShouldNotify(CountWidget oldWidget){
    return count != oldWidget.count;
  }
}


class BottomWidget extends StatelessWidget {
  final int count;
  final Function callback;

  const BottomWidget({Key key, this.count, this.callback}) : super(key: key);
  @override
  Widget build(BuildContext context) {
//    CountWidget countWidget = CountWidget.of(context);
    var count = CountWidget.of(context).count;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlatButton(onPressed: (){
//          callback(count-1);
        count--;
        }, child: Icon(Icons.remove)),
        Container(
          child:
          Text('$count'),
//          Text('${countWidget.count}'),
        ),
        FlatButton(onPressed: (){
//          callback(count+1);
          count++;
        }, child: Icon(Icons.add)),
      ],
    );
  }
}



