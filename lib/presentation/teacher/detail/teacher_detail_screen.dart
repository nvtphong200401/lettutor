import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:lettutor/application/teacher/providers.dart';
import 'package:lettutor/core/presentation/common_widgets/common_lesson_time.dart';
import 'package:lettutor/core/presentation/common_widgets/common_tag.dart';
import 'package:lettutor/core/presentation/common_widgets/common_widgets.dart';
import 'package:lettutor/core/presentation/common_widgets/read_more_text.dart';
import 'package:lettutor/gen/colors.gen.dart';
import 'package:lettutor/infrastructure/teacher/models/teacher_model.dart';
import 'package:lettutor/presentation/teacher/detail/report_modal.dart';
import 'package:lettutor/presentation/teacher/detail/teacher_video.dart';

import '../../../core/presentation/common_styles/common_styles.dart';
import '../../../core/presentation/common_widgets/common_back_button.dart';
import '../../../core/presentation/common_widgets/common_sliver_appbar.dart';
import '../teacher_info.dart';

class TeacherDetailScreen extends HookConsumerWidget {
  const TeacherDetailScreen({super.key, @PathParam('teacherId') required this.teacherId});

  final String teacherId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();
    final info = ref.watch(teachersProvider.select((value) => value.teachersMap[teacherId]!));

    return DismissKeyboardScaffold(
        // appBar: const CommonAppBar(),
        body: CustomScrollView(
      controller: scrollController,
      slivers: [
        SliverAppBar(
          pinned: true,
          leading: const CommonBackButton(),
          title: CommonSliverAppbarTitle(scrollController: scrollController),
          expandedHeight: 400,
          collapsedHeight: 60,
          flexibleSpace: const FlexibleSpaceBar(
            background: TeacherVideo(),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(10),
          sliver: SliverList(
              delegate: SliverChildListDelegate([
            const SizedBox(
              height: 20,
            ),
            TeacherInfo(
              info: info,
            ),
            const SizedBox(
              height: 10,
            ),
            const ReadMoreText(
                moreStyle: TextStyle(color: Colors.blue),
                lessStyle: TextStyle(color: Colors.blue),
                'I am passionate about running and fitness, I often compete in trail/mountain running events and I love pushing myself. I am training to one day take part in ultra-endurance events. I also enjoy watching rugby on the weekends, reading and watching podcasts on Youtube. My most memorable life experience would be living in and traveling around Southeast Asia.'),
            const SizedBox(
              height: 15,
            ),
            IconGroup(
              teacher: info,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Languages',
              style: CommonTextStyle.partTitle,
            ),
            const SizedBox(
              height: 10,
            ),
            Wrap(
              children: const [CommonTag(title: 'English')],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Specialties',
              style: CommonTextStyle.partTitle,
            ),
            const SizedBox(
              height: 10,
            ),
            Wrap(
              children: const [
                CommonTag(title: 'English for Business'),
                CommonTag(title: 'Consersational'),
                CommonTag(title: 'English for kids'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Suggested courses',
              style: CommonTextStyle.partTitle,
            ),
            const SizedBox(
              height: 10,
            ),
            buildPartContent(content: 'Basic Conversation Topics', link: ''),
            buildPartContent(content: 'Life in the Internet Age', link: ''),
            const SizedBox(
              height: 20,
            ),
            buildPartDesc(
                title: 'Interests',
                desc:
                    'I loved the weather, the scenery and the laid-back lifestyle of the locals.'),
            const SizedBox(
              height: 20,
            ),
            buildPartDesc(
                title: 'Teaching experience',
                desc: 'I have more than 10 years of teaching english experience'),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(ColorName.primary),
                      elevation: MaterialStatePropertyAll(0)),
                  child: const Text('Today'),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_left_outlined)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_right_outlined)),
                Text(DateFormat('MMM y').format(DateTime.now()))
              ],
            ),
            MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                ),
                itemCount: 30,
                itemBuilder: (context, index) => DecoratedBox(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: ColorName.grey,
                          width: 0.5,
                          strokeAlign: BorderSide.strokeAlignCenter)),
                  child: Center(child: buildSchedule(index)),
                ),
              ),
            )
          ])),
        )
      ],
    ));
  }

  Widget buildSchedule(int index) {
    if (index == 0) return const SizedBox.shrink();
    if (index < 5) {
      final DateTime now = DateTime.now();
      String date = DateFormat('dd/MM EE').format(now.copyWith(day: now.day + index));
      return Text(date);
    }
    if (index % 5 == 0) {
      return const CommonLessonTime(
        startTime: '01:30',
        endTime: '01:55',
        axis: Axis.vertical,
      );
    }
    final bool isBook = Random().nextBool();
    if (isBook) {
      return const Text(
        'Book',
        style: TextStyle(color: ColorName.green),
      );
    }
    return const SizedBox.shrink();
  }

  Widget buildPartDesc({required String title, required String desc}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: CommonTextStyle.partTitle,
        ),
        const SizedBox(
          height: 9,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 7),
          child: Text(
            desc,
            style: CommonTextStyle.partDesc,
          ),
        ),
      ],
    );
  }

  Widget buildPartContent({required String content, required String link}) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10, bottom: 8),
      child: Row(
        children: [
          Text(
            content,
            style: CommonTextStyle.partContent,
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            child: const Text(
              'Link',
              style: TextStyle(color: ColorName.primary, fontSize: 14),
            ),
            onTap: () {
              // link here
            },
          )
        ],
      ),
    );
  }

  Widget buildTag(String text) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: SizedBox(
        height: 30,
        child: ElevatedButton(
          onPressed: () {},
          style: CommonButtonStyle.primaryButtonStyle
              .customCopyWith(backgroundColor: ColorName.activeTag),
          child: Text(
            text,
            style: const TextStyle(color: ColorName.primary),
          ),
        ),
      ),
    );
  }
}

class IconGroup extends ConsumerWidget {
  const IconGroup({super.key, required this.teacher});
  final TeacherModel teacher;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        HookBuilder(builder: (context) {
          final fav = teacher.isFavorite;
          final icon = fav
              ? _buildIcon('Favorite', Icons.favorite, Colors.red)
              : _buildIcon('Favorite', Icons.favorite_outline);
          return GestureDetector(
            child: icon,
            onTap: () {
              ref.read(teachersProvider.notifier).updateFavorite(teacher.id);
            },
          );
        }),
        GestureDetector(
          child: _buildIcon('Report', Icons.info_outline),
          onTap: () => showModalBottomSheet(
              context: context,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10), topRight: Radius.circular(10))),
              builder: (context) {
                return const ReportModal();
              }),
        ),
        _buildIcon('Reviews', Icons.star_outline),
      ],
    );
  }

  Widget _buildIcon(String text, IconData icon, [Color color = ColorName.primary]) {
    return Column(
      children: [
        Icon(
          icon,
          color: color,
        ),
        Text(
          text,
          style: TextStyle(color: color),
        ),
      ],
    );
  }
}
