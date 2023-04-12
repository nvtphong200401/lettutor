import 'package:flutter/material.dart';

import '../../../gen/colors.gen.dart';
import '../common_styles/button_style.dart';

class CommonTag extends StatelessWidget {
  const CommonTag({super.key, required this.title, this.onPressed});
  final void Function()? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        height: 30,
        child: ElevatedButton(
          onPressed: onPressed,
          style: CommonButtonStyle.primaryButtonStyle.customCopyWith(
            backgroundColor: onPressed != null ? ColorName.inactiveTag : ColorName.activeTag,
            capsuleShape: true,
          ),
          child: Text(
            title,
            style: TextStyle(color: onPressed != null ? ColorName.inActiveText : ColorName.primary),
          ),
        ),
      ),
    );
  }
}
