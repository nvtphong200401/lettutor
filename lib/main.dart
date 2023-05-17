import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/core/locales/app_locale.dart';
import 'package:lettutor/core/presentation/routing/app_router.dart';
import 'package:lettutor/core/presentation/themes.dart';
import 'package:lettutor/gen/colors.gen.dart';
import 'package:lettutor/shared/auth_providers.dart';
import 'package:lettutor/shared/core_providers.dart';
import 'package:lettutor/shared/history_providers.dart';
import 'package:lettutor/shared/schedule_providers.dart';
import 'package:lettutor/shared/settings_provider.dart';
import 'package:lettutor/shared/user_providers.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // Pass all uncaught errors from the framework to Crashlytics.
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  // cameras = await availableCameras();
  final pref = await SharedPreferences.getInstance();
  await GetStorage.init();
  await FlutterLocalization.instance.init(
      mapLocales: [MapLocale('en', AppLocale.en), const MapLocale('vi', AppLocale.vn)],
      initLanguageCode: 'vi');
  runApp(ProviderScope(
    overrides: [localStorageProvider.overrideWithValue(pref)],
    child: const MyApp(),
  ));
}

class MyApp extends StatefulHookConsumerWidget {
  const MyApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    final appRouter = useMemoized(() => AppRouter());
    ref.listen(userNotifierProvider, (prev, user) {
      user.when(
          data: (data) {
            if (prev?.isLoading ?? false) {
              appRouter.pushAndPopUntil(const MyHomeRoute(), predicate: (_) => false);
            }
          },
          error: (_, __) {
            appRouter.replace(
              const LoginRoute(),
              // predicate: (_) => false,
            );
          },
          loading: () {});
    });
    ref.listen(authNotifierProvider, (previous, next) {
      next.maybeWhen(
        orElse: () {},
        authenticated: () {
          ref.read(userNotifierProvider.notifier).getUserInfo();
        },
      );
    });

    FlutterLocalization.instance.onTranslatedLanguage = (locale) {
      setState(() {});
    };

    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ref.watch(themeProvider),
      supportedLocales: FlutterLocalization.instance.supportedLocales,
      localizationsDelegates: FlutterLocalization.instance.localizationsDelegates,
      // ThemeData(
      //   textTheme: GoogleFonts.poppinsTextTheme()
      //       .copyWith(bodyMedium: const TextStyle(color: ColorName.textColor)),
      //   primarySwatch: Colors.blue,
      //   primaryColor: ColorName.primary,
      //   scaffoldBackgroundColor: ColorName.background,
      //   appBarTheme: const AppBarTheme(
      //       backgroundColor: ColorName.background, foregroundColor: ColorName.primary),
      //   // colorScheme:
      //   //     const ColorScheme.light(background: ColorName.background, primary: ColorName.primary),
      // ),
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> with TickerProviderStateMixin {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final navItem = {
      AppLocale.teacher.getString(context): Icons.people_rounded,
      AppLocale.schedule.getString(context): Icons.book_rounded,
      AppLocale.history.getString(context): Icons.timer_rounded,
      AppLocale.courses.getString(context): Icons.list_rounded,
    };
    return AutoTabsScaffold(
      // appBarBuilder: (context, tabsRouter) {
      //   return const CommonAppBar();
      // },
      routes: const [
        ListTeacherRouter(),
        BookingStudentRoute(),
        HistoryStudentRoute(),
        CoursesRouter(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: const TextStyle(color: ColorName.primary),
          selectedItemColor: ColorName.primary,
          items: navItem.entries
              .map((entry) => BottomNavigationBarItem(
                    icon: Icon(
                      entry.value,
                    ),
                    label: entry.key,
                    backgroundColor: ColorName.background,
                  ))
              .toList(),
          onTap: (index) {
            if (index == 1 && tabsRouter.activeIndex != index) {
              ref.read(scheduleNotifierProvider.notifier).getSchedule();
            } else if (index == 2 && tabsRouter.activeIndex != index) {
              ref.read(historyNotifierProvider.notifier).getHistory();
            }
            tabsRouter.setActiveIndex(index);
          },
          currentIndex: tabsRouter.activeIndex,
        );
      },
    );
    // return DismissKeyboardScaffold(
    //   appBar: const CommonAppBar(),
    //   bottomNavigationBar: BottomNavigationBar(
    //     type: BottomNavigationBarType.fixed,
    //     selectedLabelStyle: const TextStyle(color: ColorName.primary),
    //     selectedItemColor: ColorName.primary,
    //     items: navItem.entries
    //         .map((entry) => BottomNavigationBarItem(
    //               icon: Icon(
    //                 entry.value,
    //               ),
    //               label: entry.key,
    //               backgroundColor: ColorName.background,
    //             ))
    //         .toList(),
    //     currentIndex: activeIndex,
    //     onTap: (index) {
    //       setState(() {
    //         activeIndex = index;
    //       });
    //     },
    //   ),
    //   body: tabList[activeIndex],
    // );
  }
}
