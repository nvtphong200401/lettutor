import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/application/teacher/teachers_notifier.dart';
import 'package:lettutor/infrastructure/teacher/models/paginated_tutors.dart';
import 'package:lettutor/infrastructure/teacher/teacher_repo.dart';
import 'package:lettutor/shared/core_providers.dart';

final teacherRepoProvider = Provider.autoDispose<TeacherRepository>(
  (ref) => TeacherRepository(ref.watch(authenticatedHttpService)),
);

final teachersProvider = StateNotifierProvider.autoDispose<TeachersNotifier, TeachersState>((ref) {
  return TeachersNotifier(ref.watch(teacherRepoProvider));
});

final teacherMap = Provider.autoDispose(
  (ref) => ref.watch(teachersProvider).currentData,
);

final teacherCardNotifierProvider = StateNotifierProvider.autoDispose
    .family<TutorDetailNotifier, TeacherModel?, String?>((ref, arg) {
  return TutorDetailNotifier(ref.watch(teacherMap)[arg], ref.watch(teacherRepoProvider));
});
