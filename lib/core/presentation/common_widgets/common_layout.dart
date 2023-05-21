import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/core/locales/app_locale.dart';
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
        // floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: isLogin
            ? null
            : Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: FloatingActionButton(
                  heroTag: null,
                  onPressed: () {
                    context.router.push(const ChatGPTRoute());
                  },
                  backgroundColor: ColorName.primary,
                  child: const Icon(Icons.chat),
                ),
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
                    title: Text(AppLocale.profile.getString(context)),
                  ),
                  ListTile(
                    leading: const Icon(Icons.menu_book),
                    title: Text(AppLocale.becomeTutor.getString(context)),
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
                    title: Text(AppLocale.settings.getString(context)),
                  ),
                  ListTile(
                    onTap: () {
                      ref.read(localStorageProvider).clear();
                      context.router.replace(const LoginRoute());
                    },
                    leading: const Icon(Icons.logout),
                    title: Text(AppLocale.logout.getString(context)),
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
