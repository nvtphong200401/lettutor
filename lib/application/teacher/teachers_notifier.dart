import 'dart:async';

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
  Timer? timer;

  Future getTeacherList() async {
    final result = await _teacherRepository.getListTeacher(9, 1);
    state = result.fold((l) => state, (r) => TeachersState.data(teachers: r));
  }

  void searchTeacher(String keyword) {
    state = const TeachersState.loading(teachers: []);
    timer?.cancel();
    timer = Timer(const Duration(seconds: 1), () async {
      final result = await _teacherRepository.searchTeacher(keyword);
      state = result.fold((l) => state, (r) => TeachersState.data(teachers: r));
    });
  }
}

class TutorDetailNotifier extends StateNotifier<TeacherModel?> {
  TutorDetailNotifier(this.tutor, this._teacherRepository) : super(tutor) {
    getSchedulesAndCourses();
  }
  final TeacherModel? tutor;
  final TeacherRepository _teacherRepository;

  Future updateFavorite() async {
    _teacherRepository.updateFavorite(tutor?.userId ?? '');
    state = state?.copyWith(isFavorite: !(state?.isFavorite ?? false));
  }

  Future getSchedulesAndCourses() async {
    final schedule = _teacherRepository.getTeacherSchedule(tutor?.userId ?? '');
    final detail = _teacherRepository.getTutorDetail(tutor?.userId ?? '');
    if (mounted) {
      state = state?.copyWith(
          courses: (await detail)?.user.courses,
          schedules: (await schedule).fold((l) => [], (r) => r));
    }
  }

  Future bookClass(String scheduleDetailId) async {
    final schedule = await _teacherRepository.bookClass(scheduleDetailId);
    state = schedule.fold((l) => state, (r) {
      final newSchedules = [...(state?.schedules ?? [])];
      newSchedules.removeWhere((element) => element.id == scheduleDetailId);
      return state?.copyWith(schedules: newSchedules);
    });
  }
}
