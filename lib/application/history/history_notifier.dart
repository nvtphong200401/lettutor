import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/application/schedule/schedule_notifier.dart';

import '../../infrastructure/schedule/schedule_repository.dart';

class HistoryNotifier extends StateNotifier<ScheduleState> {
  HistoryNotifier(this._scheduleRepository) : super(const ScheduleState.loading()) {
    getHistory();
  }

  final ScheduleRepository _scheduleRepository;

  Future<void> getHistory({int perPage = 9, int page = 1}) async {
    log('get history');
    state = const ScheduleState.loading();
    final result = await _scheduleRepository.getHistoryList(perPage, page);
    if (mounted) {
      state = result.fold(
          (l) => state.maybeMap(
                orElse: () => state,
                loading: (value) => ScheduleState.data([], 0, page),
              ),
          (r) => ScheduleState.data(r.rows ?? [], r.count ?? 0, page));
    }
  }
}
