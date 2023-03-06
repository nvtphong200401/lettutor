import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lettutor/core/presentation/common_widgets/common_layout.dart';
import 'package:lettutor/core/presentation/common_widgets/common_widgets.dart';

class BookingStudentScreen extends StatelessWidget {
  const BookingStudentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DismissKeyboardScaffold(
      appBar: const CommonAppBar(),
      body: ListView(
        children: const [],
      ),
    );
  }
}
