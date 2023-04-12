import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/application/history/history_notifier.dart';
import 'package:lettutor/application/schedule/schedule_notifier.dart';
import 'package:lettutor/shared/schedule_providers.dart';

final historyNotifierProvider =
    StateNotifierProvider.autoDispose<HistoryNotifier, ScheduleState>((ref) {
  return HistoryNotifier(ref.watch(scheduleRepositoryProvider));
});
