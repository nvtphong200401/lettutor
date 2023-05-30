import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:lettutor/core/infrastructure/failure.dart';
import 'package:lettutor/infrastructure/courses/models/category_model.dart';
import 'package:lettutor/infrastructure/courses/models/course_model.dart';
import 'package:lettutor/infrastructure/schedule/models/schedule_list_model.dart';
import 'package:lettutor/infrastructure/teacher/models/list_feedback_model.dart';
import 'package:lettutor/infrastructure/teacher/models/teacher_schedule_result.dart';
import 'package:lettutor/infrastructure/teacher/models/tutor_detail_model.dart';
import 'package:lettutor/infrastructure/user/models/user_model.dart' as usermodel;

import '../infrastructure/authen/models/auth_result.dart';
import '../infrastructure/course/models/course_detail.dart';
import '../infrastructure/course/models/paginated_courses.dart';
import '../infrastructure/teacher/models/paginated_tutors.dart';

Future<Either<Failure, T>> requestWrapper<T>(Future<Response> call) async {
  try {
    final response = await call;
    final jsonData = response.data;
    // log('$jsonData');
    return right(_mapJsonToData<T>(jsonData));
  } on DioError catch (err) {
    log('error ${err.response?.data}');
    await FirebaseCrashlytics.instance
        .recordError(err, StackTrace.current, reason: err.response?.data['message'] ?? err.message);
    return left(
        Failure(statusCode: err.response?.statusCode, message: err.response?.data['message']));
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
    case usermodel.UserModel:
      result = usermodel.UserModel.fromJson(json);
      break;
    case ListCoursesResult:
      result = ListCoursesResult.fromJson(json);
      break;
    case ListCategoryResult:
      result = ListCategoryResult.fromJson(json);
      break;
    case TeacherScheduleResult:
      result = TeacherScheduleResult.fromJson(json);
      break;
    case Unit:
      result = unit;
      break;
    case usermodel.User:
      result = usermodel.User.fromJson(json);
      break;
    case ListFeedbackResult:
      result = ListFeedbackResult.fromJson(json);
      break;
    default:
      result = json;
      break;
  }
  return result as T;
}
