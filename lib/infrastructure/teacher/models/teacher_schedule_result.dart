// To parse this JSON data, do
//
//     final teacherScheduleResult = teacherScheduleResultFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'teacher_schedule_result.freezed.dart';
part 'teacher_schedule_result.g.dart';

TeacherScheduleResult teacherScheduleResultFromJson(String str) =>
    TeacherScheduleResult.fromJson(json.decode(str));

String teacherScheduleResultToJson(TeacherScheduleResult data) => json.encode(data.toJson());

@freezed
class TeacherScheduleResult with _$TeacherScheduleResult {
  const factory TeacherScheduleResult({
    String? message,
    List<ScheduleOfTutor>? scheduleOfTutor,
  }) = _TeacherScheduleResult;

  factory TeacherScheduleResult.fromJson(Map<String, dynamic> json) =>
      _$TeacherScheduleResultFromJson(json);
}

@freezed
class ScheduleOfTutor with _$ScheduleOfTutor {
  const factory ScheduleOfTutor({
    String? id,
    String? tutorId,
    String? startTime,
    String? endTime,
    int? startTimestamp,
    int? endTimestamp,
    DateTime? createdAt,
    bool? isBooked,
    List<ScheduleDetail>? scheduleDetails,
  }) = _ScheduleOfTutor;

  factory ScheduleOfTutor.fromJson(Map<String, dynamic> json) => _$ScheduleOfTutorFromJson(json);
}

@freezed
class ScheduleDetail with _$ScheduleDetail {
  const factory ScheduleDetail({
    int? startPeriodTimestamp,
    int? endPeriodTimestamp,
    String? id,
    String? scheduleId,
    String? startPeriod,
    String? endPeriod,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<dynamic>? bookingInfo,
    bool? isBooked,
  }) = _ScheduleDetail;

  factory ScheduleDetail.fromJson(Map<String, dynamic> json) => _$ScheduleDetailFromJson(json);
}
