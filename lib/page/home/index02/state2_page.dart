import 'package:flutter/material.dart';
import 'package:widget/page/home/index/container_widget.dart';
import 'package:flutter/foundation.dart';
///局部刷新
class State2Page extends StatefulWidget {
  final String title;

  const State2Page({Key key, this.title}) : super(key: key);
  @override
  _State2PageState createState() => _State2PageState();
}

class _State2PageState extends State<State2Page> {
  int _count = 12;
  @override
  Widget build(BuildContext context) {
    debugPrint('StatePage build');
    return CountWidget(
      _count,
      child: Scaffold(
            appBar: AppBar(
          title: Text('状态管理2'),
          centerTitle: true,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.keyboard_arrow_left)),
        ),
            body: Builder(
              builder: (context){
                var myValue = CountWidget.of(context).num;
                myValue.value = myValue;
                return Center(
                  child: ValueListenableBuilder<MyNotifier>(
                      valueListenable: myValue,
                      builder: (BuildContext context, MyNotifier value, Widget child) {
                        debugPrint('ValueListenableBuilder builder');
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text('${value.count}',style: TextStyle(fontSize: 30),),
                            BottomWidget(),
                          ],
                        );
                      }
                  ),
                );
              },
            )
        ),
    );
  }

}

class MyNotification extends Notification {
  MyNotification(this.msg);
  final String msg;
}

class CountWidget extends InheritedWidget {
  final int count;
  final MyNotifier<MyNotifier> num = MyNotifier();

  CountWidget(this.count,{Widget child}):super(child:child);

  static CountWidget of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<CountWidget>();
  }
  @override
  bool updateShouldNotify(CountWidget oldWidget){
    return num != oldWidget.num;
  }
}


class BottomWidget extends StatelessWidget {


  Widget build(BuildContext context) {
//    CountWidget countWidget = CountWidget.of(context);
    var num = CountWidget.of(context).num;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: FlatButton(onPressed: (){
          num.count = num.count -1;
          }, child: Icon(Icons.remove)),
        ),
        Container(
          child:
          Text('${num.count}'),
//          Text('${countWidget.count}'),
        ),
        Container(
          child: FlatButton(onPressed: (){
          num.count = num.count +1;

          }, child: Icon(Icons.add)),
        ),
      ],
    );
  }
}

class MyNotifier<T> extends ChangeNotifier  implements ValueListenable<T>{

  int _age;
  String _name;
  int _count=0;

  T _value;

  int get age => _age;
  String get name => _name;
  int get count => _count;

  set age(int newValue){
    if (newValue == _age) return;
        _age = newValue;
    notifyListeners();
  }
  set name(String newValue){
    if (newValue == _name) return;
    _name = newValue;
    notifyListeners();
  }
  set count(int newValue){
    if (newValue == _count) return;
    _count = newValue;
    notifyListeners();
  }

  set value(T newVal){
    _value = newVal;
  }

  @override
  // TODO: implement value
  get value => _value;

}


///事件通知（反例，有缺点，不建议用）
//import 'package:flutter/material.dart';
//import 'package:widget/page/home/index/container_widget.dart';
/////事件通知
//class State2Page extends StatefulWidget {
//  final String title;
//
//  const State2Page({Key key, this.title}) : super(key: key);
//  @override
//  _State2PageState createState() => _State2PageState();
//}
//
//class _State2PageState extends State<State2Page> {
//  int _count = 12;
//  @override
//  Widget build(BuildContext context) {
//    return CountWidget(
//      _count,
//      child: NotificationListener<MyNotification>(
//        // ignore: missing_return
//        onNotification: (notification){
//          if(notification.msg == 'add'){
//            _count ++;
//          }else{
//            _count --;
//          }
//          setState(() {
//            return true;
//          });
//        },
//        child: Scaffold(
//            appBar: AppBar(
//              title: Text('状态管理2'),
//              centerTitle: true,
//              leading: GestureDetector(
//                  onTap: () {
//                    Navigator.pop(context);
//                  },
//                  child: Icon(Icons.keyboard_arrow_left)),
//            ),
//            body: Center(
//              child: Column(
////          mainAxisAlignment: MainAxisAlignment.center,
//                mainAxisSize: MainAxisSize.min,
//                crossAxisAlignment: CrossAxisAlignment.center,
//                children: [
//                  Text('$_count',style: TextStyle(fontSize: 30),),
//                  BottomWidget(),
//                ],
//              ),
//            )
//        ),
//      ),
//    );
//  }
//  changeCount(int num){
//    setState(() {
//      _count = num;
//    });
//  }
//}
//
//class MyNotification extends Notification {
//  MyNotification(this.msg);
//  final String msg;
//}
//
//class CountWidget extends InheritedWidget {
//  final int count;
//
//  CountWidget(this.count,{Widget child}):super(child:child);
//
//  static CountWidget of(BuildContext context){
//    return context.dependOnInheritedWidgetOfExactType<CountWidget>();
//  }
//  @override
//  bool updateShouldNotify(CountWidget oldWidget){
//    return count != oldWidget.count;
//  }
//}
//
//
//class BottomWidget extends StatelessWidget {
//  final int count;
//  final Function callback;
//
//  const BottomWidget({Key key, this.count, this.callback}) : super(key: key);
//  @override
//  Widget build(BuildContext context) {
////    CountWidget countWidget = CountWidget.of(context);
//    var count = CountWidget.of(context).count;
//    return Row(
//      mainAxisAlignment: MainAxisAlignment.center,
//      children: [
//        FlatButton(onPressed: (){
//          MyNotification("sub").dispatch(context);
////          callback(count-1);
//          count--;
//        }, child: Icon(Icons.remove)),
//        Container(
//          child:
//          Text('$count'),
////          Text('${countWidget.count}'),
//        ),
//        FlatButton(onPressed: (){
//          MyNotification("add").dispatch(context);
////          callback(count+1);
//          count++;
//        }, child: Icon(Icons.add)),
//      ],
//    );
//  }
//}
//


