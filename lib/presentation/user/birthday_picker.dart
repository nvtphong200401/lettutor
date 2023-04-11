import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';

import '../../gen/colors.gen.dart';

class BirthdayPicker extends StatelessWidget {
  const BirthdayPicker({
    super.key,
    required this.birthday,
  });

  final ValueNotifier<DateTime> birthday;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final result = await showCalendarDatePicker2Dialog(
            context: context,
            value: [birthday.value],
            config: CalendarDatePicker2WithActionButtonsConfig(),
            dialogSize: const Size(300, 300));
        if (result != null) {
          birthday.value = result[0]!;
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        width: double.infinity,
        height: 45,
        decoration: BoxDecoration(
          border: Border.all(color: ColorName.grey, width: 1.5),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: HookBuilder(builder: (context) {
          final birthdayValue = useValueListenable(birthday);
          return Text(
            DateFormat('yyyy-MM-dd').format(birthdayValue),
            style: const TextStyle(fontSize: 16),
          );
        }),
      ),
    );
  }
}
