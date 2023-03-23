import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../infrastructure/teacher/models/teacher_model.dart';

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
      Map.fromEntries(teachers.map((e) => MapEntry(e.id, e)));
}

class TeachersNotifier extends StateNotifier<TeachersState> {
  TeachersNotifier() : super(const TeachersState.loading(teachers: [])) {
    getTeacherList();
  }

  Future getTeacherList() async {
    state = TeachersState.data(teachers: [TeacherModel.init(), TeacherModel.init(id: '2')]);
  }
}

class TeacherModelNotifier extends StateNotifier<TeacherModel> {
  TeacherModelNotifier(this.teacherModel) : super(teacherModel);
  final TeacherModel teacherModel;

  Future updateFavorite() async {
    state = state.copyWith(isFavorite: !state.isFavorite);
  }
}
