import 'package:dartz/dartz.dart';
import 'package:lettutor/core/infrastructure/failure.dart';
import 'package:lettutor/infrastructure/teacher/models/paginated_tutors.dart';
import 'package:lettutor/infrastructure/teacher/models/teacher_schedule_result.dart';
import 'package:lettutor/infrastructure/teacher/models/tutor_detail_model.dart';
import 'package:lettutor/infrastructure/teacher/params/book_class_param.dart';
import 'package:lettutor/infrastructure/teacher/params/detail_teacher_param.dart';
import 'package:lettutor/infrastructure/teacher/params/list_teacher_param.dart';
import 'package:lettutor/infrastructure/teacher/params/search_teacher_param.dart';
import 'package:lettutor/infrastructure/teacher/params/teacher_favorite_param.dart';
import 'package:lettutor/infrastructure/teacher/params/teacher_schedule_param.dart';
import 'package:lettutor/service/http_service.dart';

class TeacherRepository {
  final HttpService _httpService;
  TeacherRepository(this._httpService);
  PaginatedTutors? paginatedTutors;

  Future<Either<Failure, Tutors>> getListTeacher(int perPage, int page) async {
    final result = await _httpService.getData<PaginatedTutors>(GetListTeacherParam(perPage, page));
    return result.fold((l) => left(l), (r) {
      paginatedTutors = r;

      return right(Tutors(
          count: r.tutors.count,
          rows: r.tutors.rows.map((e) {
            return e.copyWith(
                isFavorite: r.favoriteTutor
                        .indexWhere((favoriteTutor) => favoriteTutor.secondInfo?.id == e.userId) !=
                    -1);
          }).toList()));
    });
  }

  Future<Either<Failure, Tutors>> searchTeacher(
      String? keyword, List<String>? specialties, int page) async {
    final result = await _httpService.postData<Tutors>(
        SearchTeacherParam(keyword: keyword, specialties: specialties, page: page));
    return result.fold((l) => left(l), (r) {
      return right(r.copyWith(
          rows: r.rows.map((e) {
        return e.copyWith(
            isFavorite: paginatedTutors?.favoriteTutor
                    .indexWhere((favoriteTutor) => favoriteTutor.secondInfo?.id == e.userId) !=
                -1);
      }).toList()));
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
      null;
      return null;
    }, (r) => r);
  }

  Future<Either<Failure, List<ScheduleOfTutor>>> getTeacherSchedule(String tutorId) async {
    final result = await _httpService.getData<TeacherScheduleResult>(TeacherScheduleParam(tutorId));

    return result.fold((l) => left(l), (r) => right(r.scheduleOfTutor ?? []));
  }

  Future<Either<Failure, Unit>> updateFavorite(String tutorId) async {
    final result = await _httpService.postData<Unit>(ToggleFavoriteParam(tutorId));

    return result;
  }

  Future<Either<Failure, Unit>> bookClass(String scheduleDetailId, String note) async {
    final result = await _httpService.postData<Unit>(BookClassParam(scheduleDetailId, note));
    return result;
  }
}
