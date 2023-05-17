import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/presentation/common_widgets/constant.dart';
import '../../core/presentation/routing/app_router.dart';
import '../../infrastructure/courses/models/course_model.dart';
import 'course_card.dart';

class CourseSection extends StatelessWidget {
  const CourseSection({super.key, required this.categoryTitle, required this.courses});
  final String categoryTitle;
  final List<CourseModel> courses;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        _buildText(categoryTitle, 25),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: courses.map((e) {
              final level = int.parse(e.level ?? '1') - 1;
              return CourseCard(
                  imageUrl: e.imageUrl ?? '',
                  imageHeight: 230,
                  title: e.name ?? '',
                  subtitle1: e.description,
                  subtitle2: levelList[level > -1 ? level : 0],
                  onTap: () => context.router.push(CourseInfoRoute(courseId: e.id!)));
            }).toList(),
          ),
        )
      ],
    );
  }

  Widget _buildText(String text, double fontSize, [FontWeight fontWeight = FontWeight.w400]) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
      ),
    );
  }
}
