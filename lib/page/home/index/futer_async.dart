//import 'package:flutter/cupertino.dart';
//
//class FutterAsync extends StatefulWidget {
//  @override
//  _FutterAsyncState createState() => _FutterAsyncState();
//}
//
//class _FutterAsyncState extends State<FutterAsync> {
//  Future printDailyNewDigest()async {
//    String news =await gatherNewsReports();
//    print(news);
//  }
//  Future gatherNewsReports(){
//    return Future.value('耗时操作');
//  }
//  printWinningLotteryNumbers(){
//    print('Winning Lottery Numbers:[23,63,87,26,2]');
//  }
//  printWeatherForecast(){
//    print('Tomorrow\'s forecast:70F,sunny');
//  }
//  printBaseballScore(){
//    print('Baseball score:Red Sox 10,yankees 0');
//  }
//  main(){
//    printDailyNewDigest();
//    printWinningLotteryNumbers();
//    printWeatherForecast();
//    printBaseballScore();
//  }
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//
//    );
//  }
//}
Future printDailyNewDigest()async {
  String news =await gatherNewsReports();
  print(news);
}
Future gatherNewsReports(){
  return Future.value('2');
}
printWinningLotteryNumbers(){
  print('3');
}
printWeatherForecast(){
  print('1');
}
printBaseballScore(){
  print('7');
}
main(){
  printDailyNewDigest();
  printWinningLotteryNumbers();
  printWeatherForecast();
  printBaseballScore();
}