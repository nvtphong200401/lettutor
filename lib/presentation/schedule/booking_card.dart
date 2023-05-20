import 'dart:convert';
import 'dart:developer';

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:lettutor/core/presentation/common_styles/common_styles.dart';
import 'package:lettutor/core/presentation/common_widgets/common_lesson_time.dart';
import 'package:lettutor/core/presentation/common_widgets/common_mixins.dart';
import 'package:lettutor/core/presentation/common_widgets/constant.dart';
import 'package:lettutor/core/presentation/extensions.dart';
import 'package:lettutor/gen/colors.gen.dart';
import 'package:lettutor/infrastructure/schedule/models/schedule_list_model.dart';
import 'package:lettutor/presentation/schedule/cancel_booking.dart';
import 'package:lettutor/shared/schedule_providers.dart';
import 'package:omni_jitsi_meet/jitsi_meet.dart';

import '../../application/schedule/schedule_notifier.dart';
import '../../core/locales/app_locale.dart';
import '../../shared/user_providers.dart';
import '../teacher/teacher_info.dart';

class BookingCard extends ConsumerWidget {
  const BookingCard({super.key, required this.date, required this.schedules});
  final DateTime date;
  final List<ScheduleModel> schedules;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    log('${schedules.length}');
    final list = ref.watch(scheduleCardNotifier(schedules));
    if (list.isEmpty) {
      return const SizedBox.shrink();
    }
    final scheduleInfoFirst = list[0].scheduleDetailInfo?.scheduleInfo;
    final scheduleInfoLast =
        list[list.length - 1].scheduleDetailInfo?.scheduleInfo;
    final tutorInfo = scheduleInfoFirst?.tutorInfo;
    return GreyBoxContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          DateFormat('EEE, dd MMM yy',
                  FlutterLocalization.instance.currentLocale?.languageCode)
              .format(date),
          style:
              CommonTextStyle.textSize24.copyWith(fontWeight: FontWeight.w700),
        ),
        Text(
          '${list.length} ${AppLocale.lesson.getString(context)}',
          style: const TextStyle(fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: 10,
        ),
        WhiteBoxContainer(
          child: TeacherInfo(
            id: tutorInfo?.id ?? '',
            avatar: tutorInfo?.avatar ?? defaultAvatar,
            name: tutorInfo?.name ?? '',
            nationality: tutorInfo?.country ?? 'Vietnam',
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        WhiteBoxContainer(
          child: CommonLessonTime(
              startTime:
                  scheduleInfoFirst?.startTimestamp.toHourAndMinLocal() ?? '',
              endTime:
                  scheduleInfoLast?.endTimestamp.toHourAndMinLocal() ?? ''),
        ),
        const SizedBox(
          height: 1,
        ),
        for (int i = 0; i < list.length; ++i) ...[
          Padding(
            padding: const EdgeInsets.only(bottom: 1.0),
            child: BookingSession(
              tutorInfo: tutorInfo,
              scheduleInfo: list[i].scheduleDetailInfo?.scheduleInfo,
              session: i + 1,
              notifier: ref.read(scheduleCardNotifier(schedules).notifier),
            ),
          ),
        ],
        WhiteBoxContainer(
          child: ExpandablePanel(
            header: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                AppLocale.requestForLesson.getString(context),
              ),
            ),
            collapsed: const SizedBox.shrink(),
            expanded: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Bring your notebooks',
                    // style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ],
            ),
            theme: ExpandableThemeData(
                iconRotationAngle: 2,
                iconColor: Theme.of(context).textTheme.bodyLarge?.color,
                iconPlacement: ExpandablePanelIconPlacement.left,
                iconSize: 14,
                expandIcon: Icons.arrow_forward_ios,
                // collapseIcon: Icons.keyboard_arrow_down,
                iconPadding: const EdgeInsets.only(top: 1)),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        // ),
        SizedBox(
          width: 50,
          child: ElevatedButton(
            style: CommonButtonStyle.primaryButtonStyle.customCopyWith(),
            onPressed: () async {
              final user = ref.read(userNotifierProvider).asData?.value.user;
              // get token & id
              final tokenMeeting =
                  list[0].tutorMeetingLink?.split('token=')[1] ?? '';
              final base64Decoded =
                  base64.decode(base64.normalize(tokenMeeting.split('.')[1]));
              final urlObject = utf8.decode(base64Decoded);
              final jsonRes = json.decode(urlObject) as Map<String, dynamic>;
              final roomId = jsonRes['room'] as String? ?? '';

              var options = JitsiMeetingOptions(
                  serverURL: 'https://meet.lettutor.com/',
                  room: roomId,
                  token: tokenMeeting,
                  userDisplayName: user?.name,
                  userEmail: user?.email,
                  userAvatarURL: user?.avatar);
              JitsiMeet.joinMeeting(options,
                  listener: JitsiMeetingListener(
                    onConferenceWillJoin: (url) =>
                        debugPrint("onConferenceWillJoin: url: $url"),
                    onConferenceJoined: (url) =>
                        debugPrint("onConferenceJoined: url: $url"),
                    onConferenceTerminated: (url, error) => debugPrint(
                        "onConferenceTerminated: url: $url, error: $error"),
                  ));
              // var options = JitsiMeetingOptions(
              //     room: list[0].tutorMeetingLink?.substring(13) ?? '',
              //     userDisplayName: user?.name,
              //     userEmail: user?.email,
              //     userAvatarURL: user?.avatar);
              // await JitsiMeet.joinMeeting(
              //   options,
              //   listener: JitsiMeetingListener(
              //     onConferenceWillJoin: (url) =>
              //         debugPrint("onConferenceWillJoin: url: $url"),
              //     onConferenceJoined: (url) =>
              //         debugPrint("onConferenceJoined: url: $url"),
              //     onConferenceTerminated: (url, error) => debugPrint(
              //         "onConferenceTerminated: url: $url, error: $error"),
              //   ),
              // );
            },
            child: Text(
              AppLocale.goToMeeting.getString(context),
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        )
      ],
    ));
  }
}

class BookingSession extends ConsumerWidget {
  const BookingSession(
      {super.key,
      this.tutorInfo,
      this.scheduleInfo,
      required this.session,
      required this.notifier});
  final TutorInfo? tutorInfo;
  final ScheduleInfo? scheduleInfo;
  final int session;
  final SingleScheduleNotifier notifier;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WhiteBoxContainer(
      child: Row(
        children: [
          Text(
            '${AppLocale.session.getString(context)} $session: ${scheduleInfo?.startTimestamp.toHourAndMinLocal()} - ${scheduleInfo?.endTimestamp.toHourAndMinLocal()}',
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => showDialog(
                context: context,
                builder: (context) => CancelBookingDialog(
                      avatarUrl: tutorInfo?.avatar ?? defaultAvatar,
                      teacherName: tutorInfo?.name ?? '',
                      lessonTime: DateFormat(
                              'EEE, dd MMM yy',
                              FlutterLocalization
                                  .instance.currentLocale?.languageCode)
                          .format(scheduleInfo?.startTimestamp.toLocal() ??
                              DateTime.now()),
                      onSubmit: (reasonID) {
                        notifier.cancelSchedule(
                            scheduleInfo?.id ?? '', reasonID);
                      },
                    )),
            child: ((scheduleInfo?.startTimestamp
                            .toLocal()
                            .difference(DateTime.now())
                            .inHours ??
                        -100) >
                    1)
                ? Container(
                    decoration: BoxDecoration(
                      color: ColorName.background,
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.cancel,
                          size: 12,
                          color: Colors.red,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          AppLocale.cancel.getString(context),
                          style: CommonTextStyle.textSize12
                              .copyWith(color: Colors.red),
                        ),
                      ],
                    ),
                  )
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
