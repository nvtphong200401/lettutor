import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/core/presentation/common_styles/common_styles.dart';
import 'package:lettutor/core/presentation/common_widgets/common_tag.dart';
import 'package:lettutor/core/presentation/common_widgets/read_more_text.dart';
import 'package:lettutor/core/presentation/routing/app_router.dart';
import 'package:lettutor/presentation/teacher/teacher_info.dart';

import '../../application/teacher/providers.dart';
import '../../gen/colors.gen.dart';

class TeacherCardItem extends ConsumerWidget {
  const TeacherCardItem({
    super.key,
    required this.teacherId,
  });
  final String teacherId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final info = ref.watch(teachersProvider.select((value) => value.teachersMap[teacherId]!));
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: ColorName.activeTag)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TeacherInfo(
              info: info,
              toggleFavorite: () {
                ref.read(teachersProvider.notifier).updateFavorite(info.id);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Wrap(
              children: const [
                CommonTag(title: 'English for kids'),
                CommonTag(title: 'IELTS'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ReadMoreText(info.bio),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  debugPrint(context.router.stack.toString());
                  // context.router.pushNamed('/detail/${info.id}');
                  context.pushRoute(TeacherDetailRoute(teacherId: info.id, key: ValueKey(info.id)));
                  // context.router.push(TeacherDetailRoute(teacherId: info.id));
                },
                style: CommonButtonStyle.primaryButtonStyle.customCopyWith(
                    capsuleShape: true,
                    backgroundColor: ColorName.background,
                    borderColor: ColorName.textButton),
                child: SizedBox(
                  width: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Icon(
                        Icons.calendar_month_sharp,
                        color: ColorName.textButton,
                      ),
                      Text(
                        'Book',
                        style: TextStyle(color: ColorName.textButton),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
