import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:lettutor/infrastructure/course/models/course_detail.dart';
import 'package:lettutor/infrastructure/course/models/paginated_courses.dart';
import 'package:lettutor/infrastructure/teacher/models/paginated_tutors.dart';

import '../core/infrastructure/request_param.dart';

class HttpService {
  final Dio _dio;
  HttpService(this._dio);

  Future getData<T>(IParam param) async {
    final response = await _dio.get(
      param.link,
      queryParameters: param.json,
    );
    final jsonData = jsonDecode(response.data);
  }

  Future postData(IParam param) async {
    final response = await _dio.post(param.link, data: param.json);
    return jsonDecode(response.data);
  }

  Future putData(IParam param) async {
    final response = await _dio.put(param.link, data: param.json);
    return jsonDecode(response.data);
  }
}

T _mapJsonToData<T>(Map<String, dynamic> json) {
  dynamic result;
  switch (T.runtimeType) {
    case PaginatedTutors:
      result = PaginatedTutors.fromJson(json);
      break;
    case CourseDetail:
      result = CourseDetail.fromJson(json);
      break;
    case PaginatedCourses:
      result = PaginatedCourses.fromJson(json);
      break;
  }
  return result as T;
}
