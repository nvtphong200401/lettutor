import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:lettutor/core/infrastructure/failure.dart';
import 'package:lettutor/infrastructure/courses/models/category_model.dart';
import 'package:lettutor/infrastructure/courses/models/course_model.dart';
import 'package:lettutor/infrastructure/courses/params/get_category_param.dart';
import 'package:lettutor/infrastructure/courses/params/get_list_book_param.dart';
import 'package:lettutor/infrastructure/courses/params/get_list_course_param.dart';
import 'package:lettutor/service/http_service.dart';

class CourseRepository {
  final HttpService _httpService;
  CourseRepository(this._httpService);

  Future<Either<Failure, Data>> getListCourses({String? query, List<String>? categories}) async {
    final res = await _httpService.getData<ListCoursesResult>(
        GetListCourseParam(page: 1, size: 100, query: query, categories: categories));
    return res.fold((l) => left(l), (r) => right(r.data ?? const Data(count: 0, rows: [])));
  }

  Future<Either<Failure, Data>> getListBooks(
      {String? query, int perPage = 9, int page = 1, List<String>? categories}) async {
    final res = await _httpService.getData<ListCoursesResult>(
        GetListBookParam(page: page, size: perPage, query: query, categories: categories));
    return res.fold((l) => left(l), (r) => right(r.data ?? const Data(count: 0, rows: [])));
  }

  Future<Either<Failure, ListCategoryResult>> getCategories() async {
    log('call not done');
    final res = await _httpService.getData<ListCategoryResult>(GetCategoryParam());
    log('call done');
    log(res.fold((l) => l.toString(), (r) => r.rows!.toList().toString()));
    return res;
  }
}
