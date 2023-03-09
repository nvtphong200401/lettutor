import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lettutor/main.dart';

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

class PreviewWidget extends HookWidget {
  const PreviewWidget(
    this.controller, {
    required this.micNotifier,
    required this.cameraNotifier,
    required this.raiseHandNotifier,
    Key? key,
  }) : super(key: key);

  final CameraController controller;
  final ValueNotifier<bool> micNotifier;
  final ValueNotifier<bool> cameraNotifier;
  final ValueNotifier<bool> raiseHandNotifier;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width / 4;
    return Container(
      width: width,
      height: 9 * width / 16,
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4.0),
              child: CameraPreview(controller),
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ),
          const Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: 4.0, left: 2.0),
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 12.0,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 4.0, left: 2.0),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(2.0),
                    margin: const EdgeInsets.all(2.0),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(4.0),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.green),
                      child: const Icon(
                        Icons.network_cell,
                        color: Colors.white,
                        size: 8.0,
                      ),
                    ),
                  ),
                  HookBuilder(builder: (context) {
                    final raiseHand = useValueListenable(raiseHandNotifier);
                    return Visibility(
                      visible: raiseHand,
                      child: Container(
                        padding: const EdgeInsets.all(2.0),
                        margin: const EdgeInsets.all(2.0),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(4.0),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.orange),
                          child: const Icon(
                            Icons.back_hand,
                            color: Colors.white,
                            size: 8.0,
                          ),
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 4.0, right: 4.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  HookBuilder(builder: (context) {
                    final mic = useValueListenable(micNotifier);
                    return Visibility(
                      visible: !mic,
                      child: const Icon(
                        Icons.mic_off,
                        color: Colors.white,
                        size: 12.0,
                      ),
                    );
                  }),
                  const SizedBox(width: 4.0),
                  HookBuilder(builder: (context) {
                    final camera = useValueListenable(cameraNotifier);
                    return Visibility(
                      visible: !camera,
                      child: const Icon(
                        Icons.videocam_off_outlined,
                        color: Colors.white,
                        size: 12.0,
                      ),
                    );
                  }),
                  const SizedBox(width: 4.0),
                  const Icon(
                    Icons.star_border,
                    color: Colors.white,
                    size: 12.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CameraControllerWidget extends HookWidget {
  const CameraControllerWidget({
    required this.micNotifier,
    required this.cameraNotifier,
    required this.raiseHandNotifier,
    Key? key,
  }) : super(key: key);

  final ValueNotifier<bool> micNotifier;
  final ValueNotifier<bool> cameraNotifier;
  final ValueNotifier<bool> raiseHandNotifier;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.only(left: 8.0, right: 16, top: 4.0, bottom: 4.0),
      margin: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: const Color(0xff141414),
          boxShadow: const [
            BoxShadow(
                color: Colors.black54,
                blurRadius: 15.0,
                offset: Offset(0.0, 0.75)),
          ]),
      child: LayoutBuilder(
        builder: (context, constraint) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HookBuilder(builder: (context) {
                final micValue = useValueListenable(micNotifier);
                return GestureDetector(
                  onTap: () => micNotifier.value = !micNotifier.value,
                  child: Item(
                    icon: micValue ? Icons.mic : Icons.mic_off,
                    more: true,
                  ),
                );
              }),
              const SizedBox(width: 8.0),
              HookBuilder(builder: (context) {
                final cameraValue = useValueListenable(cameraNotifier);
                return GestureDetector(
                  onTap: () => cameraNotifier.value = !cameraNotifier.value,
                  child: Item(
                    icon: cameraValue
                        ? Icons.videocam_outlined
                        : Icons.videocam_off_outlined,
                    more: true,
                  ),
                );
              }),
              const SizedBox(width: 8.0),
              const Item(
                icon: Icons.screenshot_monitor,
              ),
              const SizedBox(width: 8.0),
              GestureDetector(
                onTap: () {
                  raiseHandNotifier.value = !raiseHandNotifier.value;
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    HookBuilder(builder: (context) {
                      final value = useValueListenable(raiseHandNotifier);
                      return Visibility(
                        visible: value,
                        child: Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            color: const Color(0xff777777),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      );
                    }),
                    const Item(
                      icon: Icons.back_hand,
                      more: true,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8.0),
              const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Item(
                  icon: Icons.zoom_out_map,
                ),
              ),
              if (constraint.maxWidth > 360)
                const Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Item(
                    icon: Icons.fiber_smart_record,
                  ),
                ),
              const Item(
                icon: Icons.more_horiz,
              ),
              const SizedBox(width: 8.0),
              const HangupPhone(),
            ],
          );
        },
      ),
    );
  }
}

class HangupPhone extends StatelessWidget {
  const HangupPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: const Item(icon: Icons.phone),
    );
  }
}

class Item extends StatelessWidget {
  const Item({
    required this.icon,
    this.more = false,
    Key? key,
  }) : super(key: key);

  final IconData icon;
  final bool more;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 34.0,
      height: 34.0,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 16.0,
          ),
          if (more)
            Align(
              alignment: Alignment.topRight,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color: const Color(0xff36383c),
                    borderRadius: BorderRadius.circular(3.0)),
                child: const Icon(
                  Icons.keyboard_arrow_up,
                  color: Colors.white,
                  size: 12.0,
                ),
              ),
            )
        ],
      ),
    );
  }
}

class MoreBottomSheet extends StatelessWidget {
  const MoreBottomSheet({Key? key}) : super(key: key);

  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => MoreBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}
