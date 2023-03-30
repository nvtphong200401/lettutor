import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class TeacherVideo extends StatefulWidget {
  const TeacherVideo({super.key, required this.videoUrl});
  final String videoUrl;

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
      widget.videoUrl,
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
