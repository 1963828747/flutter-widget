import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
class ViodeWidget extends StatefulWidget {
  ViodeWidget({Key key}) : super(key: key);
  _ViodeWidgetState createState() => _ViodeWidgetState();
}

class _ViodeWidgetState extends State<ViodeWidget> {
  VideoPlayerController videoPlayerController;
  ChewieController chewieController;
  void initState() {
    super.initState();
    //配置视频地址cv
    videoPlayerController = VideoPlayerController.network(
        'https://www.runoob.com/try/demo_source/mov_bbb.mp4');
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      aspectRatio: videoPlayerController.value.aspectRatio, //宽高比
      autoPlay: true, //自动播放
      looping: true, //循环播放
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          '视频播放',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
        leading: GestureDetector(
          child: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
            size: 35,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              bottom: 180,
            ),
            padding: EdgeInsets.all(10),
            child: Center(
              //视频播放器
              child: Chewie(
                controller: chewieController,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    /**
     * 当页面销毁的时候，将视频播放器也销毁
     * 否则，当页面销毁后会继续播放视频！
     */
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }
}