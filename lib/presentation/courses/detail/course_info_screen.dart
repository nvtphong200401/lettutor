import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/core/presentation/common_styles/common_styles.dart';
import 'package:lettutor/core/presentation/common_widgets/common_back_button.dart';
import 'package:lettutor/core/presentation/common_widgets/common_widgets.dart';
// import 'package:lettutor/core/presentation/common_widgets/common_sliver_appbar.dart';
import 'package:lettutor/core/presentation/common_widgets/constant.dart';
import 'package:lettutor/core/presentation/routing/app_router.dart';
import 'package:lettutor/gen/colors.gen.dart';
import 'package:lettutor/shared/course_providers.dart';
import '../../../core/presentation/common_widgets/common_sliver_appbar.dart';
import 'course_flexible_spacebar.dart';
import 'course_header.dart';
import 'course_topic_item.dart';

class CourseInfoScreen extends HookConsumerWidget {
  const CourseInfoScreen({super.key, @pathParam required this.courseId});
  final String courseId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();
    final course = ref.watch(courseInfoProvider(courseId));
    return DismissKeyboardScaffold(
      // appBar: const LeadingButtonAppBar(),
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          SliverAppBar(
              pinned: true,
              leading: const CommonBackButton(),
              title: CommonSliverAppbarTitle(scrollController: scrollController),
              expandedHeight: 390,
              collapsedHeight: 60,
              flexibleSpace: const CourseInfoFlexibleSpaceBar()),
          SliverPadding(
            padding: paddingLayout,
            sliver: SliverList(
                delegate: SliverChildListDelegate([
              const CourseHeader(header: 'Overview'),
              buildDescription('Why take this course', course?.reason ?? ''),
              buildDescription('What will you be able to do', course?.purpose ?? ''),
              const CourseHeader(header: 'Experience Level'),
              buildContent(Icons.people_outline_outlined, course?.level ?? ''),
              const CourseHeader(header: 'Course Length'),
              buildContent(Icons.book_outlined, '${course?.topics?.length} topics'),
              const CourseHeader(header: 'List Topics'),
              const SizedBox(
                height: 10,
              ),
              for (int i = 0; i < (course?.topics?.length ?? 0); ++i)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TopicItem(
                    topic: '${i + 1}. ${course?.topics?[i].name}',
                    onPressed: () =>
                        context.router.push(CourseDetailRoute(courseId: courseId, topicId: i)),
                  ),
                ),
            ])),
          )
        ],
      ),
    );
  }

  Widget buildContent(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Icon(
            icon,
            color: ColorName.primary,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(text),
        ],
      ),
    );
  }

  Widget buildDescription(String title, String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(children: [
            const Icon(
              Icons.help_outline,
              color: Colors.red,
            ),
            const SizedBox(
              width: 3,
            ),
            Text(
              title,
              style: CommonTextStyle.textSize16.copyWith(fontWeight: FontWeight.w500),
            ),
          ]),
          Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              Expanded(child: Text(content)),
            ],
          ),
        ],
      ),
    );
  }
}
