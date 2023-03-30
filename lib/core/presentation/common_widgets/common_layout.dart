import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lettutor/core/presentation/routing/app_router.dart';

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
        endDrawer: Drawer(
            // backgroundColor: Colors.red,
            child: ListView(
          children: [
            ListTile(
              onTap: () => context.router.replace(const LoginRoute()),
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
            )
          ],
        )),
        appBar: appBar,
        body: body,
        drawer: drawer,
        bottomNavigationBar: bottomNavigationBar,
      ),
    );
  }
}
