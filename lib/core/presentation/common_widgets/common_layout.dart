import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/core/presentation/routing/app_router.dart';
import 'package:lettutor/gen/colors.gen.dart';
import 'package:lettutor/shared/core_providers.dart';

class DismissKeyboardScaffold extends ConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        floatingActionButton: isLogin
            ? null
            : FloatingActionButton(
                onPressed: () {
                  context.router.push(const ChatGPTRoute());
                },
                backgroundColor: ColorName.primary,
                child: const Icon(Icons.chat),
              ),
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
                    leading: const Icon(Icons.menu_book),
                    title: const Text('Become a tutor'),
                    onTap: () {
                      context.router.pop();
                      context.router.push(const BecomeTeacherRoute());
                    },
                  ),
                  ListTile(
                    onTap: () {
                      context.router.pop();
                      context.router.push(const SettingsRoute());
                    },
                    leading: const Icon(Icons.settings),
                    title: const Text('Settings'),
                  ),
                  ListTile(
                    onTap: () {
                      ref.read(localStorageProvider).clear();
                      context.router.replace(const LoginRoute());
                    },
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
