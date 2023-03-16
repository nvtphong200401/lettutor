import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lettutor/core/presentation/common_widgets/common_lesson_time.dart';
import 'package:lettutor/core/presentation/common_widgets/common_mixins.dart';
import 'package:lettutor/gen/colors.gen.dart';
import 'package:lettutor/infrastructure/teacher/models/teacher_model.dart';
import 'package:lettutor/presentation/teacher/teacher_info.dart';

import '../../core/presentation/common_styles/common_styles.dart';
import '../teacher/detail/report_modal.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    final info = TeacherModel.init();

    return GreyBoxContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            DateFormat('EEE, dd MMM yy').format(DateTime.now()),
            style: CommonTextStyle.textSize24
                .copyWith(fontWeight: FontWeight.w700),
          ),
          Text(
            '${DateTime.now().difference(DateTime(2023, 3, 5)).inDays} days ago',
            style: const TextStyle(fontStyle: FontStyle.italic),
          ),
          const SizedBox(
            height: 10,
          ),
          WhiteBoxContainer(
            child: TeacherInfo(
              name: info.name,
              avatar: info.avatar,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const WhiteBoxContainer(
              child: CommonLessonTime(startTime: '08:30', endTime: '09:30')),
          const SizedBox(
            height: 1,
          ),
          const WhiteBoxContainer(child: Text('Request for lesson')),
          const SizedBox(
            height: 1,
          ),
          const WhiteBoxContainer(child: Text('Tutor haven\'t reviewed yet')),
          const SizedBox(
            height: 1,
          ),
          WhiteBoxContainer(
              child: Row(
            children: [
              const Text(
                'Add a rating',
                style: TextStyle(color: ColorName.textButton),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    builder: (context) {
                      return const ReportModal();
                    }),
                child: const Text(
                  'Report',
                  style: TextStyle(color: ColorName.textButton),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
