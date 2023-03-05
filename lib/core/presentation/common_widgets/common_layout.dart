import 'package:flutter/material.dart';

class DismissKeyboardScaffold extends StatelessWidget {
  const DismissKeyboardScaffold(
      {super.key, this.appBar, this.body, this.drawer});
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? drawer;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: appBar,
        body: body,
        drawer: drawer,
      ),
    );
  }
}
