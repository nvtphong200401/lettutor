import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/infrastructure/courses/course_repository.dart';

import '../../infrastructure/courses/models/course_model.dart';

class CoursesNotifier extends StateNotifier<AsyncValue<List<CourseModel>>> {
  CoursesNotifier(this._courseRepository) : super(const AsyncLoading()) {
    getCourseList();
  }
  final CourseRepository _courseRepository;

  Future<void> getCourseList() async {
    final result = await _courseRepository.getListCourses();
    state = result.fold((l) => AsyncError(l, StackTrace.current), (r) => AsyncData(r));
  }
}
