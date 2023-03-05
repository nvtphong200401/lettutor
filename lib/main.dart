import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lettutor/gen/colors.gen.dart';
import 'package:lettutor/presentation/teacher/detail/teacher_detail_screen.dart';

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
          textTheme: GoogleFonts.poppinsTextTheme().copyWith(
              bodyMedium: const TextStyle(color: ColorName.textColor)),
          primarySwatch: Colors.blue,
          colorScheme:
              const ColorScheme.light(background: ColorName.background)),
      home: const TeacherDetailScreen(),
    );
  }
}
