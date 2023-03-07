import 'package:flutter/material.dart';

import '../../../gen/colors.gen.dart';
import '../common_styles/button_style.dart';

class CommonTag extends StatelessWidget {
  const CommonTag({super.key, required this.title, this.onPressed});
  final void Function()? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ElevatedButton(
        onPressed: onPressed,
        style: CommonButtonStyle.primaryButtonStyle.customCopyWith(
          backgroundColor: ColorName.activeTag,
          capsuleShape: true,
        ),
        child: Text(
          title,
          style: const TextStyle(color: ColorName.primary),
        ),
      ),
    );
  }
}
