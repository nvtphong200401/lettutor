import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/application/schedule/schedule_notifier.dart';
import 'package:lettutor/application/schedule/total_lesson_notifier.dart';
import 'package:lettutor/infrastructure/schedule/models/schedule_list_model.dart';
import 'package:lettutor/infrastructure/schedule/schedule_repository.dart';
import 'package:lettutor/shared/core_providers.dart';

final scheduleRepositoryProvider = Provider.autoDispose<ScheduleRepository>((ref) {
  return ScheduleRepository(ref.watch(authenticatedHttpService));
});

final scheduleNotifierProvider =
    StateNotifierProvider.autoDispose<ScheduleNotifier, ScheduleState>((ref) {
  return ScheduleNotifier(ref.watch(scheduleRepositoryProvider));
});

final totalLessonNotifierProvider =
    StateNotifierProvider.autoDispose<TotalLessonNotifier, AsyncValue<int>>((ref) {
  return TotalLessonNotifier(ref.watch(scheduleRepositoryProvider));
});

final scheduleCardNotifier = StateNotifierProvider.autoDispose
    .family<SingleScheduleNotifier, List<ScheduleModel>, List<ScheduleModel>>((ref, list) {
  return SingleScheduleNotifier(list, ref.watch(scheduleRepositoryProvider));
});
