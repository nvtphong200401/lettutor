import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/gen/colors.gen.dart';
import 'package:lettutor/shared/course_providers.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class CourseDetailScreen extends HookConsumerWidget {
  const CourseDetailScreen(
      {super.key, @pathParam required this.courseId, @pathParam required this.topicId});
  final String courseId;
  final int topicId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final course = ref.watch(courseInfoProvider(courseId));
    return Scaffold(
      body: SfPdfViewer.network(course?.topics?[topicId].nameFile ?? ''),
      appBar: AppBar(
        foregroundColor: ColorName.primary,
        title: Text(
          course?.topics?[topicId].name ?? '',
          style:
              const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: ColorName.primary),
        ),
      ),
    );
  }
}
