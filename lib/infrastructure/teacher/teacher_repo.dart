import 'package:dartz/dartz.dart';
import 'package:lettutor/core/infrastructure/failure.dart';
import 'package:lettutor/infrastructure/teacher/models/paginated_tutors.dart';
import 'package:lettutor/infrastructure/teacher/params/list_teacher_param.dart';
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

  Future<List<FavoriteTutor>> getFavoriteTeachers() async {
    if (paginatedTutors == null) {
      final result = await getListTeacher(9, 1);
      return result.fold((l) => [], (r) => paginatedTutors?.favoriteTutor ?? []);
    }
    return paginatedTutors?.favoriteTutor ?? [];
  }
}
