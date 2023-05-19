import 'package:freezed_annotation/freezed_annotation.dart';
// To parse this JSON data, do
//
//     final scheduleListModel = scheduleListModelFromJson(jsonString);

part 'schedule_list_model.freezed.dart';
part 'schedule_list_model.g.dart';

@freezed
class ScheduleListModel with _$ScheduleListModel {
  const factory ScheduleListModel({
    String? message,
    Data? data,
  }) = _ScheduleListModel;

  factory ScheduleListModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduleListModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    int? count,
    List<ScheduleModel>? rows,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class ScheduleModel with _$ScheduleModel {
  const factory ScheduleModel({
    int? createdAtTimeStamp,
    int? updatedAtTimeStamp,
    String? id,
    String? userId,
    String? scheduleDetailId,
    String? tutorMeetingLink,
    String? studentMeetingLink,
    String? studentRequest,
    String? tutorReview,
    int? scoreByTutor,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? recordUrl,
    String? cancelReasonId,
    String? lessonPlanId,
    String? cancelNote,
    String? calendarId,
    bool? isDeleted,
    ScheduleDetailInfo? scheduleDetailInfo,
    dynamic classReview,
    bool? showRecordUrl,
    List<String>? studentMaterials,
    List<Feedback>? feedbacks,
  }) = _ScheduleModel;

  factory ScheduleModel.fromJson(Map<String, dynamic> json) => _$ScheduleModelFromJson(json);
}

@freezed
class Feedback with _$Feedback {
  const factory Feedback({
    String? id,
    String? bookingId,
    String? firstId,
    String? secondId,
    int? rating,
    String? content,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Feedback;

  factory Feedback.fromJson(Map<String, dynamic> json) => _$FeedbackFromJson(json);
}

@freezed
class ScheduleDetailInfo with _$ScheduleDetailInfo {
  const factory ScheduleDetailInfo({
    int? startPeriodTimestamp,
    int? endPeriodTimestamp,
    String? id,
    String? scheduleId,
    String? startPeriod,
    String? endPeriod,
    DateTime? createdAt,
    DateTime? updatedAt,
    ScheduleInfo? scheduleInfo,
  }) = _ScheduleDetailInfo;

  factory ScheduleDetailInfo.fromJson(Map<String, dynamic> json) =>
      _$ScheduleDetailInfoFromJson(json);
}

@freezed
class ScheduleInfo with _$ScheduleInfo {
  const factory ScheduleInfo({
    DateTime? date,
    int? startTimestamp,
    int? endTimestamp,
    String? id,
    String? tutorId,
    String? startTime,
    String? endTime,
    bool? isDeleted,
    DateTime? createdAt,
    DateTime? updatedAt,
    TutorInfo? tutorInfo,
  }) = _ScheduleInfo;

  factory ScheduleInfo.fromJson(Map<String, dynamic> json) => _$ScheduleInfoFromJson(json);
}

@freezed
class TutorInfo with _$TutorInfo {
  const factory TutorInfo({
    String? id,
    String? level,
    String? email,
    String? google,
    String? facebook,
    String? apple,
    String? avatar,
    String? name,
    String? country,
    String? phone,
    String? language,
    DateTime? birthday,
    bool? requestPassword,
    bool? isActivated,
    bool? isPhoneActivated,
    String? requireNote,
    int? timezone,
    String? phoneAuth,
    bool? isPhoneAuthActivated,
    String? studySchedule,
    bool? canSendMessage,
    bool? isPublicRecord,
    String? caredByStaffId,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    String? studentGroupId,
  }) = _TutorInfo;

  factory TutorInfo.fromJson(Map<String, dynamic> json) => _$TutorInfoFromJson(json);
}
