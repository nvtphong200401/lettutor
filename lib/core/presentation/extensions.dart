import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
      final d = DateTime.parse(DateFormat('yyyy-MM-dd').format(date));
      if (group.containsKey(d)) {
        group[d]?.add(schedule);
      } else {
        group[d] = [schedule];
      }
    }
    return group.sort();
  }

  Map<DateTime, List<ScheduleModel>> inHistory() {
    final myList = [...this];
    myList.removeWhere((element) =>
        (element.scheduleDetailInfo?.scheduleInfo?.startTimestamp.toLocal() ?? DateTime.now())
            .difference(DateTime.now())
            .inSeconds >
        0);
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
    // var schedule = myList.groupByDate();
    return group;
  }

  Map<String, List<ScheduleModel>> inFuture() {
    final myList = [...this];
    myList.removeWhere((element) =>
        (element.scheduleDetailInfo?.scheduleInfo?.startTimestamp.toLocal() ?? DateTime.now())
            .difference(DateTime.now())
            .inSeconds <
        0);
    // var schedule = myList.groupByDate();
    Map<String, List<ScheduleModel>> group = {};
    for (var schedule in myList) {
      final date =
          schedule.scheduleDetailInfo?.scheduleInfo?.startTimestamp.toLocal() ?? DateTime.now();
      final d = DateTime.parse(DateFormat('yyyy-MM-dd').format(date));
      final key = '$d~${schedule.scheduleDetailInfo?.scheduleInfo?.tutorId}';
      if (group.containsKey(key)) {
        group[key]?.add(schedule);
      } else {
        group[key] = [schedule];
      }
    }
    group.sort();
    return group;
  }

  MapEntry<DateTime, List<ScheduleModel>>? getUpcoming() {
    final myList = [...this];
    myList.removeWhere((element) =>
        (element.scheduleDetailInfo?.scheduleInfo?.endTimestamp.toLocal() ?? DateTime.now())
            .difference(DateTime.now())
            .inSeconds <
        0);

    final upcomings = myList.groupByDate();
    if (upcomings.isEmpty) return null;
    var result = upcomings.entries.first;
    for (var schedule in upcomings.entries) {
      if (result.key.difference(schedule.key).inMinutes > 0) {
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

  Map<String, String> categories() {
    Map<String, String> group = {};
    for (var course in this) {
      for (Category cate in course.categories ?? []) {
        if (cate.id != null) {
          group[cate.id ?? ''] = cate.title ?? '';
        }
      }
    }
    return group;
  }
}

extension IntToDateLocal on int? {
  DateTime toLocal() {
    return DateTime.fromMillisecondsSinceEpoch(this ?? 0);
  }

  String toHourAndMinLocal() {
    return DateFormat('HH:mm').format(toLocal());
  }
}

extension SortScheduleX on Map<DateTime, List<ScheduleModel>> {
  Map<DateTime, List<ScheduleModel>> sort() {
    return map((key, value) {
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

extension SortScheduleString on Map<String, List<ScheduleModel>> {
  Map<String, List<ScheduleModel>> sort() {
    return map((key, value) {
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

// extension DateTimeEx on DateTime {
//   String toHourAndMin() {
//     return DateFormat('HH:mm').format(this);
//   }
// }

extension StringX on String {
  DateTime toDateTime() {
    final date = split('-');
    return DateTime(int.parse(date[0]), int.parse(date[1]), int.parse(date[2]));
  }
}
