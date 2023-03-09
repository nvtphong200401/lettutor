import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:lettutor/core/presentation/common_widgets/common_lesson_time.dart';
import 'package:lettutor/core/presentation/common_widgets/common_sliver_appbar.dart';
import 'package:lettutor/core/presentation/common_widgets/common_widgets.dart';
import 'package:lettutor/core/presentation/common_widgets/read_more_text.dart';
import 'package:lettutor/gen/colors.gen.dart';
import 'package:lettutor/infrastructure/teacher/models/teacher_model.dart';
import 'package:video_player/video_player.dart';

import '../../../core/presentation/common_styles/common_styles.dart';
import '../teacher_info.dart';

class TeacherDetailScreen extends HookWidget {
  const TeacherDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final videoController = useMemoized(() => VideoPlayerController.network(
          'https://api.app.lettutor.com/video/4d54d3d7-d2a9-42e5-97a2-5ed38af5789avideo1627913015871.mp4',
        ));
    final scrollController = useScrollController();
    final info = TeacherModel.init();

    useEffect(() {
      videoController.initialize();
      videoController.play();
      return videoController.dispose;
    }, [videoController]);
    return DismissKeyboardScaffold(
        // appBar: const CommonAppBar(),
        body: CustomScrollView(
      controller: scrollController,
      slivers: [
        SliverAppBar(
          pinned: true,
          title: CommonSliverAppbarTitle(scrollController: scrollController),
          expandedHeight: 400,
          collapsedHeight: 60,
          flexibleSpace: FlexibleSpaceBar(
            background: SizedBox(
              height: 400,
              width: 200,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                child: VideoPlayer(videoController),
              ),
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
              favIcon: false,
              name: info.name ?? '',
              avatar: info.name ?? '',
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
            const IconGroup(),
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
              children: [buildTag('English')],
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
              children: [
                buildTag('English for Business'),
                buildTag('Consersational'),
                buildTag('English for kids'),
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

class IconGroup extends StatelessWidget {
  const IconGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildIcon('Favorite', Icons.favorite_outline),
        _buildIcon('Report', Icons.info_outline),
        _buildIcon('Reviews', Icons.star_outline),
      ],
    );
  }

  Widget _buildIcon(String text, IconData icon) {
    return Column(
      children: [
        Icon(
          icon,
          color: ColorName.primary,
        ),
        Text(
          text,
          style: const TextStyle(color: ColorName.primary),
        ),
      ],
    );
  }
}
