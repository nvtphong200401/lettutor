import 'package:flutter/material.dart';
import 'package:lettutor/core/presentation/common_styles/common_styles.dart';
import 'package:lettutor/core/presentation/common_styles/textfield_style.dart';
import 'package:lettutor/core/presentation/common_widgets/constant.dart';
import 'package:lettutor/gen/colors.gen.dart';

class ReportModal extends StatelessWidget {
  const ReportModal({super.key});

  @override
  Widget build(BuildContext context) {
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
        buildCheckBox('This tutor is annoying me'),
        buildCheckBox('This profile is pretending be someone or is fake'),
        buildCheckBox('Inapproriate profile photo'),
        SizedBox(
          height: 80,
          child: TextFormField(
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
              onPressed: () {},
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
              onPressed: () {},
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

  Widget buildCheckBox(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        children: [
          Checkbox(value: false, onChanged: (value) {}),
          Expanded(
              child: Text(
            title,
            style: CommonTextStyle.textSize15,
          ))
        ],
      ),
    );
  }
}
