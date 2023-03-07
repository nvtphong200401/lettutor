import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:lettutor/core/presentation/common_widgets/common_widgets.dart';
import 'package:lettutor/core/presentation/common_widgets/constant.dart';
import 'package:lettutor/gen/colors.gen.dart';

import '../teacher/teacher_info.dart';

class BookingStudentScreen extends StatelessWidget
    with BuildWhiteContainerMixin {
  const BookingStudentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DismissKeyboardScaffold(
      appBar: const CommonAppBar(),
      body: ListView(
        padding: const EdgeInsets.all(5),
        children: [
          CommonHeader(
            avatar: SvgPicture.network(
                'https://sandbox.app.lettutor.com/static/media/calendar-check.7cf3b05d.svg'),
            title: 'Schedule',
            children: const [
              Text(
                'Here is a list of the sessions you have booked',
                style: textSize16,
              ),
              Text(
                'You can track when the meeting starts, join the meeting with one click or can cancel the meeting before 2 hours',
                style: textSize16,
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
                  style: partTitleDesc,
                ),
                Table(
                  children: const [
                    TableRow(children: [
                      Text('Name'),
                      Text('3.pdf'),
                      Text('Page'),
                      Text('1'),
                    ]),
                  ],
                ),
                Table(
                  columnWidths: const {
                    0: IntrinsicColumnWidth(flex: 1),
                    1: IntrinsicColumnWidth(flex: 3),
                  },
                  children: const [
                    TableRow(children: [
                      Text('Description'),
                      Text('Some long textttttttttttttttttttttttt')
                    ]),
                  ],
                ),
              ],
            ),
          ),
          greyBoxContainer(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                DateFormat('EEE, dd MMM yy').format(DateTime.now()),
                style: textSize24.copyWith(fontWeight: FontWeight.w700),
              ),
              Text(
                '${DateTime.now().difference(DateTime(2023, 3, 5)).inDays} days ago',
                style: const TextStyle(fontStyle: FontStyle.italic),
              ),
              const SizedBox(
                height: 10,
              ),
              whiteBoxContainer(
                child: const TeacherInfo(
                  favIcon: false,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              whiteBoxContainer(
                  child: Column(
                children: const [
                  Text('Lesson Time: 08:30 - 09:25'),
                ],
              )),
              const SizedBox(
                height: 5,
              ),
              whiteBoxContainer(
                child: buildSection(),
              ),
              const SizedBox(
                height: 5,
              ),
              whiteBoxContainer(child: buildSection()),
              const SizedBox(
                height: 5,
              ),
              ExpansionTile(
                controlAffinity: ListTileControlAffinity.leading,
                expandedAlignment: Alignment.centerLeft,
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                backgroundColor: Colors.white,
                collapsedBackgroundColor: Colors.white,
                textColor: ColorName.textColor,
                iconColor: Colors.black,
                childrenPadding: const EdgeInsets.symmetric(horizontal: 20),
                // tilePadding: const EdgeInsets.symmetric(vertical: 12),
                title: const Text('Request for lesson'),
                leading: const SizedBox.shrink(),
                trailing: null,
                children: const [Text('This is comment')],
              ),
            ],
          ))
        ],
      ),
    );
  }

  Widget buildSection() {
    return Row(
      children: [
        const Text('Sesson 1: 08:30 - 08:55'),
        const Spacer(),
        SizedBox(
          height: 30,
          child: OutlinedButton(
            onPressed: () {},
            style: const ButtonStyle(
              foregroundColor: MaterialStatePropertyAll(Colors.red),
              side: MaterialStatePropertyAll(BorderSide(color: Colors.red)),
            ),
            child: Row(
              children: const [
                Icon(
                  Icons.cancel,
                  size: 18,
                ),
                SizedBox(
                  width: 3,
                ),
                Text('Cancel'),
              ],
            ),
          ),
        )
      ],
    );
  }
}
