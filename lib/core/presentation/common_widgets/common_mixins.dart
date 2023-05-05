import 'package:flutter/material.dart';

class WhiteBoxContainer extends StatelessWidget {
  const WhiteBoxContainer({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Theme.of(context).scaffoldBackgroundColor,
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
          color: Theme.of(context).appBarTheme.backgroundColor,
        ),
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(vertical: 12),
        child: child);
  }
}
