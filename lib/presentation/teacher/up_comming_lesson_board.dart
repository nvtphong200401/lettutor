import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:lettutor/core/presentation/common_widgets/common_dialog.dart';
import 'package:lettutor/core/presentation/extensions.dart';
import 'package:lettutor/core/presentation/routing/app_router.dart';
import 'package:lettutor/main.dart';
import 'package:lettutor/shared/schedule_providers.dart';

import '../../core/presentation/common_styles/common_styles.dart';
import '../../gen/colors.gen.dart';

class UpcommingLessonBoard extends StatelessWidget {
  const UpcommingLessonBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(color: Colors.white),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(colors: [
            Color(0xFF0C3DDF),
            Color(0xFF05179D),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Consumer(builder: (context, ref, child) {
          final schedule = ref.watch(scheduleNotifierProvider);
          return schedule.when(
              data: (data) {
                final upCommingLesson = data.getUpcoming();
                final firstScheduleInfo = upCommingLesson.value[0].scheduleDetailInfo?.scheduleInfo;
                final lastScheduleInfo = upCommingLesson
                    .value[upCommingLesson.value.length - 1].scheduleDetailInfo?.scheduleInfo;
                final startTime = DateFormat('HH:mm').parse(firstScheduleInfo?.startTime ?? '');
                final endTime = DateFormat('HH:mm').parse(lastScheduleInfo?.endTime ?? '');
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Up comming lesson',
                      style: CommonTextStyle.textSize30,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  DateFormat('EEE, dd MMM yy').format(upCommingLesson.key),
                                  style: CommonTextStyle.textSize20,
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  '${firstScheduleInfo?.startTime} - ${lastScheduleInfo?.endTime}',
                                  style: CommonTextStyle.textSize20,
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                CountDownText(endTime: upCommingLesson.key)
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40,
                            child: ElevatedButton(
                              onPressed: () {
                                if (cameras.isNotEmpty) {
                                  context.router.push(const StreamRoute());
                                } else {
                                  CommonDialog(context).infoDialog(
                                      title: 'Permission denied',
                                      body: 'Camera permission is denied');
                                }
                              },
                              style: CommonButtonStyle.primaryButtonStyle.customCopyWith(
                                  textColor: ColorName.primary,
                                  capsuleShape: true,
                                  backgroundColor: ColorName.background),
                              child: Row(
                                children: const [
                                  Icon(
                                    FontAwesomeIcons.youtube,
                                    size: 16,
                                    color: ColorName.primary,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Enter lesson room',
                                    style: TextStyle(color: ColorName.primary),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Total lesson time is ${endTime.difference(startTime).inHours} hours ${endTime.difference(startTime).inMinutes - endTime.difference(startTime).inHours * 60} minutes',
                      style: CommonTextStyle.textSize16.copyWith(color: Colors.white),
                    )
                  ],
                );
              },
              loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ));
        }),
      ),
    );
  }
}

class CountDownText extends StatefulWidget {
  const CountDownText({super.key, required this.endTime});
  final DateTime endTime;

  @override
  State<CountDownText> createState() => _CountDownTextState();
}

class _CountDownTextState extends State<CountDownText> {
  Timer? countDownTimer;
  @override
  void initState() {
    countDownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    countDownTimer?.cancel();
    super.dispose();
  }

  String strDigits(int n) => n.toString().padLeft(2, '0');
  @override
  Widget build(BuildContext context) {
    final distanceTime = widget.endTime.difference(DateTime.now());

    final hours = strDigits(distanceTime.inHours);
    final minutes = strDigits(distanceTime.inMinutes.remainder(60));
    final seconds = strDigits(distanceTime.inSeconds.remainder(60));
    if (distanceTime.inSeconds < 0) {
      countDownTimer?.cancel();
    }
    return Text(
      '(starts in $hours:$minutes:$seconds)',
      style: const TextStyle(color: Colors.yellow),
    );
  }
}
