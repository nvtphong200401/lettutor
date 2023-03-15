import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class TeacherVideo extends StatefulWidget {
  const TeacherVideo({super.key});

  @override
  State<TeacherVideo> createState() => _TeacherVideoState();
}

class _TeacherVideoState extends State<TeacherVideo> {
  late VideoPlayerController videoController;
  ChewieController? chewieController;
  @override
  void initState() {
    initPlayer();
    super.initState();
  }

  Future<void> initPlayer() async {
    videoController = VideoPlayerController.network(
      'https://api.app.lettutor.com/video/4d54d3d7-d2a9-42e5-97a2-5ed38af5789avideo1627913015871.mp4',
    );
    await videoController.initialize();
    chewieController = ChewieController(videoPlayerController: videoController);
    setState(() {});
  }

  @override
  void dispose() {
    videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (chewieController == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return Chewie(controller: chewieController!);
  }
}
