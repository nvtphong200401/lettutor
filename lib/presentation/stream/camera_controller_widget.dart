import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

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
      padding: const EdgeInsets.only(left: 8.0, right: 16, top: 4.0, bottom: 4.0),
      margin: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: const Color(0xff141414),
          boxShadow: const [
            BoxShadow(color: Colors.black54, blurRadius: 15.0, offset: Offset(0.0, 0.75)),
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
                    icon: cameraValue ? Icons.videocam_outlined : Icons.videocam_off_outlined,
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
                    color: const Color(0xff36383c), borderRadius: BorderRadius.circular(3.0)),
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
