import 'package:flutter/material.dart';

import '../../../core/presentation/common_styles/common_styles.dart';
import '../../../gen/colors.gen.dart';

class TopicItem extends StatelessWidget {
  const TopicItem({super.key, required this.topic, this.onPressed});
  final String topic;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: CommonButtonStyle.primaryButtonStyle
            .customCopyWith(backgroundColor: ColorName.cardhistory, capsuleShape: false),
        onPressed: onPressed,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            topic,
            style: CommonTextStyle.textSize16,
          ),
        ));
  }
}
