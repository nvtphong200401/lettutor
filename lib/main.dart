import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lettutor/gen/colors.gen.dart';
import 'package:lettutor/presentation/authen/login_screen.dart';
import 'package:lettutor/presentation/courses/courses_screen.dart';
import 'package:lettutor/presentation/history/history_student_screen.dart';
import 'package:lettutor/presentation/schedule/booking_student.dart';
import 'package:lettutor/presentation/teacher/list_teacher_screen.dart';

import 'core/presentation/common_widgets/common_appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme()
              .copyWith(bodyMedium: const TextStyle(color: ColorName.textColor)),
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: ColorName.background,
          appBarTheme: const AppBarTheme(
              backgroundColor: ColorName.background, foregroundColor: ColorName.primary),
          colorScheme: const ColorScheme.light(background: ColorName.background)),
      home: const LoginScreen(),
    );
  }
}

const navItem = {
  'Teacher': Icons.people_rounded,
  'Schedule': Icons.book_rounded,
  'History': Icons.timer_rounded,
  'Courses': Icons.list_rounded,
};
const tabList = [
  ListTeachScreen(),
  BookingStudentScreen(),
  HistoryStudentScreen(),
  CoursesScreen(),
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(),
      bottomNavigationBar: BottomNavigationBar(
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
        currentIndex: activeIndex,
        onTap: (index) {
          setState(() {
            activeIndex = index;
          });
        },
      ),
      body: tabList[activeIndex],
    );
  }
}
