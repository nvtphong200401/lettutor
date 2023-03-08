import 'package:flutter/material.dart';

import '../../../core/presentation/common_styles/text_style.dart';

class CourseHeader extends StatelessWidget {
  const CourseHeader({super.key, required this.header});
  final String header;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Flexible(
          flex: 1,
          child: Divider(),
        ),
        Text(
          header,
          style: CommonTextStyle.title,
        ),
        const Flexible(
          flex: 1,
          child: Divider(),
        ),
      ],
    );
  }
}
