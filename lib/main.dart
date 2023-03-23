import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/core/presentation/routing/app_router.dart';
import 'package:lettutor/gen/colors.gen.dart';

late List<CameraDescription> cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends HookWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final appRouter = useMemoized(() => AppRouter());
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme()
            .copyWith(bodyMedium: const TextStyle(color: ColorName.textColor)),
        primarySwatch: Colors.blue,
        primaryColor: ColorName.primary,
        scaffoldBackgroundColor: ColorName.background,
        appBarTheme: const AppBarTheme(
            backgroundColor: ColorName.background, foregroundColor: ColorName.primary),
        // colorScheme:
        //     const ColorScheme.light(background: ColorName.background, primary: ColorName.primary),
      ),
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}

const navItem = {
  'Teacher': Icons.people_rounded,
  'Schedule': Icons.book_rounded,
  'History': Icons.timer_rounded,
  'Courses': Icons.list_rounded,
};

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
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
          onTap: tabsRouter.setActiveIndex,
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
