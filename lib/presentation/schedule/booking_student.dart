import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/core/presentation/common_widgets/common_widgets.dart';
import 'package:lettutor/core/presentation/extensions.dart';
import 'package:lettutor/gen/colors.gen.dart';
import 'package:lettutor/presentation/schedule/booking_card.dart';
import 'package:lettutor/shared/schedule_providers.dart';

import '../../core/presentation/common_styles/common_styles.dart';

class BookingStudentScreen extends StatelessWidget {
  const BookingStudentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DismissKeyboardScaffold(
      appBar: const CommonAppBar(),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          CommonHeader(
            avatar: SvgPicture.network(
              'https://sandbox.app.lettutor.com/static/media/calendar-check.7cf3b05d.svg',
              width: 100,
            ),
            title: 'Schedule',
            children: const [
              Text(
                'Here is a list of the sessions you have booked',
                style: CommonTextStyle.textSize16,
              ),
              Text(
                'You can track when the meeting starts, join the meeting with one click or can cancel the meeting before 2 hours',
                style: CommonTextStyle.textSize16,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 48,
              bottom: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Latest Book',
                  style: CommonTextStyle.partTitleDesc,
                ),
                const SizedBox(
                  height: 10,
                ),
                Table(
                  border: TableBorder.all(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(5), topRight: Radius.circular(5))),
                  children: [
                    TableRow(children: [
                      _tableItem(text: 'Name', bgColor: ColorName.cardhistory),
                      _tableItem(text: '3.pdf', textColor: ColorName.primary),
                      _tableItem(text: 'Page', bgColor: ColorName.cardhistory),
                      _tableItem(text: '1'),
                    ], decoration: const BoxDecoration()),
                  ],
                ),
                Table(
                  columnWidths: const {
                    0: IntrinsicColumnWidth(flex: 1),
                    1: IntrinsicColumnWidth(flex: 3),
                  },
                  border: const TableBorder(
                    left: BorderSide(),
                    verticalInside: BorderSide(),
                    bottom: BorderSide(),
                    right: BorderSide(),
                  ),
                  children: [
                    TableRow(children: [
                      _tableItem(text: 'Description', bgColor: ColorName.cardhistory),
                      _tableItem(text: ''),
                    ], decoration: BoxDecoration(borderRadius: BorderRadius.circular(10))),
                  ],
                ),
              ],
            ),
          ),
          Consumer(builder: (context, ref, child) {
            return ref.watch(scheduleNotifierProvider).when(
                data: (data) {
                  var schedule = data.groupByDate();
                  return Column(
                    children: schedule.entries
                        .map((entry) => BookingCard(
                              date: entry.key,
                              schedules: entry.value,
                            ))
                        .toList(),
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()));
          }),
        ],
      ),
    );
  }

  Widget _tableItem({required String text, Color? textColor, Color? bgColor}) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: bgColor,
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
