import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
class GetPage extends StatefulWidget {
  @override
  _GetPageState createState() => _GetPageState();
}

class _GetPageState extends State<GetPage> {
  String _news='';
  String _news2='';
  List list=[];
  @override
  void initState(){
    super.initState();
    Map userInfo={
      "username":"张三",
      "age":20
    };
    var a=json.encode(userInfo);
    print(json.encode(userInfo));
    print(userInfo is Map);
    print(a is String);

    String userinfo ='{"username":"zhangsan","age":20}';
    Map u=json.decode(userinfo);
    print(u["username"]);
      this._getData();
  }


   _getData()async{
    var apiUrl="https://zhuanlan.zhihu.com/api/columns/zhihuadmin";
    var result=await http.get(apiUrl);
    if(result.statusCode==200){
      print(json.decode(result.body));
      print(result.body);
      setState(() {
        this._news=json.decode(result.body)["title"];
        this._news2=json.decode(result.body)["description"];
      this.list=json.decode(result.body)["updated"];
      });
      print(''+this._news);
    }else{
      print(result.statusCode);
    }
   }
  _postData() async{
    var apiUrl="http:192//168.0.5:3000/dologin";
    var result=await http.post(apiUrl,body: {'username':'张三','age':'20'});
    if(result.statusCode==200){
      print(json.decode(result.body));
    }else{
      print(result.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this._news,style: TextStyle(color: Colors.white),),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body: this.list.length>0?ListView(
        children: this.list.map((value){
          return ListTile(
            title: Text(value["url"]),
          );
        }).toList(),
      ):      Container(
        height: 500,
        child: Center(
          child: Column(
            children: [
              Container(
                child: Text(this._news2,style: TextStyle(color: Colors.black),),
              ),
              Container(
                  color: Colors.cyan,
                  child: FlatButton(onPressed: _getData, child: Text('get请求'))),
              Container(
                  color: Colors.cyan,
                  child: FlatButton(onPressed: _postData, child: Text('post请求'))),
            ],
          ),
        ),
      ),
      

    );
  }
}
