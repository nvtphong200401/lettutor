import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:lettutor/core/presentation/common_styles/common_styles.dart';
import 'package:lettutor/core/presentation/common_styles/textfield_style.dart';
import 'package:lettutor/core/presentation/common_widgets/common_mixins.dart';
import 'package:lettutor/core/presentation/extensions.dart';
import 'package:lettutor/gen/colors.gen.dart';
import 'package:lettutor/infrastructure/teacher/models/teacher_schedule_result.dart';
import 'package:lettutor/shared/teacher_providers.dart';
import 'package:lettutor/shared/user_providers.dart';

class BookDialog extends HookConsumerWidget {
  const BookDialog({super.key, required this.schedule, required this.teacherId});
  final ScheduleOfTutor schedule;
  final String teacherId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final startTime = schedule.startTimestamp.toLocal();
    final endTime = schedule.endTimestamp.toLocal();
    const price = 1; // api: price-of-session
    final int walletAmount = ref.watch(userNotifierProvider).maybeWhen(
          orElse: () => 0,
          data: (data) => int.parse(data.user?.walletInfo?.amount ?? '0'),
        );
    final txtNote = useTextEditingController();
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          const GreyBoxContainer(
            child: Text(
              'Booking Time',
              style: CommonTextStyle.partTitleDesc,
            ),
          ),
          WhiteBoxContainer(
            child: Center(
              child: Text(
                '${DateFormat('HH:mm').format(startTime)} - ${DateFormat('HH:mm').format(endTime)} ${DateFormat('EEE, dd MMMM yyyy').format(startTime)}',
                style: CommonTextStyle.partTitleDesc.copyWith(color: ColorName.primary),
              ),
            ),
          ),
          GreyBoxContainer(
              child: Row(
            children: [
              const Text(
                'Balance',
                style: CommonTextStyle.partTitleDesc,
              ),
              const Spacer(),
              Text(
                'You have ${walletAmount ~/ 100000} lessons left',
                style: CommonTextStyle.partContent.copyWith(color: ColorName.primary),
              )
            ],
          )),
          GreyBoxContainer(
              child: Row(
            children: [
              const Text(
                'Price',
                style: CommonTextStyle.partTitleDesc,
              ),
              const Spacer(),
              Text('1 lesson',
                  style: CommonTextStyle.partContent.copyWith(color: ColorName.primary))
            ],
          )),
          const Text('Notes'),
          TextField(
            controller: txtNote,
            decoration: CommonTextFieldStyle.primaryInputDecoration,
            maxLines: 3,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              OutlinedButton(
                onPressed: () {},
                style: CommonButtonStyle.primaryButtonStyle
                    .customCopyWith(backgroundColor: Colors.white),
                child: const Text('Cancel'),
              ),
              const SizedBox(
                width: 5,
              ),
              OutlinedButton(
                onPressed: () {
                  ref
                      .read(teacherCardNotifierProvider(teacherId).notifier)
                      .bookClass(schedule.scheduleDetails?.first.id ?? '', txtNote.text);
                  context.router.pop();
                },
                style: CommonButtonStyle.primaryButtonStyle
                    .customCopyWith(foregroundColor: Colors.white),
                child: const Text(
                  '>> Book',
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
