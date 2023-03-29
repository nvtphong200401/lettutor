import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/infrastructure/teacher/models/paginated_tutors.dart';
import 'package:lettutor/infrastructure/teacher/teacher_repo.dart';

part 'teachers_notifier.freezed.dart';

@freezed
class TeachersState with _$TeachersState {
  const TeachersState._();
  const factory TeachersState.loading({
    required List<TeacherModel> teachers,
  }) = _Loading;
  factory TeachersState.data({
    required List<TeacherModel> teachers,
    String? errorMessage,
  }) = _Data;

  Map<String, TeacherModel> get currentData =>
      Map.fromEntries(teachers.map((e) => MapEntry(e.id ?? '1', e)));
}

class TeachersNotifier extends StateNotifier<TeachersState> {
  TeachersNotifier(this._teacherRepository) : super(const TeachersState.loading(teachers: [])) {
    getTeacherList();
  }
  final TeacherRepository _teacherRepository;

  Future getTeacherList() async {
    final result = await _teacherRepository.getListTeacher(9, 1);
    state = result.fold((l) => state, (r) => TeachersState.data(teachers: r));
  }
}

class TutorDetailNotifier extends StateNotifier<TeacherModel> {
  TutorDetailNotifier(this.tutor) : super(tutor);
  final TeacherModel tutor;

  Future updateFavorite() async {
    state = state.copyWith(isFavorite: !(state.isFavorite ?? false));
  }
}
