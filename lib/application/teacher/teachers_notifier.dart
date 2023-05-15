import 'dart:async';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/infrastructure/teacher/models/paginated_tutors.dart';
import 'package:lettutor/infrastructure/teacher/teacher_repo.dart';

import '../../core/infrastructure/failure.dart';
import '../../infrastructure/teacher/models/teacher_schedule_result.dart';
import '../../infrastructure/teacher/models/tutor_detail_model.dart';

part 'teachers_notifier.freezed.dart';

@freezed
class TeachersState with _$TeachersState {
  const TeachersState._();
  const factory TeachersState.loading({
    required List<TeacherModel> teachers,
    required int count,
  }) = _Loading;
  factory TeachersState.data({
    required List<TeacherModel> teachers,
    required int count,
    required int currentPage,
    String? errorMessage,
  }) = _Data;

  Map<String, TeacherModel> get currentData =>
      Map.fromEntries(teachers.map((e) => MapEntry(e.id ?? '1', e)));
}

class TeachersNotifier extends StateNotifier<TeachersState> {
  TeachersNotifier(this._teacherRepository)
      : super(const TeachersState.loading(teachers: [], count: 99)) {
    getTeacherList();
  }
  final TeacherRepository _teacherRepository;
  Timer? timer;

  Future getTeacherList({int perPage = 9, int currPage = 1}) async {
    if (currPage < 1 || currPage > (state.count / perPage).ceil()) return;
    final result = await _teacherRepository.getListTeacher(perPage, currPage);
    state = result.fold((l) => state,
        (r) => TeachersState.data(teachers: r.rows, count: r.count, currentPage: currPage));
  }

  void searchTeacher(
      {String? keyword, List<String>? specialties, String? nationality, int currPage = 1}) {
    state = const TeachersState.loading(teachers: [], count: 0);
    timer?.cancel();
    timer = Timer(const Duration(seconds: 1), () async {
      final result =
          await _teacherRepository.searchTeacher(keyword, specialties, nationality, currPage);
      state = result.fold((l) => state,
          (r) => TeachersState.data(teachers: r.rows, count: r.count, currentPage: currPage));
    });
  }
}

class TutorDetailNotifier extends StateNotifier<TeacherModel?> {
  TutorDetailNotifier(this.tutor, this._teacherRepository) : super(tutor) {
    log(tutor?.userId ?? 'hi');
    getSchedulesAndCourses();
  }
  final TeacherModel? tutor;
  final TeacherRepository _teacherRepository;

  Future updateFavorite() async {
    _teacherRepository.updateFavorite(tutor?.userId ?? '');
    state = state?.copyWith(isFavorite: !(state?.isFavorite ?? false));
  }

  Future getSchedulesAndCourses() async {
    // final schedule = await _teacherRepository.getTeacherSchedule(tutor?.userId ?? '');
    // final detail = await _teacherRepository.getTutorDetail(tutor?.userId ?? '');
    if (tutor?.userId != null) {
      final result = await Future.wait([
        _teacherRepository.getTeacherSchedule(tutor?.userId ?? ''),
        _teacherRepository.getTutorDetail(tutor?.userId ?? '')
      ]);
      final schedule = result[0] as Either<Failure, List<ScheduleOfTutor>>;
      final detail = result[1] as TutorDetail?;
      if (mounted) {
        state = state?.copyWith(
            courses: (detail)?.user.courses, schedules: (schedule).fold((l) => [], (r) => r));
      }
    }
  }

  Future bookClass(String scheduleDetailId, String note) async {
    final schedule = await _teacherRepository.bookClass(scheduleDetailId, note);
    if (mounted) {
      state = schedule.fold((l) => state, (r) {
        log('success');
        final index = state?.schedules
                ?.indexWhere((element) => element.scheduleDetails?.first.id == scheduleDetailId) ??
            -1;
        if (index == -1) return state;
        final newSchedules = <ScheduleOfTutor>[...(state?.schedules ?? [])];
        newSchedules[index] = newSchedules[index].copyWith(isBooked: true);
        return state?.copyWith(schedules: newSchedules);
      });
    }
  }
}
