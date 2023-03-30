import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/application/schedule/schedule_notifier.dart';
import 'package:lettutor/infrastructure/schedule/schedule_repository.dart';
import 'package:lettutor/shared/core_providers.dart';

final scheduleRepositoryProvider = Provider.autoDispose<ScheduleRepository>((ref) {
  return ScheduleRepository(ref.watch(authenticatedHttpService));
});

final scheduleNotifierProvider =
    StateNotifierProvider.autoDispose<ScheduleNotifier, ScheduleState>((ref) {
  return ScheduleNotifier(ref.watch(scheduleRepositoryProvider));
});
