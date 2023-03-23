import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/application/teacher/teachers_notifier.dart';

final teachersProvider = StateNotifierProvider.autoDispose<TeachersNotifier, TeachersState>((ref) {
  return TeachersNotifier();
});
