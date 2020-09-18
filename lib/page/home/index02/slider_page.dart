import 'package:flutter/material.dart';
class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();

}

class _SliderPageState extends State<SliderPage> {
  double progressValue=0.0;
  double progressValue2=0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('参数设置'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),body: new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Container(
          child:new Slider(
            value: progressValue,//实际进度的位置
            inactiveColor: Colors.black12,//进度中不活动部分的颜色
            label: '$progressValue',
            min: 0.0,
            max: 100.0,
            divisions: 1000,
            activeColor: Colors.blue,//进度中活动部分的颜色
            onChangeStart: (double){
              print('888888888888onChangeStart888888888888888');
            },
            onChangeEnd:(double){
              print('9999999999999999onChangeEnd99999999999999999999');
            } ,
            onChanged: (double){
              setState(() {
                progressValue=double.roundToDouble();
              });
            },
          ),
          width: 300.0,
        ),
        new SliderTheme(
          data: SliderTheme.of(context).copyWith(
//                activeTickMarkColor:Colors.yellowAccent,
            activeTrackColor: Colors.yellowAccent,//实际进度的颜色
//                inactiveTickMarkColor:Colors.black
            thumbColor: Colors.black,//滑块中心的颜色
            inactiveTrackColor:Colors.red,//默认进度条的颜色
            valueIndicatorColor: Colors.blue,//提示进度的气派的背景色
            valueIndicatorTextStyle: new TextStyle(//提示气泡里面文字的样式
              color: Colors.white,
            ),
            inactiveTickMarkColor:Colors.blue,//divisions对进度线分割后 断续线中间间隔的颜色
            overlayColor: Colors.pink,//滑块边缘颜色
          ),
          child: new Container(
            width: 340.0,
            margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
            child: new Row(
              children: <Widget>[
                new Text('0.0'),
                new Expanded(
                  flex: 1,
                  child: new Slider(
                    value: progressValue2,
                    label: '$progressValue2',
                    divisions: 10,
                    onChanged: (double){
                      setState(() {
                        progressValue2=double.floorToDouble();//转化成double
                      });
                    },
                    min: 0.0,
                    max: 100.0,
                  ),
                ),
                new Text('100.0'),
              ],
            ),
          ),
        ),
      ],
    ),
    );
  }
}
