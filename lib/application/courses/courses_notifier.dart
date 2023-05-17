import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/infrastructure/courses/course_repository.dart';

import '../../infrastructure/courses/models/course_model.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'courses_notifier.freezed.dart';

@freezed
class CoursesState with _$CoursesState {
  const CoursesState._();
  const factory CoursesState.data(List<CourseModel> schedules, int count, int currentPage) =
      _CoursesData;
  const factory CoursesState.loading() = _CoursesLoading;
  const factory CoursesState.error(Object error, StackTrace stackTrace) = _CoursesError;
}

class CoursesNotifier extends StateNotifier<CoursesState> {
  CoursesNotifier(this._courseRepository) : super(const CoursesState.loading()) {
    getCourseList();
  }
  final CourseRepository _courseRepository;

  Future<void> getCourseList({String? query, int page = 1, List<String>? categories}) async {
    state = const CoursesState.loading();
    log(categories.toString());
    final result = await _courseRepository.getListCourses(query: query, categories: categories);
    state = result.fold((l) => CoursesState.error(l, StackTrace.current), (r) {
      debugPrint(r.toString());
      return CoursesState.data(r.rows ?? [], r.count ?? 0, page);
    });
  }

  Future<void> getBookList(
      {String? query, int perPage = 9, int page = 1, List<String>? categories}) async {
    state = const CoursesState.loading();
    final result = await _courseRepository.getListBooks(
        query: query, page: page, perPage: perPage, categories: categories);
    state = result.fold((l) => CoursesState.error(l, StackTrace.current), (r) {
      debugPrint(r.toString());
      return CoursesState.data(r.rows ?? [], r.count ?? 0, page);
    });
  }
}
