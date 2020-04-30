import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:meta/meta.dart';
class VideoWidget extends StatefulWidget {
  final VideoPlayerController videoPlayerController;


  VideoWidget({@required this.videoPlayerController, Key key}):super(key: key);

  @override
  _VideoWidgetState createState() => _VideoWidgetState();

}

class _VideoWidgetState extends State<VideoWidget> {

  ChewieController chewieController;

  @override
  void initState() {
    super.initState();
    chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      autoInitialize: true
    );
  }
  @override
  void dispose() {
    super.dispose();
    chewieController.dispose();
    widget.videoPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Chewie(controller: chewieController);
  }
}
