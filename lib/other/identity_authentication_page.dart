import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
class IdentityAuthenticationPage extends StatefulWidget {
  List<Asset> images = List<Asset>();
  @override
  _IdentityAuthenticationPageState createState() =>
      _IdentityAuthenticationPageState();
}

class _IdentityAuthenticationPageState extends State<IdentityAuthenticationPage> {
  var _imgPath;
  var _imgPath2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
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
                Container(
                    child: _ImageView(_imgPath)),
                SizedBox(height: 10,),
                Container(
                    child: _ImageView2(_imgPath2)),
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: _openGallery,
                  child: FDottedLine(
                    strokeWidth: 2.5,
                    color: Colors.grey,
                    child: Container(
                      alignment: Alignment.center,
                      width: 500,
                      height: 199,
                        child: Container(
                            width: 189,
                            height: 119,
                            child: Icon(Icons.crop_free,color: Colors.grey,size: 80,) ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget _ImageView(imgPath) {
    if (imgPath == null) {
      return null;
    } else {
      return Stack(
        children: <Widget>[
          FDottedLine(
            strokeWidth: 2.5,
            color: Colors.grey,
            child: Container(
              width: 343,
              height: 199,
              margin: EdgeInsets.only(bottom: 17),
              child: Image.file(
                imgPath,
                height: 196,
                width: 315,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      );
    }
  }
  Widget _ImageView2(imgPath) {
    if (imgPath == null) {
      return null;
    } else {
      return Stack(
        children: <Widget>[
          FDottedLine(
            strokeWidth: 2.5,
            color: Colors.grey,
            child: Container(
              width: 343,
              height: 199,
              margin: EdgeInsets.only(bottom: 17),
              child: Image.file(
                imgPath,
                height: 196,
                width: 315,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      );
    }
  }

  _takePhoto() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _imgPath = image ;
    });
  }

/*相册*/
  _openGallery() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
        _imgPath =null
            ? _imgPath = image
            : _imgPath2= image;
    });
  }
}
