import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/infrastructure/schedule/schedule_repository.dart';

import '../../infrastructure/schedule/models/schedule_list_model.dart';

part 'schedule_notifier.freezed.dart';

@freezed
class ScheduleState with _$ScheduleState {
  const ScheduleState._();
  const factory ScheduleState.data(List<ScheduleModel> schedules, int count, int currentPage) =
      _ScheduleData;
  const factory ScheduleState.loading() = _ScheduleLoading;
}

class ScheduleNotifier extends StateNotifier<ScheduleState> {
  ScheduleNotifier(this._scheduleRepository) : super(const ScheduleState.loading()) {
    getSchedule();
  }
  final ScheduleRepository _scheduleRepository;

  Future<void> getSchedule({int perPage = 9, int page = 1}) async {
    state = const ScheduleState.loading();
    final result = await _scheduleRepository.getScheduleList(perPage, page);
    if (mounted) {
      state =
          result.fold((l) => state, (r) => ScheduleState.data(r.rows ?? [], r.count ?? 0, page));
    }
  }
}

class SingleScheduleNotifier extends StateNotifier<ScheduleModel> {
  SingleScheduleNotifier(this.scheduleModel) : super(scheduleModel);
  final ScheduleModel scheduleModel;
}
