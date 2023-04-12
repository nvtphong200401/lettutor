import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/infrastructure/schedule/schedule_repository.dart';

import '../../infrastructure/schedule/models/schedule_list_model.dart';

part 'schedule_notifier.freezed.dart';

@freezed
class ScheduleState with _$ScheduleState {
  const ScheduleState._();
  const factory ScheduleState.data(List<ScheduleModel> schedules) = _ScheduleData;
  const factory ScheduleState.loading() = _ScheduleLoading;
}

class ScheduleNotifier extends StateNotifier<ScheduleState> {
  ScheduleNotifier(this._scheduleRepository) : super(const ScheduleState.loading()) {
    getSchedule();
  }
  final ScheduleRepository _scheduleRepository;

  Future<void> getSchedule() async {
    state = const ScheduleState.loading();
    final result = await _scheduleRepository.getScheduleList();
    if (mounted) {
      state = result.fold((l) => state, (r) => ScheduleState.data(r));
    }
  }
}

class SingleScheduleNotifier extends StateNotifier<ScheduleModel> {
  SingleScheduleNotifier(this.scheduleModel) : super(scheduleModel);
  final ScheduleModel scheduleModel;
}
