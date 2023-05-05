import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/core/presentation/common_widgets/common_widgets.dart';
import 'package:lettutor/core/presentation/common_widgets/constant.dart';
import 'package:lettutor/shared/settings_provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DismissKeyboardScaffold(
      isLogin: true,
      appBar: const CommonAppBar(
        isLogin: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: paddingLayout,
          children: [
            const Text(
              'Settings',
              style: TextStyle(fontSize: 30),
            ),
            ListTile(
              dense: true,
              contentPadding: EdgeInsets.zero,
              trailing: const SizedBox.shrink(),
              leading: const Text(
                'Language',
                style: TextStyle(fontSize: 17),
              ),
              title: DropdownButton(
                  isExpanded: true,
                  alignment: Alignment.center,
                  icon: const SizedBox.shrink(),
                  underline: const SizedBox.shrink(),
                  value: 'vi-VN',
                  items: contries.entries
                      .map((e) => DropdownMenuItem(
                            alignment: Alignment.center,
                            value: e.key,
                            child: Image.asset(
                              e.value,
                              width: 30,
                              height: 30,
                            ),
                          ))
                      .toList(),
                  onChanged: (value) {}),
            ),
            ListTile(
              dense: true,
              contentPadding: EdgeInsets.zero,
              leading: const Text(
                'Theme',
                style: TextStyle(fontSize: 17),
              ),
              title: Consumer(builder: (context, ref, child) {
                return DropdownButton(
                    isExpanded: true,
                    icon: const SizedBox.shrink(),
                    underline: const SizedBox.shrink(),
                    value: ref.watch(themeProvider),
                    items: theme.entries
                        .map((e) => DropdownMenuItem(
                              alignment: Alignment.center,
                              value: e.key,
                              child: e.value,
                            ))
                        .toList(),
                    onChanged: (value) {
                      if (value != null) {
                        ref.read(themeProvider.notifier).state = value;
                      }
                    });
              }),
            )
          ],
        ),
      ),
    );
  }
}
