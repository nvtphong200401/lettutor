import 'package:flutter/material.dart';
import 'package:lettutor/presentation/courses/detail/course_detail_screen.dart';

import '../../../core/presentation/common_styles/common_styles.dart';
import '../../../gen/colors.gen.dart';

class TopicItem extends StatelessWidget {
  const TopicItem({super.key, required this.topic});
  final String topic;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: CommonButtonStyle.primaryButtonStyle
            .customCopyWith(backgroundColor: ColorName.cardhistory, capsuleShape: false),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CourseDetailScreen(
                    title: topic,
                  )));
        },
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            topic,
            style: CommonTextStyle.textSize16,
          ),
        ));
  }
}
