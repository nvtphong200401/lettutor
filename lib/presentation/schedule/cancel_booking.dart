import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lettutor/core/presentation/common_styles/common_styles.dart';
import 'package:lettutor/core/presentation/common_styles/textfield_style.dart';
import 'package:lettutor/gen/colors.gen.dart';

import '../../core/presentation/common_widgets/common_dropdown.dart';

final _reasonList = [
  'Reschedule at another time',
  'Busy at that time',
  'Asked by the tutor',
  'Other',
];

class CancelBookingDialog extends HookWidget {
  const CancelBookingDialog(
      {super.key,
      required this.avatarUrl,
      required this.teacherName,
      required this.lessonTime,
      this.onSubmit});
  final String avatarUrl;
  final String teacherName;
  final String lessonTime;
  final void Function(int reasonID)? onSubmit;

  @override
  Widget build(BuildContext context) {
    final reason = useValueNotifier(_reasonList[0]);
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 30,
              foregroundImage: NetworkImage(avatarUrl),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              teacherName,
              style: CommonTextStyle.partTitle,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text('Lesson Time'),
                Text(
                  lessonTime,
                  style: CommonTextStyle.partTitle,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'What was the reason you cancel this booking?',
              style: CommonTextStyle.partTitle,
            ),
            const SizedBox(
              height: 5,
            ),
            CommonDropdownButton(
              selection: reason,
              items: _reasonList,
              hintText: 'Choose reason',
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              maxLines: 1,
              autofocus: false,
              cursorColor: ColorName.primary,
              decoration: CommonTextFieldStyle.primaryInputDecoration
                  .customCopyWith(hintText: 'Additional Notes'),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () => context.router.root.pop(), child: const Text('Later')),
                const SizedBox(
                  width: 10,
                ),
                OutlinedButton(
                  onPressed: () {
                    onSubmit?.call(_reasonList.indexWhere((element) => element == reason.value));
                    context.router.root.pop();
                  },
                  style: CommonButtonStyle.primaryButtonStyle,
                  child: const Text(
                    'Submit',
                    style: TextStyle(color: ColorName.background),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
