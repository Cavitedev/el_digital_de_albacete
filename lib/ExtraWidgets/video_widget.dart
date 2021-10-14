import 'package:chewie/chewie.dart' as video_widget;
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  const VideoWidget({required this.videoPlayerController, Key? key}) : super(key: key);

  final VideoPlayerController videoPlayerController;

  @override
  _VideoWidgetState createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  late video_widget.ChewieController chewieController;

  @override
  void initState() {
    super.initState();
    chewieController = video_widget.ChewieController(videoPlayerController: widget.videoPlayerController, autoInitialize: true);
  }

  @override
  void dispose() {
    super.dispose();
    chewieController.dispose();
    widget.videoPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) => video_widget.Chewie(controller: chewieController);
}
