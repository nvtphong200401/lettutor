import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lettutor/main.dart';
import 'package:lettutor/presentation/stream/preview_widget.dart';

import 'camera_controller_widget.dart';

class StreamScreen extends StatefulHookWidget {
  const StreamScreen({Key? key}) : super(key: key);

  @override
  State<StreamScreen> createState() => _StreamScreenState();
}

class _StreamScreenState extends State<StreamScreen> {
  late CameraController controller;

  @override
  void initState() {
    super.initState();
    controller = CameraController(cameras[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((error) {
      if (error is CameraException) {
        switch (error.code) {
          case 'CameraAccessDenied':
            break;
          default:
            break;
        }
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final micNotifier = useValueNotifier(false);
    final cameraNotifier = useValueNotifier(false);
    final raiseHandNotifier = useValueNotifier(false);

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            if (!controller.value.isInitialized)
              Container()
            else
              Align(
                alignment: Alignment.center,
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: CameraPreview(controller),
                ),
              ),
            Align(
              alignment: Alignment.topRight,
              child: PreviewWidget(
                controller,
                micNotifier: micNotifier,
                cameraNotifier: cameraNotifier,
                raiseHandNotifier: raiseHandNotifier,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: CameraControllerWidget(
                micNotifier: micNotifier,
                cameraNotifier: cameraNotifier,
                raiseHandNotifier: raiseHandNotifier,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 42.0,
                height: 42.0,
                margin: const EdgeInsets.only(bottom: 32, right: 16.0),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MoreBottomSheet extends StatelessWidget {
  const MoreBottomSheet({Key? key}) : super(key: key);

  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const MoreBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [],
    );
  }
}
