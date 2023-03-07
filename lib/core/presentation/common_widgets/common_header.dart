import 'package:flutter/material.dart';

import '../common_styles/common_styles.dart';

class CommonHeader extends StatelessWidget {
  const CommonHeader(
      {super.key, required this.avatar, required this.title, this.children});
  final Widget avatar;
  final String title;
  final List<Widget>? children;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        avatar,

        // SvgPicture.network(
        //     'https://sandbox.app.lettutor.com/static/media/history.1e097d10.svg'),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: CommonTextStyle.textSize30,
              ),
              if (children != null) ...children!,
            ],
          ),
        )

        // const Text(
        //   'The following is a list of lessons you have attended',
        //   style: textSize16,
        // ),
        // const Text(
        //   'You can review the details of the lessons you have attended',
        //   style: textSize16,
        // )
      ],
    );
  }
}
