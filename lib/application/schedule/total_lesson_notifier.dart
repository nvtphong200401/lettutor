import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/infrastructure/schedule/schedule_repository.dart';

class TotalLessonNotifier extends StateNotifier<AsyncValue<int>> {
  TotalLessonNotifier(this._repository) : super(const AsyncLoading()) {
    getTotal();
  }
  final ScheduleRepository _repository;
  Future getTotal() async {
    final res = await _repository.getTotalLearned();
    state = res.fold((l) {
      return AsyncError(l.message ?? 'An error occured', StackTrace.current);
    }, (r) {
      return AsyncData(r);
    });
  }
}
