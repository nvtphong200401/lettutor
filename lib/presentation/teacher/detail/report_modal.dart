import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lettutor/core/presentation/common_styles/common_styles.dart';
import 'package:lettutor/core/presentation/common_styles/textfield_style.dart';
import 'package:lettutor/core/presentation/common_widgets/constant.dart';
import 'package:lettutor/gen/colors.gen.dart';

class ReportModal extends HookWidget {
  const ReportModal({super.key});

  @override
  Widget build(BuildContext context) {
    final txtComment = useTextEditingController();
    return ListView(
      padding: paddingLayout,
      children: [
        Row(
          children: const [
            Icon(
              Icons.info,
              color: ColorName.primary,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                'Help us understand what\'s happenning',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            )
          ],
        ),
        buildCheckBox('This tutor is annoying me', txtComment),
        buildCheckBox('This profile is pretending be someone or is fake', txtComment),
        buildCheckBox('Inapproriate profile photo', txtComment),
        SizedBox(
          height: 80,
          child: TextFormField(
            controller: txtComment,
            cursorColor: ColorName.primary,
            expands: true,
            maxLines: null,
            minLines: null,
            decoration: CommonTextFieldStyle.primaryInputDecoration.customCopyWith(
                hintText: 'Please let us know details about your problem',
                hintStyle: const TextStyle(color: ColorName.grey, fontSize: 15)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            OutlinedButton(
              onPressed: () {
                context.router.pop();
              },
              style: CommonButtonStyle.primaryButtonStyle.customCopyWith(
                backgroundColor: ColorName.background,
                foregroundColor: ColorName.textButton,
                borderColor: ColorName.textButton,
                overlayColor: ColorName.activeTag,
              ),
              child: const Text(
                'Cancel',
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            OutlinedButton(
              onPressed: () {
                context.router.pop();
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text(
                    'Success',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.green,
                ));
              },
              style: CommonButtonStyle.primaryButtonStyle.customCopyWith(
                  foregroundColor: ColorName.background, borderColor: ColorName.textButton),
              child: const Text('Submit'),
            )
          ],
        )
        // const CommonTextFormField(
        //   autofocus: false,
        //   hintText: 'Please let us know details about your problem',
        // )
      ],
    );
  }

  Widget buildCheckBox(
    String title,
    TextEditingController txtController,
  ) {
    return HookBuilder(builder: (context) {
      final isChecked = useState(false);
      useEffect(() {
        onChange() {
          if (isChecked.value == true) {
            txtController.text += '$title\n';
          } else {
            txtController.text = txtController.text.replaceAll('$title\n', '');
          }
        }

        isChecked.addListener(onChange);
        return () => isChecked.removeListener(onChange);
      }, [isChecked]);
      return GestureDetector(
        onTap: () {
          isChecked.value = !isChecked.value;
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: [
              Checkbox(
                  value: isChecked.value,
                  onChanged: (value) {
                    isChecked.value = value ?? false;
                  }),
              Expanded(
                  child: Text(
                title,
                style: CommonTextStyle.textSize15,
              ))
            ],
          ),
        ),
      );
    });
  }
}
