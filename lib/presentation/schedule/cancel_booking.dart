import 'package:auto_route/auto_route.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lettutor/core/presentation/common_styles/common_styles.dart';
import 'package:lettutor/core/presentation/common_styles/textfield_style.dart';
import 'package:lettutor/gen/colors.gen.dart';

final _reasonList = [
  'Reschedule at another time',
  'Busy at that time',
  'Asked by the tutor',
  'Other',
];

class CancelBookingDialog extends StatelessWidget {
  const CancelBookingDialog(
      {super.key,
      required this.avatarUrl,
      required this.teacherName,
      required this.lessonTime,
      this.onSubmit});
  final String avatarUrl;
  final String teacherName;
  final String lessonTime;
  final void Function()? onSubmit;

  @override
  Widget build(BuildContext context) {
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
            HookBuilder(builder: (context) {
              final selection = useState<String?>(null);
              return DropdownButton2(
                  dropdownStyleData: const DropdownStyleData(
                    offset: Offset(0, 30),
                    width: 250,
                  ),
                  isExpanded: true,
                  buttonStyleData: ButtonStyleData(
                    padding: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorName.grey, width: 1.5),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  underline: const SizedBox.shrink(),
                  value: selection.value,
                  menuItemStyleData: const MenuItemStyleData(
                    height: 44,
                  ),
                  onChanged: (value) {
                    selection.value = value.toString();
                  },
                  hint: const Text(
                    'Choose reason',
                    style: TextStyle(color: ColorName.grey),
                  ),
                  items: _reasonList
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList());
            }),
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
                TextButton(
                    onPressed: () => context.router.root.pop(),
                    child: const Text('Later')),
                const SizedBox(
                  width: 10,
                ),
                OutlinedButton(
                  onPressed: () {
                    onSubmit?.call();
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
