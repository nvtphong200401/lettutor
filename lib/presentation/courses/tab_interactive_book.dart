import 'package:flutter/material.dart';
import 'package:lettutor/core/presentation/common_styles/text_style.dart';
import 'package:lettutor/gen/colors.gen.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key, this.placeHolderString = 'No data'});
  final String placeHolderString;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 50,
        ),
        const Icon(
          Icons.inbox_rounded,
          color: ColorName.partDesc,
          size: 35,
        ),
        Text(
          placeHolderString,
          style: CommonTextStyle.partDesc,
        )
      ],
    );
  }
}
