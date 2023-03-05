import 'package:flutter/material.dart';
import 'package:lettutor/presentation/teacher/teacher_info.dart';

import '../../core/presentation/common_widgets/common_widgets.dart';
import '../../gen/colors.gen.dart';

class TeacherCardItem extends StatelessWidget {
  const TeacherCardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TeacherInfo(),
            const SizedBox(
              height: 20,
            ),
            Wrap(
              children: [
                CommonPrimaryButton(
                  backgroundColor: ColorName.primary.withOpacity(0.2),
                  size: const Size.fromHeight(30),
                  capsuleShape: true,
                  child: const Text(
                    'English for kids',
                    style: TextStyle(color: ColorName.primary),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                CommonPrimaryButton(
                  backgroundColor: ColorName.primary.withOpacity(0.2),
                  size: const Size.fromHeight(30),
                  capsuleShape: true,
                  child: const Text(
                    'IELTS',
                    style: TextStyle(color: ColorName.primary),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('I don\'t want to do this anymore')
          ],
        ),
      ),
    );
  }
}
