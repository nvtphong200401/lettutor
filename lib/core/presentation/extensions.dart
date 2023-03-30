import 'package:flutter/material.dart';
import 'package:lettutor/infrastructure/schedule/models/schedule_list_model.dart';

extension BuildContextX on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;
}

extension GroupByDate on List<ScheduleModel> {
  Map<DateTime, List<ScheduleModel>> groupByDate() {
    Map<DateTime, List<ScheduleModel>> group = {};
    for (var schedule in this) {
      final date = schedule.scheduleDetailInfo?.scheduleInfo?.date ?? DateTime.now();
      if (group.containsKey(date)) {
        group[date]?.add(schedule);
      } else {
        group[date] = [schedule];
      }
    }
    return group.map((key, value) {
      value.sort((a, b) {
        int timeA = a.scheduleDetailInfo?.startPeriodTimestamp ?? 0;
        int timeB = b.scheduleDetailInfo?.startPeriodTimestamp ?? 0;
        if (timeA > timeB) {
          return 1;
        }
        return -1;
      });
      return MapEntry(key, value);
    });
  }
}
