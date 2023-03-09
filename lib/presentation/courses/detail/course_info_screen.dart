import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lettutor/core/presentation/common_styles/common_styles.dart';
import 'package:lettutor/core/presentation/common_widgets/common_layout.dart';
import 'package:lettutor/core/presentation/common_widgets/common_sliver_appbar.dart';
import 'package:lettutor/core/presentation/common_widgets/constant.dart';
import 'package:lettutor/gen/colors.gen.dart';
import 'course_flexible_spacebar.dart';
import 'course_header.dart';
import 'course_topic_item.dart';

class CourseInfoScreen extends HookWidget {
  const CourseInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    return DismissKeyboardScaffold(
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          SliverAppBar(
              pinned: true,
              title: CommonSliverAppbarTitle(scrollController: scrollController),
              expandedHeight: 340,
              collapsedHeight: 60,
              flexibleSpace: const CourseInfoFlexibleSpaceBar()),
          SliverPadding(
            padding: paddingLayout,
            sliver: SliverList(
                delegate: SliverChildListDelegate([
              const CourseHeader(header: 'Overview'),
              buildDescription('Why take this course',
                  "It can be intimidating to speak with a foreigner, no matter how much grammar and vocabulary you've mastered. If you have basic knowledge of English but have not spent much time speaking, this course will help you ease into your first English conversations."),
              buildDescription('What will you be able to do',
                  "This course covers vocabulary at the CEFR A2 level. You will build confidence while learning to speak about a variety of common, everyday topics. In addition, you will build implicit grammar knowledge as your tutor models correct answers and corrects your mistakes."),
              const CourseHeader(header: 'Experience Level'),
              buildContent(Icons.people_outline_outlined, 'Beginner'),
              const CourseHeader(header: 'Course Length'),
              buildContent(Icons.book_outlined, '10 topics'),
              const CourseHeader(header: 'List Topics'),
              const SizedBox(
                height: 20,
              ),
              const TopicItem(topic: '1. Foods You Love'),
              const SizedBox(
                height: 10,
              ),
              const TopicItem(topic: '2. Your Job'),
              const SizedBox(
                height: 10,
              ),
              const TopicItem(topic: '3. Playing and watching Sports'),
              const SizedBox(
                height: 100,
              )
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
