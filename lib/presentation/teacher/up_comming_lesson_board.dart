import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:jitsi_meet_wrapper/jitsi_meet_wrapper.dart';
import 'package:lettutor/core/presentation/extensions.dart';
import 'package:lettutor/shared/schedule_providers.dart';
import 'package:lettutor/shared/user_providers.dart';

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

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      upCommingLesson == null
                          ? 'You have no upcomming lesson.'
                          : 'Up comming lesson',
                      style: CommonTextStyle.textSize24,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Builder(builder: (context) {
                      if (upCommingLesson == null) {
                        return const SizedBox.shrink();
                      }
                      final firstScheduleInfo =
                          upCommingLesson.value[0].scheduleDetailInfo?.scheduleInfo;
                      final lastScheduleInfo = upCommingLesson
                          .value[upCommingLesson.value.length - 1].scheduleDetailInfo?.scheduleInfo;
                      final startTime = DateFormat('HH:mm')
                          .format(firstScheduleInfo?.startTimestamp?.toLocal() ?? DateTime.now());
                      final endTime = DateFormat('HH:mm')
                          .format(lastScheduleInfo?.endTimestamp.toLocal() ?? DateTime.now());
                      return Padding(
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
                                    '$startTime - $endTime',
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
                                onPressed: () async {
                                  final user = ref.read(userNotifierProvider).asData?.value.user;
                                  var options = JitsiMeetingOptions(
                                      roomNameOrUrl: upCommingLesson.value[0].tutorMeetingLink
                                              ?.substring(13) ??
                                          '',
                                      userDisplayName: user?.name,
                                      userEmail: user?.email,
                                      userAvatarUrl: user?.avatar);
                                  await JitsiMeetWrapper.joinMeeting(
                                    options: options,
                                    listener: JitsiMeetingListener(
                                      onConferenceWillJoin: (url) =>
                                          debugPrint("onConferenceWillJoin: url: $url"),
                                      onConferenceJoined: (url) =>
                                          debugPrint("onConferenceJoined: url: $url"),
                                      onConferenceTerminated: (url, error) => debugPrint(
                                          "onConferenceTerminated: url: $url, error: $error"),
                                    ),
                                  );
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
                      );
                    }),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Total lesson time is 0 hours 55 minutes',
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
