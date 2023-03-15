import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lettutor/core/presentation/common_widgets/common_lesson_time.dart';
import 'package:lettutor/core/presentation/common_widgets/common_mixins.dart';
import 'package:lettutor/gen/colors.gen.dart';
import 'package:lettutor/infrastructure/teacher/models/teacher_model.dart';
import 'package:lettutor/presentation/teacher/teacher_info.dart';

import '../../core/presentation/common_styles/common_styles.dart';

class HistoryItem extends StatelessWidget with BuildWhiteContainerMixin {
  const HistoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    final info = TeacherModel.init();

    return greyBoxContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            DateFormat('EEE, dd MMM yy').format(DateTime.now()),
            style: CommonTextStyle.textSize24.copyWith(fontWeight: FontWeight.w700),
          ),
          Text(
            '${DateTime.now().difference(DateTime(2023, 3, 5)).inDays} days ago',
            style: const TextStyle(fontStyle: FontStyle.italic),
          ),
          const SizedBox(
            height: 10,
          ),
          whiteBoxContainer(
            child: TeacherInfo(
              name: info.name,
              avatar: info.avatar,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          whiteBoxContainer(child: const CommonLessonTime(startTime: '08:30', endTime: '09:30')),
          const SizedBox(
            height: 1,
          ),
          whiteBoxContainer(child: const Text('Request for lesson')),
          const SizedBox(
            height: 1,
          ),
          whiteBoxContainer(child: const Text('Tutor haven\'t reviewed yet')),
          const SizedBox(
            height: 1,
          ),
          whiteBoxContainer(
              child: Row(
            children: const [
              Text(
                'Add a rating',
                style: TextStyle(color: ColorName.textButton),
              ),
              Spacer(),
              Text(
                'Report',
                style: TextStyle(color: ColorName.textButton),
              )
            ],
          ))
        ],
      ),
    );
  }
}
