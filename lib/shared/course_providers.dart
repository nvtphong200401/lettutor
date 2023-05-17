import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/application/courses/courses_notifier.dart';
import 'package:lettutor/infrastructure/courses/course_repository.dart';
import 'package:lettutor/infrastructure/courses/models/course_model.dart';
import 'package:lettutor/shared/core_providers.dart';

final courseRepoProvider = Provider.autoDispose<CourseRepository>((ref) {
  return CourseRepository(ref.watch(authenticatedHttpService));
});

final coursesNotifierProvider =
    StateNotifierProvider.autoDispose<CoursesNotifier, CoursesState>((ref) {
  return CoursesNotifier(ref.watch(courseRepoProvider));
});

final listCourseProvider =
    Provider.autoDispose<List<CourseModel>>((ref) => ref.watch(coursesNotifierProvider).maybeWhen(
          orElse: () => [],
          data: (data, count, page) => data,
        ));

final courseInfoProvider = Provider.family
    .autoDispose<CourseModel?, String>((ref, id) => ref.watch(listCourseProvider).firstWhere(
          (element) => element.id == id,
        ));
final courseCategory = FutureProvider.autoDispose<List<Category>>((ref) async {
  final courseRepo = ref.watch(courseRepoProvider);
  final res = await courseRepo.getCategories();
  return res.fold((l) => [], (r) => r.rows ?? []);
});

// final courseCategory = Provider.autoDispose(
//   (ref) {
//     final List<CourseModel> courses = ref.watch(coursesNotifierProvider).maybeWhen(
//       orElse: () {
//         return [];
//       },
//       data: (courses, count, currentPage) {
//         return courses;
//       },
//     );
//     log(courses.categories().values.toString());
//     return courses.categories();
//   },
// );
