import 'package:flutter/material.dart';
import 'package:lettutor/infrastructure/courses/models/course_model.dart';
import 'package:lettutor/infrastructure/schedule/models/schedule_list_model.dart';

extension BuildContextX on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;
}

extension GroupByDate on List<ScheduleModel> {
  Map<DateTime, List<ScheduleModel>> groupByDate() {
    Map<DateTime, List<ScheduleModel>> group = {};
    for (var schedule in this) {
      final date =
          schedule.scheduleDetailInfo?.scheduleInfo?.startTimestamp.toLocal() ?? DateTime.now();
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

  Map<DateTime, List<ScheduleModel>> inHistory() {
    var schedule = groupByDate()
      ..removeWhere((key, value) => key.difference(DateTime.now()).inDays > 0);
    return schedule;
  }

  Map<DateTime, List<ScheduleModel>> inFuture() {
    var schedule = groupByDate()
      ..removeWhere((key, value) => key.difference(DateTime.now()).inDays < 0);
    return schedule;
  }

  MapEntry<DateTime, List<ScheduleModel>>? getUpcoming() {
    final upcomings = inFuture();
    if (upcomings.isEmpty) return null;
    var result = upcomings.entries.first;
    for (var schedule in upcomings.entries) {
      if (result.key.difference(schedule.key).inDays < 0) {
        result = schedule;
      }
    }
    return result;
  }
}

extension GroupByCategory on List<CourseModel> {
  Map<String, List<CourseModel>> groupByCategory() {
    Map<String, List<CourseModel>> group = {};
    for (var course in this) {
      final category = course.categories?[0].title ?? '';
      if (group.containsKey(category)) {
        group[category]?.add(course);
      } else {
        group[category] = [course];
      }
    }
    return group;
  }
}

extension IntToDateLocal on int? {
  DateTime toLocal() {
    return DateTime.fromMillisecondsSinceEpoch(this ?? 0);
  }
}

// extension NullableIntToDateLocal on int? {
//   DateTime toLocal() {
//     return DateTime.fromMillisecondsSinceEpoch(this ?? 0);
//   }
// }
