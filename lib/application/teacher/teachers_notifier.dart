import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../infrastructure/teacher/models/teacher_model.dart';

part 'teachers_notifier.freezed.dart';

@freezed
class TeachersState with _$TeachersState {
  const TeachersState._();
  const factory TeachersState.loading() = _Loading;
  factory TeachersState.data({
    required List<TeacherModel> teachers,
    String? errorMessage,
  }) = _Data;

  Map<String, TeacherModel> get teachersMap => when(
      loading: () => {},
      data: (teachers, errorMessage) {
        return Map.fromEntries(teachers.map((e) => MapEntry<String, TeacherModel>(e.id, e)));
      });
}

class TeachersNotifier extends StateNotifier<TeachersState> {
  TeachersNotifier() : super(const TeachersState.loading()) {
    getTeacherList();
  }

  Future getTeacherList() async {
    state = TeachersState.data(teachers: [TeacherModel.init(), TeacherModel.init(id: '2')]);
  }

  Future updateFavorite(String teacherId) async {
    final newMap = Map<String, TeacherModel>.from(state.teachersMap);
    final teacher = newMap[teacherId]!;
    newMap[teacherId] = teacher.copyWith(isFavorite: !teacher.isFavorite);
    final teachers = List<TeacherModel>.from(newMap.values);
    state = TeachersState.data(teachers: teachers);
  }
}
