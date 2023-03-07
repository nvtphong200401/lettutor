import 'package:flutter/material.dart';
import 'package:lettutor/gen/colors.gen.dart';

import '../common_styles/text_style.dart';

class CommonLessonTime extends StatelessWidget {
  const CommonLessonTime(
      {super.key, required this.startTime, required this.endTime});
  final String startTime;
  final String endTime;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            border: Border.all(color: Colors.blue[200]!),
            color: Colors.blue[100],
          ),
          child: const Text(
            '08:30',
            style: TextStyle(
              color: ColorName.primary,
            ),
          ),
        ),
        const Text(
          ' - ',
          style: CommonTextStyle.textSize16,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: Colors.red[100],
              border: Border.all(color: Colors.red[200]!)),
          padding: const EdgeInsets.all(3),
          child: Text(
            '09:30',
            style: TextStyle(
              color: Colors.red[500],
            ),
          ),
        )
      ],
    );
  }
}
