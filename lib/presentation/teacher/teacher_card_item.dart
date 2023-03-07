import 'package:flutter/material.dart';
import 'package:lettutor/core/presentation/common_styles/common_styles.dart';
import 'package:lettutor/presentation/teacher/teacher_info.dart';

import '../../gen/colors.gen.dart';

class TeacherCardItem extends StatelessWidget {
  const TeacherCardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: ColorName.activeTag)),
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
                SizedBox(
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: CommonButtonStyle.primaryButtonStyle.customCopyWith(
                      backgroundColor: ColorName.activeTag,
                      capsuleShape: true,
                    ),
                    child: const Text(
                      'English for kids',
                      style: TextStyle(color: ColorName.primary),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: CommonButtonStyle.primaryButtonStyle.customCopyWith(
                      backgroundColor: ColorName.activeTag,
                      capsuleShape: true,
                    ),
                    child: const Text(
                      'IELTS',
                      style: TextStyle(color: ColorName.primary),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('I don\'t want to do this anymore'),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {},
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
