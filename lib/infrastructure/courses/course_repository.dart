import 'package:dartz/dartz.dart';
import 'package:lettutor/core/infrastructure/failure.dart';
import 'package:lettutor/infrastructure/courses/models/course_model.dart';
import 'package:lettutor/infrastructure/courses/params/get_list_course_param.dart';
import 'package:lettutor/service/http_service.dart';

class CourseRepository {
  final HttpService _httpService;
  CourseRepository(this._httpService);

  Future<Either<Failure, List<CourseModel>>> getListCourses({String? query}) async {
    final res = await _httpService
        .getData<ListCoursesResult>(GetListCourseParam(page: 1, size: 100, query: query));
    return res.fold((l) => left(l), (r) {
      return right(r.data?.rows ?? []);
    });
  }
}
