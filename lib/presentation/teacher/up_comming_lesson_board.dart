import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/presentation/common_styles/common_styles.dart';
import '../../gen/colors.gen.dart';

class UpcommingLessonBoard extends StatelessWidget {
  const UpcommingLessonBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(color: Colors.white),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(colors: [
            Color(0xFF0C3DDF),
            Color(0xFF05179D),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Up comming lesson',
              style: CommonTextStyle.textSize30,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Sun, 05 Mar 23',
                          style: CommonTextStyle.textSize20,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          '1:30 - 1:55',
                          style: CommonTextStyle.textSize20,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CountDownText(endTime: DateTime(2023, 3, 5))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: CommonButtonStyle.primaryButtonStyle
                          .customCopyWith(
                              textColor: ColorName.primary,
                              capsuleShape: true,
                              backgroundColor: ColorName.background),
                      child: Row(
                        children: const [
                          Icon(
                            FontAwesomeIcons.youtube,
                            size: 16,
                            color: ColorName.primary,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Enter lesson room',
                            style: TextStyle(color: ColorName.primary),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Total lesson time is 5 hours 0 minutes',
              style: CommonTextStyle.textSize16.copyWith(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class CountDownText extends StatefulWidget {
  const CountDownText({super.key, required this.endTime});
  final DateTime endTime;

  @override
  State<CountDownText> createState() => _CountDownTextState();
}

class _CountDownTextState extends State<CountDownText> {
  Timer? countDownTimer;
  @override
  void initState() {
    countDownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {});
    });
    super.initState();
  }

  String strDigits(int n) => n.toString().padLeft(2, '0');
  @override
  Widget build(BuildContext context) {
    final distanceTime = widget.endTime.difference(DateTime.now());

    final hours = strDigits(distanceTime.inHours);
    final minutes = strDigits(distanceTime.inMinutes.remainder(60));
    final seconds = strDigits(distanceTime.inSeconds.remainder(60));
    if (distanceTime.inSeconds < 0) {
      countDownTimer?.cancel();
    }
    return Text(
      '(starts in $hours:$minutes:$seconds)',
      style: const TextStyle(color: Colors.yellow),
    );
  }
}
