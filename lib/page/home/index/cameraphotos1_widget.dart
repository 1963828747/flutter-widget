import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

class CameraPhotos1Widget extends StatefulWidget {
  @override
  _CameraPhotos1WidgetState createState() => _CameraPhotos1WidgetState();
}

class _CameraPhotos1WidgetState extends State<CameraPhotos1Widget> {
//  List images =[];
  var _imgPath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('拍照,相册上传'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                alignment: Alignment.center,
                child: GestureDetector(
                    onTap: _takePhoto, child: Container(child: Text('拍照')))),
            Container(
                alignment: Alignment.center,
                child: GestureDetector(onTap: _openGallery, child: Text('相册'))),
            SizedBox(height: 10,),
            Container(
                child: _ImageView(_imgPath)),
          ],
        ),
      ),
    );
  }
  Widget _ImageView(imgPath) {
    if (imgPath == null) {
      return Center(
        child: Text("请选择相册或拍照"),
      );
    } else {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: 400,
        child: Image.file(
          imgPath,
        ),
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
      _imgPath = image ;
    });
  }
}

