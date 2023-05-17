import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/core/locales/app_locale.dart';
import 'package:lettutor/core/presentation/extensions.dart';
import 'package:lettutor/presentation/courses/tab_interactive_book.dart';

import '../../core/presentation/common_widgets/pagination_row.dart';
import '../../shared/course_providers.dart';
import 'course_section.dart';

class TabBooks extends HookConsumerWidget {
  const TabBooks({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final data = [
    //   const CourseCard(
    //     imageHeight: 230,
    //     imageUrl:
    //         'https://api.app.lettutor.com/file/be4c3df8-3b1b-4c8f-a5cc-75a8e2e6626afilewhat_a_world.jpeg',
    //     title: 'What a world 1',
    //     subtitle1:
    //         'For teenagers who have an excellent vocabulary background and brilliant communication skills.',
    //     subtitle2: 'Beginner',
    //   ),
    //   const CourseCard(
    //     imageHeight: 230,
    //     imageUrl:
    //         'https://api.app.lettutor.com/file/be4c3df8-3b1b-4c8f-a5cc-75a8e2e6626afilefamily_and_friends.jpeg',
    //     title: 'Family and friends starter',
    //     subtitle1:
    //         'For kids who want to learn English through pictures, pick up simple vocabulary and simple structures.',
    //     subtitle2: 'Beginner',
    //   )
    // ];
    useAutomaticKeepAlive();
    final courses = ref.watch(coursesNotifierProvider);
    return courses.when(
      data: (data, total, currentPage) {
        final categories = data.groupByCategory();
        if (total == 0) {
          return NotFoundScreen(
            placeHolderString: AppLocale.noData.getString(context),
          );
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...categories.entries
                .map((e) => CourseSection(categoryTitle: e.key, courses: e.value))
                .toList(),
            Pager(
                currentPage: currentPage,
                totalPages: (total / 9).ceil(),
                onPageChanged: (page) {
                  if (page != currentPage) {
                    ref.read(coursesNotifierProvider.notifier).getBookList(page: page);
                  }
                })
          ],
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
