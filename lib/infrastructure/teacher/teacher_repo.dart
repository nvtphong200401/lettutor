import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:lettutor/core/infrastructure/failure.dart';
import 'package:lettutor/infrastructure/teacher/models/paginated_tutors.dart';
import 'package:lettutor/infrastructure/teacher/models/tutor_detail_model.dart';
import 'package:lettutor/infrastructure/teacher/params/detail_teacher_param.dart';
import 'package:lettutor/infrastructure/teacher/params/list_teacher_param.dart';
import 'package:lettutor/infrastructure/teacher/params/search_teacher_param.dart';
import 'package:lettutor/service/http_service.dart';

class TeacherRepository {
  final HttpService _httpService;
  TeacherRepository(this._httpService);
  PaginatedTutors? paginatedTutors;

  Future<Either<Failure, List<TeacherModel>>> getListTeacher(int perPage, int page) async {
    final result = await _httpService.getData<PaginatedTutors>(GetListTeacherParam(perPage, page));
    return result.fold((l) => left(l), (r) {
      paginatedTutors = r;

      return right(r.tutors.rows.map((e) {
        return e.copyWith(
            isFavorite: r.favoriteTutor
                    .indexWhere((favoriteTutor) => favoriteTutor.secondInfo?.id == e.userId) !=
                -1);
      }).toList());
    });
  }

  Future<Either<Failure, List<TeacherModel>>> searchTeacher(String keyword) async {
    final result = await _httpService.postData<Tutors>(SearchTeacherParam(keyword));
    return result.fold((l) => left(l), (r) {
      return right(r.rows.map((e) {
        return e.copyWith(
            isFavorite: paginatedTutors?.favoriteTutor
                    .indexWhere((favoriteTutor) => favoriteTutor.secondInfo?.id == e.userId) !=
                -1);
      }).toList());
    });
  }

  Future<List<FavoriteTutor>> getFavoriteTeachers() async {
    if (paginatedTutors == null) {
      final result = await getListTeacher(9, 1);
      return result.fold((l) => [], (r) => paginatedTutors?.favoriteTutor ?? []);
    }
    return paginatedTutors?.favoriteTutor ?? [];
  }

  Future<TutorDetail?> getTutorDetail(String tutorId) async {
    final result = await _httpService.getData<TutorDetail>(GetDetailTeacherParam(tutorId));

    return result.fold((l) {
      log(l.message ?? '');
      null;
      return null;
    }, (r) => r);
  }
}
