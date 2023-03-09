import 'package:flutter/material.dart';
import 'package:lettutor/core/presentation/common_styles/text_style.dart';
import 'package:lettutor/gen/colors.gen.dart';

class TabInteractiveBooks extends StatelessWidget {
  const TabInteractiveBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          Icons.inbox_rounded,
          color: ColorName.partDesc,
          size: 35,
        ),
        Text(
          'No data',
          style: CommonTextStyle.partDesc,
        )
      ],
    );
  }
}
