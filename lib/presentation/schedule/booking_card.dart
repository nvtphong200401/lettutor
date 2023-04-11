import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:lettutor/core/presentation/common_styles/common_styles.dart';
import 'package:lettutor/core/presentation/common_widgets/common_lesson_time.dart';
import 'package:lettutor/core/presentation/common_widgets/common_mixins.dart';
import 'package:lettutor/core/presentation/common_widgets/constant.dart';
import 'package:lettutor/gen/colors.gen.dart';
import 'package:lettutor/infrastructure/schedule/models/schedule_list_model.dart';
import 'package:lettutor/presentation/schedule/cancel_booking.dart';

import '../teacher/teacher_info.dart';

class BookingCard extends StatelessWidget {
  const BookingCard({super.key, required this.date, required this.schedules});
  final DateTime date;
  final List<ScheduleModel> schedules;
  @override
  Widget build(BuildContext context) {
    final scheduleInfoFirst = schedules[0].scheduleDetailInfo?.scheduleInfo;
    final scheduleInfoLast = schedules[schedules.length - 1].scheduleDetailInfo?.scheduleInfo;
    final tutorInfo = scheduleInfoFirst?.tutorInfo;
    return GreyBoxContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          DateFormat('EEE, dd MMM yy').format(date),
          style: CommonTextStyle.textSize24.copyWith(fontWeight: FontWeight.w700),
        ),
        Text(
          '${schedules.length} Lesson',
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
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        WhiteBoxContainer(
          child: CommonLessonTime(
              startTime: scheduleInfoFirst?.startTime ?? '',
              endTime: scheduleInfoLast?.endTime ?? ''),
        ),
        const SizedBox(
          height: 1,
        ),
        for (int i = 0; i < schedules.length; ++i) ...[
          Padding(
            padding: const EdgeInsets.only(bottom: 1.0),
            child: BookingSession(
              tutorInfo: tutorInfo,
              scheduleInfo: schedules[i].scheduleDetailInfo?.scheduleInfo,
              session: i + 1,
            ),
          ),
        ],
        WhiteBoxContainer(
          child: ExpandablePanel(
            header: const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Request for lesson',
              ),
            ),
            collapsed: const SizedBox.shrink(),
            expanded: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
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
            theme: const ExpandableThemeData(
                iconRotationAngle: 2,
                iconPlacement: ExpandablePanelIconPlacement.left,
                iconSize: 14,
                expandIcon: Icons.arrow_forward_ios,
                // collapseIcon: Icons.keyboard_arrow_down,
                iconPadding: EdgeInsets.only(top: 1)),
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
            onPressed: () {},
            child: const Text(
              'Go to meeting',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        )
      ],
    ));
  }
}

class BookingSession extends HookWidget {
  const BookingSession({super.key, this.tutorInfo, this.scheduleInfo, required this.session});
  final TutorInfo? tutorInfo;
  final ScheduleInfo? scheduleInfo;
  final int session;

  @override
  Widget build(BuildContext context) {
    final visible = useState(true);
    return Visibility(
      visible: visible.value,
      child: WhiteBoxContainer(
        child: Row(
          children: [
            Text(
              'Session $session: ${scheduleInfo?.startTime} - ${scheduleInfo?.endTime}',
            ),
            const Spacer(),
            GestureDetector(
              onTap: () => showDialog(
                  context: context,
                  builder: (context) => CancelBookingDialog(
                        avatarUrl: tutorInfo?.avatar ?? defaultAvatar,
                        teacherName: tutorInfo?.name ?? '',
                        lessonTime: 'Wed, 14 Mar 23',
                        onSubmit: () => visible.value = false,
                      )),
              child: Container(
                decoration: BoxDecoration(
                  color: ColorName.background,
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(100),
                ),
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
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
                      'Cancel',
                      style: CommonTextStyle.textSize12.copyWith(color: Colors.red),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
