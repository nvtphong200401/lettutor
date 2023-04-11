import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lettutor/core/presentation/routing/app_router.dart';

class DismissKeyboardScaffold extends StatelessWidget {
  const DismissKeyboardScaffold(
      {super.key,
      this.appBar,
      this.body,
      this.drawer,
      this.bottomNavigationBar,
      this.isLogin = false});
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? drawer;
  final Widget? bottomNavigationBar;
  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        // extendBodyBehindAppBar: true,
        endDrawer: isLogin
            ? null
            : Drawer(
                // backgroundColor: Colors.red,
                child: ListView(
                children: [
                  ListTile(
                    onTap: () {
                      context.router.pop();
                      context.router.push(const UserProfileRoute());
                    },
                    leading: const Icon(Icons.person),
                    title: const Text('Profile'),
                  ),
                  ListTile(
                    onTap: () => context.router.replace(const LoginRoute()),
                    leading: const Icon(Icons.logout),
                    title: const Text('Logout'),
                  ),
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
