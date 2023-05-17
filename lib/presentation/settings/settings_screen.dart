import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/core/locales/app_locale.dart';
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
            Text(
              AppLocale.settings.getString(context),
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            Table(
              // border: TableBorder.all(
              //     borderRadius: const BorderRadius.only(
              //         topLeft: Radius.circular(5), topRight: Radius.circular(5))),
              children: [
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      AppLocale.language.getString(context),
                      style: const TextStyle(fontSize: 17),
                    ),
                  ),
                  Consumer(builder: (context, ref, child) {
                    final language = ref.watch(languageProvider);
                    return DropdownButton(
                        isExpanded: true,
                        alignment: Alignment.center,
                        icon: const SizedBox.shrink(),
                        underline: const SizedBox.shrink(),
                        value: language,
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
                        onChanged: (value) {
                          if (value != null) {
                            ref.read(languageProvider.notifier).state = value;
                            FlutterLocalization.instance.translate(value);
                          }
                        });
                  })
                ], decoration: const BoxDecoration()),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      AppLocale.theme.getString(context),
                      style: const TextStyle(fontSize: 17),
                    ),
                  ),
                  Consumer(builder: (context, ref, child) {
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
                  })
                ])
              ],
            ),
            // ListTile(
            //   dense: true,
            //   contentPadding: EdgeInsets.zero,
            //   trailing: const SizedBox.shrink(),
            //   leading: Text(
            //     AppLocale.language.getString(context),
            //     style: const TextStyle(fontSize: 17),
            //   ),
            //   title: Consumer(builder: (context, ref, child) {
            //     final language = ref.watch(languageProvider);
            //     return DropdownButton(
            //         isExpanded: true,
            //         alignment: Alignment.center,
            //         icon: const SizedBox.shrink(),
            //         underline: const SizedBox.shrink(),
            //         value: language,
            //         items: contries.entries
            //             .map((e) => DropdownMenuItem(
            //                   alignment: Alignment.center,
            //                   value: e.key,
            //                   child: Image.asset(
            //                     e.value,
            //                     width: 30,
            //                     height: 30,
            //                   ),
            //                 ))
            //             .toList(),
            //         onChanged: (value) {
            //           if (value != null) {
            //             ref.read(languageProvider.notifier).state = value;
            //             FlutterLocalization.instance.translate(value);
            //           }
            //         });
            //   }),
            // ),
            // ListTile(
            //   dense: true,
            //   contentPadding: EdgeInsets.zero,
            //   leading: Text(
            //     AppLocale.theme.getString(context),
            //     style: const TextStyle(fontSize: 17),
            //   ),
            //   title: Consumer(builder: (context, ref, child) {
            //     return DropdownButton(
            //         isExpanded: true,
            //         icon: const SizedBox.shrink(),
            //         underline: const SizedBox.shrink(),
            //         value: ref.watch(themeProvider),
            //         items: theme.entries
            //             .map((e) => DropdownMenuItem(
            //                   alignment: Alignment.center,
            //                   value: e.key,
            //                   child: e.value,
            //                 ))
            //             .toList(),
            //         onChanged: (value) {
            //           if (value != null) {
            //             ref.read(themeProvider.notifier).state = value;
            //           }
            //         });
            //   }),
            // )
          ],
        ),
      ),
    );
  }
}
