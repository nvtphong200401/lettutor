import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lettutor/core/presentation/common_widgets/common_mixins.dart';
import 'package:lettutor/gen/colors.gen.dart';

import '../../core/presentation/common_widgets/constant.dart';
import '../teacher/teacher_info.dart';

class BookingCard extends StatelessWidget with BuildWhiteContainerMixin {
  const BookingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return greyBoxContainer(
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
          height: 5,
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
        whiteBoxContainer(
          child: ExpandablePanel(
            header: const Padding(
              padding: EdgeInsets.only(top: 2.0, left: 10),
              child: Text('Request for lesson'),
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
                iconSize: 18,
                expandIcon: Icons.arrow_forward_ios,
                // collapseIcon: Icons.keyboard_arrow_down,
                iconPadding: EdgeInsets.zero),
          ),
        ),
        // ),
        SizedBox(
          width: 50,
          child: ElevatedButton(
            style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(ColorName.primary)),
            onPressed: () {},
            child: const Text(
              'Go to meeting',
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    ));
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
