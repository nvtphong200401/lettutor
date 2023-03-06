import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lettutor/core/presentation/common_widgets/constant.dart';
import 'package:lettutor/presentation/history/history_item.dart';

import '../../core/presentation/common_widgets/common_widgets.dart';

class HistoryStudentScreen extends StatelessWidget {
  const HistoryStudentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DismissKeyboardScaffold(
      appBar: const CommonAppBar(),
      body: ListView(
        padding: const EdgeInsets.all(5),
        children: [
          CommonHeader(
            avatar: SvgPicture.network(
                'https://sandbox.app.lettutor.com/static/media/history.1e097d10.svg'),
            title: 'History',
            children: const [
              Text(
                'The following is a list of lessons you have attended',
                style: textSize16,
              ),
              Text(
                'You can review the details of the lessons you have attended',
                style: textSize16,
              )
            ],
          ),
          const HistoryItem(),
          const HistoryItem(),
          const HistoryItem(),
        ],
      ),
    );
  }
}
