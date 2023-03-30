import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:lettutor/core/presentation/common_widgets/common_lesson_time.dart';
import 'package:lettutor/core/presentation/common_widgets/common_tag.dart';
import 'package:lettutor/core/presentation/common_widgets/common_widgets.dart';
import 'package:lettutor/core/presentation/common_widgets/read_more_text.dart';
import 'package:lettutor/gen/colors.gen.dart';
import 'package:lettutor/infrastructure/teacher/models/paginated_tutors.dart';
import 'package:lettutor/presentation/teacher/detail/report_modal.dart';
import 'package:lettutor/presentation/teacher/detail/teacher_video.dart';
import 'package:lettutor/shared/teacher_providers.dart';

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
    final info = ref.watch(teacherCardNotifierProvider(teacherId));

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
          flexibleSpace: FlexibleSpaceBar(
            background: TeacherVideo(
              videoUrl: info?.video ?? '',
            ),
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
              id: info?.id ?? '',
              avatar: info?.avatar ?? '',
              name: info?.name ?? '',
              rating: info?.rating,
            ),
            const SizedBox(
              height: 10,
            ),
            ReadMoreText(
                moreStyle: const TextStyle(color: Colors.blue),
                lessStyle: const TextStyle(color: Colors.blue),
                info?.bio ?? ''),
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
            if (info?.language != null)
              Wrap(
                children: [CommonTag(title: info?.language ?? '')],
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
                children:
                    info?.specialties?.split(',').map((e) => CommonTag(title: e)).toList() ?? []),
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
            Consumer(builder: (context, ref, child) {
              final data = ref.watch(courseFutureProvider(info?.userId ?? ''));
              return data.when(
                data: (data) {
                  if (data == null) return const SizedBox.shrink();
                  debugPrint('${data.user.courses!.length}');
                  return Column(
                    children: data.user.courses
                            ?.map((e) => buildPartContent(content: e.name ?? '', link: ''))
                            .toList() ??
                        [],
                  );
                },
                loading: () {
                  return const CircularProgressIndicator();
                },
                error: (error, stackTrace) {
                  return const SizedBox.shrink();
                },
              );
            }),
            const SizedBox(
              height: 20,
            ),
            buildPartDesc(title: 'Interests', desc: info?.interests?.trim() ?? ''),
            const SizedBox(
              height: 20,
            ),
            buildPartDesc(title: 'Teaching experience', desc: info?.experience?.trim() ?? ''),
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
  final TeacherModel? teacher;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        HookBuilder(builder: (context) {
          final fav = teacher?.isFavorite ?? false;
          final icon = fav
              ? _buildIcon('Favorite', Icons.favorite, Colors.red)
              : _buildIcon('Favorite', Icons.favorite_outline);
          return GestureDetector(
            child: icon,
            onTap: () {
              ref.read(teacherCardNotifierProvider(teacher?.id).notifier).updateFavorite();
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
