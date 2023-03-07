import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lettutor/core/presentation/common_widgets/common_appbar.dart';
import 'package:lettutor/gen/colors.gen.dart';
import 'package:lettutor/presentation/history/history_student_screen.dart';
import 'package:lettutor/presentation/schedule/booking_student.dart';
import 'package:lettutor/presentation/teacher/list_teacher_screen.dart';

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
          colorScheme: const ColorScheme.light(background: ColorName.background)),
      home: const MyHomePage(
        title: 'Test',
      ),
    );
  }
}

const iconList = [
  Icons.people_rounded,
  Icons.book_rounded,
  Icons.timer_rounded,
  Icons.list_rounded,
];
const tabList = [
  ListTeachScreen(),
  BookingStudentScreen(),
  HistoryStudentScreen(),
  HistoryStudentScreen()
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
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: const Duration(milliseconds: 200),
        backgroundColor: ColorName.background,
        color: ColorName.textButton,
        items: const <Widget>[
          Icon(
            Icons.people_rounded,
            size: 24,
            color: Colors.white,
          ),
          Icon(
            Icons.book_rounded,
            size: 24,
            color: Colors.white,
          ),
          Icon(
            Icons.timer_rounded,
            size: 24,
            color: Colors.white,
          ),
          Icon(
            Icons.list_rounded,
            size: 24,
            color: Colors.white,
          )
        ],
        onTap: (index) {
          //Handle button tap
          setState(() {
            activeIndex = index;
          });
        },
      ),
      body: tabList[activeIndex],
    );
  }
}
