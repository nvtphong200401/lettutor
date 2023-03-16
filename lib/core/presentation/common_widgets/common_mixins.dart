import 'package:flutter/material.dart';

import '../../../gen/colors.gen.dart';

class WhiteBoxContainer extends StatelessWidget {
  const WhiteBoxContainer({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      child: child,
    );
  }
}

class GreyBoxContainer extends StatelessWidget {
  const GreyBoxContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: ColorName.cardhistory,
        ),
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(vertical: 12),
        child: child);
  }
}
