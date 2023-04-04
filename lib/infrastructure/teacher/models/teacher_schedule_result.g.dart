// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_schedule_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TeacherScheduleResult _$$_TeacherScheduleResultFromJson(
        Map<String, dynamic> json) =>
    _$_TeacherScheduleResult(
      message: json['message'] as String?,
      scheduleOfTutor: (json['scheduleOfTutor'] as List<dynamic>?)
          ?.map((e) => ScheduleOfTutor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TeacherScheduleResultToJson(
        _$_TeacherScheduleResult instance) =>
    <String, dynamic>{
      'message': instance.message,
      'scheduleOfTutor': instance.scheduleOfTutor,
    };

_$_ScheduleOfTutor _$$_ScheduleOfTutorFromJson(Map<String, dynamic> json) =>
    _$_ScheduleOfTutor(
      id: json['id'] as String?,
      tutorId: json['tutorId'] as String?,
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
      startTimestamp: json['startTimestamp'] as int?,
      endTimestamp: json['endTimestamp'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      isBooked: json['isBooked'] as bool?,
      scheduleDetails: (json['scheduleDetails'] as List<dynamic>?)
          ?.map((e) => ScheduleDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ScheduleOfTutorToJson(_$_ScheduleOfTutor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tutorId': instance.tutorId,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'startTimestamp': instance.startTimestamp,
      'endTimestamp': instance.endTimestamp,
      'createdAt': instance.createdAt?.toIso8601String(),
      'isBooked': instance.isBooked,
      'scheduleDetails': instance.scheduleDetails,
    };

_$_ScheduleDetail _$$_ScheduleDetailFromJson(Map<String, dynamic> json) =>
    _$_ScheduleDetail(
      startPeriodTimestamp: json['startPeriodTimestamp'] as int?,
      endPeriodTimestamp: json['endPeriodTimestamp'] as int?,
      id: json['id'] as String?,
      scheduleId: json['scheduleId'] as String?,
      startPeriod: json['startPeriod'] as String?,
      endPeriod: json['endPeriod'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      bookingInfo: json['bookingInfo'] as List<dynamic>?,
      isBooked: json['isBooked'] as bool?,
    );

Map<String, dynamic> _$$_ScheduleDetailToJson(_$_ScheduleDetail instance) =>
    <String, dynamic>{
      'startPeriodTimestamp': instance.startPeriodTimestamp,
      'endPeriodTimestamp': instance.endPeriodTimestamp,
      'id': instance.id,
      'scheduleId': instance.scheduleId,
      'startPeriod': instance.startPeriod,
      'endPeriod': instance.endPeriod,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'bookingInfo': instance.bookingInfo,
      'isBooked': instance.isBooked,
    };
