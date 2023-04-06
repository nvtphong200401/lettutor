import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:lettutor/core/infrastructure/failure.dart';
import 'package:lettutor/infrastructure/courses/models/course_model.dart';
import 'package:lettutor/infrastructure/schedule/models/schedule_list_model.dart';
import 'package:lettutor/infrastructure/teacher/models/teacher_schedule_result.dart';
import 'package:lettutor/infrastructure/teacher/models/tutor_detail_model.dart';
import 'package:lettutor/infrastructure/user/models/user_model.dart';

import '../infrastructure/authen/models/auth_result.dart';
import '../infrastructure/course/models/course_detail.dart';
import '../infrastructure/course/models/paginated_courses.dart';
import '../infrastructure/teacher/models/paginated_tutors.dart';

Future<Either<Failure, T>> requestWrapper<T>(Future<Response> call) async {
  try {
    final response = await call;
    final jsonData = response.data;
    return right(_mapJsonToData<T>(jsonData));
  } on DioError catch (err) {
    log('phongdz ${err.message}');
    return left(Failure(statusCode: err.response?.statusCode, message: err.message));
  }
}

T _mapJsonToData<T>(Map<String, dynamic> json) {
  dynamic result;
  switch (T) {
    case PaginatedTutors:
      result = PaginatedTutors.fromJson(json);
      break;
    case CourseDetail:
      result = CourseDetail.fromJson(json);
      break;
    case PaginatedCourses:
      result = PaginatedCourses.fromJson(json);
      break;
    case AuthResult:
      result = AuthResult.fromJson(json);
      break;
    case TutorDetail:
      result = TutorDetail.fromJson(json);
      break;
    case ScheduleListModel:
      result = ScheduleListModel.fromJson(json);
      break;
    case Tutors:
      result = Tutors.fromJson(json);
      break;
    case UserModel:
      result = UserModel.fromJson(json);
      break;
    case ListCoursesResult:
      result = ListCoursesResult.fromJson(json);
      break;
    case TeacherScheduleResult:
      result = TeacherScheduleResult.fromJson(json);
      break;
    case Unit:
      log(json.toString());
      result = unit;
      break;
  }
  return result as T;
}
