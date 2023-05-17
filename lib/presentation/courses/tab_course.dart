import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/core/locales/app_locale.dart';
import 'package:lettutor/core/presentation/extensions.dart';
import 'package:lettutor/presentation/courses/course_section.dart';
import 'package:lettutor/presentation/courses/tab_interactive_book.dart';
import 'package:lettutor/shared/course_providers.dart';

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
      data: (data, count, page) {
        if (count == 0) {
          return NotFoundScreen(
            placeHolderString: AppLocale.noData.getString(context),
          );
        }
        final categories = data.groupByCategory();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: categories.entries
              .map((e) => CourseSection(categoryTitle: e.key, courses: e.value))
              .toList(),
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
}
