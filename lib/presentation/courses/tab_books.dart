import 'package:flutter/material.dart';
import 'package:lettutor/presentation/courses/course_card.dart';

class TabBooks extends StatelessWidget {
  const TabBooks({super.key});

  @override
  Widget build(BuildContext context) {
    final data = [
      const CourseCard(
        imageHeight: 230,
        imageUrl:
            'https://api.app.lettutor.com/file/be4c3df8-3b1b-4c8f-a5cc-75a8e2e6626afilewhat_a_world.jpeg',
        title: 'What a world 1',
        subtitle1:
            'For teenagers who have an excellent vocabulary background and brilliant communication skills.',
        subtitle2: 'Beginner',
      ),
      const CourseCard(
        imageHeight: 230,
        imageUrl:
            'https://api.app.lettutor.com/file/be4c3df8-3b1b-4c8f-a5cc-75a8e2e6626afilefamily_and_friends.jpeg',
        title: 'Family and friends starter',
        subtitle1:
            'For kids who want to learn English through pictures, pick up simple vocabulary and simple structures.',
        subtitle2: 'Beginner',
      )
    ];
    return Column(
      children: [
        for (int i = 0; i < (data.length / 5); ++i)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: data
                    .getRange(0, 5 > data.length ? data.length : 5)
                    .toList(),
              ),
            ),
          )
      ],
    );
  }
}
