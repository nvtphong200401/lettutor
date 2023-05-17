import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:intl/intl.dart';
import 'package:lettutor/core/locales/app_locale.dart';
import 'package:lettutor/core/presentation/common_widgets/common_lesson_time.dart';
import 'package:lettutor/core/presentation/common_widgets/common_mixins.dart';
import 'package:lettutor/core/presentation/common_widgets/constant.dart';
import 'package:lettutor/gen/colors.gen.dart';
import 'package:lettutor/infrastructure/schedule/models/schedule_list_model.dart';
import 'package:lettutor/presentation/history/rating_history.dart';
import 'package:lettutor/presentation/teacher/teacher_info.dart';

import '../../core/presentation/common_styles/common_styles.dart';
import '../teacher/detail/report_modal.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({super.key, required this.date, required this.schedules});
  final DateTime date;
  final List<ScheduleModel> schedules;

  @override
  Widget build(BuildContext context) {
    final scheduleInfoFirst = schedules[0].scheduleDetailInfo?.scheduleInfo;
    final scheduleInfoLast = schedules[schedules.length - 1].scheduleDetailInfo?.scheduleInfo;
    final info = scheduleInfoFirst?.tutorInfo;

    return GreyBoxContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            DateFormat('EEE, dd MMM yy', FlutterLocalization.instance.currentLocale?.languageCode)
                .format(date),
            style: CommonTextStyle.textSize24.copyWith(fontWeight: FontWeight.w700),
          ),
          Text(
            '${DateTime.now().difference(date).inDays} ${AppLocale.daysAgo.getString(context)}',
            style: const TextStyle(fontStyle: FontStyle.italic),
          ),
          const SizedBox(
            height: 10,
          ),
          WhiteBoxContainer(
            child: TeacherInfo(
              id: info?.id ?? '',
              avatar: info?.avatar ?? defaultAvatar,
              name: info?.name ?? '',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          WhiteBoxContainer(
              child: CommonLessonTime(
                  startTime: scheduleInfoFirst?.startTime ?? '',
                  endTime: scheduleInfoLast?.endTime ?? '')),
          const SizedBox(
            height: 1,
          ),
          WhiteBoxContainer(child: Text(AppLocale.requestForLesson.getString(context))),
          const SizedBox(
            height: 1,
          ),
          WhiteBoxContainer(
              child:
                  Text(schedules[0].tutorReview ?? AppLocale.tutorHaventReview.getString(context))),
          const SizedBox(
            height: 1,
          ),
          WhiteBoxContainer(
              child: Row(
            children: [
              GestureDetector(
                onTap: () => showDialog(
                    builder: (context) => RatingHistory(
                          teacher: info,
                        ),
                    context: context),
                child: Text(
                  AppLocale.addARating.getString(context),
                  style: const TextStyle(color: ColorName.textButton),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10), topRight: Radius.circular(10))),
                    builder: (context) {
                      return const ReportModal();
                    }),
                child: Text(
                  AppLocale.report.getString(context),
                  style: const TextStyle(color: ColorName.textButton),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
