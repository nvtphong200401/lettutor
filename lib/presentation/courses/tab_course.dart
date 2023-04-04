import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/core/presentation/extensions.dart';
import 'package:lettutor/core/presentation/routing/app_router.dart';
import 'package:lettutor/infrastructure/courses/models/course_model.dart';
import 'package:lettutor/shared/course_providers.dart';

import 'course_card.dart';

class TabCourse extends StatefulHookConsumerWidget {
  const TabCourse({super.key});

  @override
  ConsumerState<TabCourse> createState() => _TabCourseState();
}

class _TabCourseState extends ConsumerState<TabCourse> {
  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();
    final courses = ref.watch(coursesNotifierProvider);
    return courses.when(
      data: (data) {
        final categories = data.groupByCategory();
        return Column(
          children: categories.entries.map((e) => _buildSection(e.key, e.value)).toList(),
        );
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (error, stackTrace) => Center(
        child: Text(error.toString()),
      ),
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

  Widget _buildSection(String categoryTitle, List<CourseModel> courses) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildText(categoryTitle, 25),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: courses
                .map((e) => CourseCard(
                    imageUrl: e.imageUrl ?? '',
                    title: e.name ?? '',
                    subtitle1: e.description,
                    subtitle2: ' ${e.topics?.length} Lessons',
                    onTap: () => context.router.push(CourseInfoRoute(courseId: e.id!))))
                .toList(),
          ),
        )
      ],
    );
  }
}
