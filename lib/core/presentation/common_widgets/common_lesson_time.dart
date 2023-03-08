import 'package:flutter/material.dart';

import '../common_styles/text_style.dart';

class CommonLessonTime extends StatelessWidget {
  const CommonLessonTime({
    super.key,
    required this.startTime,
    required this.endTime,
    this.axis = Axis.horizontal,
  });
  final String startTime;
  final String endTime;
  final Axis axis;

  @override
  Widget build(BuildContext context) {
    if (axis == Axis.horizontal) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildTime(Colors.blue, startTime),
          const Text(
            ' - ',
            style: CommonTextStyle.textSize16,
          ),
          _buildTime(Colors.red, endTime),
        ],
      );
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildTime(Colors.blue, startTime),
        const SizedBox(
          height: 5,
        ),
        _buildTime(Colors.red, endTime),
      ],
    );
  }

  Widget _buildTime(MaterialColor color, String time) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        // border: Border.all(color: color[200]!),
        color: color[50],
      ),
      child: Text(
        time,
        style: TextStyle(
          color: color[500],
        ),
      ),
    );
  }
}
