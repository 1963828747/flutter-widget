import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:multi_image_picker/multi_image_picker.dart';

class IdentityPage extends StatefulWidget {
  @override
  _IdentityPageState createState() => new _IdentityPageState();
}
class _IdentityPageState extends State<IdentityPage> {
  List<Asset> images = List<Asset>(0);
List a=[
  'https://img02.mockplus.cn/idoc/xd/2020-06-16/60f2d975-497a-462f-9d5c-e724ca5e4a58.png',
];
  @override
  void initState() {
    super.initState();
  }

  Widget buildGridView() {
    return Container(
      height:100,
      child: ListView.builder(
          itemCount: (images.length+1),
          itemBuilder: (context,index){
            if(index==images.length){
              return  GestureDetector(
                onTap: loadAssets,
                child: FDottedLine(
                  strokeWidth: 2.5,
                  color: Colors.grey,
                  child: Container(
                    alignment: Alignment.center,
                    width: 500,
                    height: 199,
                    margin: EdgeInsets.only(bottom: 17),
                    child: Container(
                        width: 189,
                        height: 119,
                        child: Icon(Icons.crop_free,color: Colors.grey,size: 80,) ),
                  ),
                ),
              );
            }else {
              return Container(
                margin: EdgeInsets.only(bottom: 17),
//            child: AssetThumb(
//              asset: images[index-1],
//              width: 300,
//              height: 300,
//            ),
                child: Stack(
                  children: <Widget>[
                    FDottedLine(
                      strokeWidth: 2.5,
                      color: Colors.grey,
                      child: Container(
                        width: 343,
                        height: 199,
                        margin: EdgeInsets.only(bottom: 17),
                        child: AssetThumb(
                          asset: images[index ],
                          height: 196,
                          width: 315,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
          }),);
  }

  Future<void> loadAssets() async {
    List<Asset> resultList = List<Asset>();
    String error = 'No Error Dectected';

    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 300,
        enableCamera: true,
        selectedAssets: images,
        cupertinoOptions: CupertinoOptions(takePhotoIcon: "chat"),
        materialOptions: MaterialOptions(
          actionBarColor: "#abcdef",
          actionBarTitle: "Example App",
          allViewTitle: "All Photos",
          useDetailsView: false,
          selectCircleStrokeColor: "#000000",
        ),
      );
    } on Exception catch (e) {
      error = e.toString();
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      images = resultList;
//    a.add(resultList);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: Text('身份认证',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              )),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: UnconstrainedBox(
              child: Container(
//          padding: EdgeInsets.all(18),
                  child: Image.network(
                    'https://img02.mockplus.cn/idoc/xd/2020-06-17/eaaa9c8c-355c-467d-8aaf-db2583d2490e.png',
                    width: 24,
                    height: 24,
                    fit: BoxFit.fill,
                  )),
            ),
          ),
          actions: <Widget>[
            UnconstrainedBox(
              child: Container(
//          padding: EdgeInsets.all(18),
                  child: Image.network(
                    'https://img02.mockplus.cn/idoc/xd/2020-06-17/27e245f4-ee33-4cfb-b045-12e1b08d62d2.png',
                    width: 24,
                    height: 24,
                    fit: BoxFit.fill,
                  )),
            ),
            SizedBox(width: 16,),
          ],
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 8,),
              Text('身份认证',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromRGBO(102,102,102,1),
                  )),
              SizedBox(height: 8,),
              Text('确保拍摄证件的清晰完整',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromRGBO(153, 153, 153, 1),
                  )),
              SizedBox(height: 24,),
              Expanded(
                child: buildGridView(),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
