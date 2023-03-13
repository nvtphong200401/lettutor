import 'package:flutter/material.dart';

class DismissKeyboardScaffold extends StatelessWidget {
  const DismissKeyboardScaffold(
      {super.key, this.appBar, this.body, this.drawer, this.bottomNavigationBar});
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? drawer;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        // extendBodyBehindAppBar: true,
        appBar: appBar,
        body: body,
        drawer: drawer,
        bottomNavigationBar: bottomNavigationBar,
      ),
    );
  }
}
