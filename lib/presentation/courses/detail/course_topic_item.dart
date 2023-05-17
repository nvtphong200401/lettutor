import 'package:flutter/material.dart';

import '../../../core/presentation/common_styles/common_styles.dart';

class TopicItem extends StatelessWidget {
  const TopicItem({super.key, required this.topic, this.onPressed});
  final String topic;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: CommonButtonStyle.primaryButtonStyle.customCopyWith(
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor, capsuleShape: false),
        onPressed: onPressed,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(topic, style: Theme.of(context).textTheme.bodyLarge
              // CommonTextStyle.textSize16,
              ),
        ));
  }
}
