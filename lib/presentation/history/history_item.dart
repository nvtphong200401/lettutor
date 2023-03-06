import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lettutor/core/presentation/common_widgets/constant.dart';
import 'package:lettutor/gen/colors.gen.dart';
import 'package:lettutor/presentation/teacher/teacher_info.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorName.cardhistory,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            DateFormat('EEE, dd MMM yy').format(DateTime.now()),
            style: textSize24.copyWith(fontWeight: FontWeight.w700),
          ),
          Text(
            '${DateTime.now().difference(DateTime(2023, 3, 5)).inDays} days ago',
            style: const TextStyle(fontStyle: FontStyle.italic),
          ),
          const SizedBox(
            height: 10,
          ),
          whiteBoxContainer(
            child: const TeacherInfo(
              favIcon: false,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          whiteBoxContainer(child: const Text('Lesson Time: 18:00 - 18:25')),
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

  Widget whiteBoxContainer({required Widget child}) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      child: child,
    );
  }
}
