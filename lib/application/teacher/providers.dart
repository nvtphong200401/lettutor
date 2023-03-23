import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/application/teacher/teachers_notifier.dart';
import 'package:lettutor/infrastructure/teacher/models/teacher_model.dart';

final teachersProvider = StateNotifierProvider.autoDispose<TeachersNotifier, TeachersState>((ref) {
  return TeachersNotifier();
});

final teacherProvider = StateNotifierProvider.family
    .autoDispose<TeacherModelNotifier, TeacherModel, String>((ref, arg) {
  return TeacherModelNotifier(ref.watch(teachersProvider).currentData[arg]!);
});
