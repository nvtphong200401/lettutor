import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/core/presentation/extensions.dart';
import 'package:lettutor/presentation/history/history_item.dart';

import '../../core/presentation/common_styles/common_styles.dart';
import '../../core/presentation/common_widgets/common_widgets.dart';
import '../../shared/schedule_providers.dart';

class HistoryStudentScreen extends StatelessWidget {
  const HistoryStudentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DismissKeyboardScaffold(
      appBar: const CommonAppBar(),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          CommonHeader(
            avatar: SvgPicture.network(
              'https://sandbox.app.lettutor.com/static/media/history.1e097d10.svg',
              width: 100,
            ),
            title: 'History',
            children: const [
              Text(
                'The following is a list of lessons you have attended',
                style: CommonTextStyle.textSize16,
              ),
              Text(
                'You can review the details of the lessons you have attended',
                style: CommonTextStyle.textSize16,
              )
            ],
          ),
          Consumer(builder: (context, ref, child) {
            return ref.watch(scheduleNotifierProvider).when(
                data: (data) {
                  // get schedule in the future
                  var schedule = data.inHistory();
                  return Column(
                    children: schedule.entries
                        .map((entry) => HistoryItem(date: entry.key, schedules: entry.value))
                        .toList(),
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()));
          }),
        ],
      ),
    );
  }
}
