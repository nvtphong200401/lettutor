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
                    courseUrl:
                        'https://api.app.lettutor.com/file/be4c3df8-3b1b-4c8f-a5cc-75a8e2e6626afileFoods%20You%20Love.pdf',
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
