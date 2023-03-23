import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:lettutor/core/presentation/common_styles/common_styles.dart';
import 'package:lettutor/core/presentation/common_widgets/common_lesson_time.dart';
import 'package:lettutor/core/presentation/common_widgets/common_mixins.dart';
import 'package:lettutor/gen/colors.gen.dart';
import 'package:lettutor/infrastructure/schedule/models/booking_model.dart';
import 'package:lettutor/presentation/schedule/cancel_booking.dart';

import '../teacher/teacher_info.dart';

class BookingCard extends StatelessWidget {
  const BookingCard({super.key});

  @override
  Widget build(BuildContext context) {
    final bookInfo = BookingModel.init();
    return GreyBoxContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          DateFormat('EEE, dd MMM yy').format(DateTime.now()),
          style: CommonTextStyle.textSize24.copyWith(fontWeight: FontWeight.w700),
        ),
        Text(
          '${DateTime.now().difference(DateTime(2023, 3, 5)).inDays} days ago',
          style: const TextStyle(fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: 10,
        ),
        WhiteBoxContainer(
          child: TeacherInfo(
            info: bookInfo.tutorInfo,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        WhiteBoxContainer(
          child: CommonLessonTime(startTime: bookInfo.startTime, endTime: bookInfo.endTime),
        ),
        const SizedBox(
          height: 1,
        ),
        BookingSession(bookingModel: bookInfo),
        const SizedBox(
          height: 1,
        ),
        BookingSession(bookingModel: bookInfo),
        const SizedBox(
          height: 1,
        ),
        WhiteBoxContainer(
          child: ExpandablePanel(
            header: const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Request for lesson',
              ),
            ),
            collapsed: const SizedBox.shrink(),
            expanded: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Divider(),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Bring your notebooks',
                    // style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ],
            ),
            theme: const ExpandableThemeData(
                iconRotationAngle: 2,
                iconPlacement: ExpandablePanelIconPlacement.left,
                iconSize: 14,
                expandIcon: Icons.arrow_forward_ios,
                // collapseIcon: Icons.keyboard_arrow_down,
                iconPadding: EdgeInsets.only(top: 1)),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        // ),
        SizedBox(
          width: 50,
          child: ElevatedButton(
            style: CommonButtonStyle.primaryButtonStyle.customCopyWith(),
            onPressed: () {},
            child: const Text(
              'Go to meeting',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        )
      ],
    ));
  }
}

class BookingSession extends HookWidget {
  const BookingSession({super.key, required this.bookingModel});
  final BookingModel bookingModel;

  @override
  Widget build(BuildContext context) {
    final tutor = bookingModel.tutorInfo;
    final visible = useState(true);
    return Visibility(
      visible: visible.value,
      child: WhiteBoxContainer(
        child: Row(
          children: [
            Text(
              'Sesson 1: ${bookingModel.startTime} - ${bookingModel.endTime}',
            ),
            const Spacer(),
            GestureDetector(
              onTap: () => showDialog(
                  context: context,
                  builder: (context) => CancelBookingDialog(
                        avatarUrl: tutor.avatar,
                        teacherName: tutor.name,
                        lessonTime: 'Wed, 14 Mar 23',
                        onSubmit: () => visible.value = false,
                      )),
              child: Container(
                decoration: BoxDecoration(
                  color: ColorName.background,
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(100),
                ),
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                child: Row(
                  children: [
                    const Icon(
                      Icons.cancel,
                      size: 12,
                      color: Colors.red,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      'Cancel',
                      style: CommonTextStyle.textSize12.copyWith(color: Colors.red),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
