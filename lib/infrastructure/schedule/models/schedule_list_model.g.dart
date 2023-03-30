// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScheduleListModel _$$_ScheduleListModelFromJson(Map<String, dynamic> json) =>
    _$_ScheduleListModel(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ScheduleListModelToJson(
        _$_ScheduleListModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      count: json['count'] as int?,
      rows: (json['rows'] as List<dynamic>?)
          ?.map((e) => ScheduleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'count': instance.count,
      'rows': instance.rows,
    };

_$_ScheduleModel _$$_ScheduleModelFromJson(Map<String, dynamic> json) =>
    _$_ScheduleModel(
      createdAtTimeStamp: json['createdAtTimeStamp'] as int?,
      updatedAtTimeStamp: json['updatedAtTimeStamp'] as int?,
      id: json['id'] as String?,
      userId: json['userId'] as String?,
      scheduleDetailId: json['scheduleDetailId'] as String?,
      tutorMeetingLink: json['tutorMeetingLink'] as String?,
      studentMeetingLink: json['studentMeetingLink'] as String?,
      studentRequest: json['studentRequest'] as String?,
      tutorReview: json['tutorReview'] as String?,
      scoreByTutor: json['scoreByTutor'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      recordUrl: json['recordUrl'] as String?,
      cancelReasonId: json['cancelReasonId'] as String?,
      lessonPlanId: json['lessonPlanId'] as String?,
      cancelNote: json['cancelNote'] as String?,
      calendarId: json['calendarId'] as String?,
      isDeleted: json['isDeleted'] as bool?,
      scheduleDetailInfo: json['scheduleDetailInfo'] == null
          ? null
          : ScheduleDetailInfo.fromJson(
              json['scheduleDetailInfo'] as Map<String, dynamic>),
      classReview: json['classReview'] as String?,
      showRecordUrl: json['showRecordUrl'] as bool?,
      studentMaterials: (json['studentMaterials'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      feedbacks: (json['feedbacks'] as List<dynamic>?)
          ?.map((e) => Feedback.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ScheduleModelToJson(_$_ScheduleModel instance) =>
    <String, dynamic>{
      'createdAtTimeStamp': instance.createdAtTimeStamp,
      'updatedAtTimeStamp': instance.updatedAtTimeStamp,
      'id': instance.id,
      'userId': instance.userId,
      'scheduleDetailId': instance.scheduleDetailId,
      'tutorMeetingLink': instance.tutorMeetingLink,
      'studentMeetingLink': instance.studentMeetingLink,
      'studentRequest': instance.studentRequest,
      'tutorReview': instance.tutorReview,
      'scoreByTutor': instance.scoreByTutor,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'recordUrl': instance.recordUrl,
      'cancelReasonId': instance.cancelReasonId,
      'lessonPlanId': instance.lessonPlanId,
      'cancelNote': instance.cancelNote,
      'calendarId': instance.calendarId,
      'isDeleted': instance.isDeleted,
      'scheduleDetailInfo': instance.scheduleDetailInfo,
      'classReview': instance.classReview,
      'showRecordUrl': instance.showRecordUrl,
      'studentMaterials': instance.studentMaterials,
      'feedbacks': instance.feedbacks,
    };

_$_Feedback _$$_FeedbackFromJson(Map<String, dynamic> json) => _$_Feedback(
      id: json['id'] as String?,
      bookingId: json['bookingId'] as String?,
      firstId: json['firstId'] as String?,
      secondId: json['secondId'] as String?,
      rating: json['rating'] as int?,
      content: json['content'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_FeedbackToJson(_$_Feedback instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bookingId': instance.bookingId,
      'firstId': instance.firstId,
      'secondId': instance.secondId,
      'rating': instance.rating,
      'content': instance.content,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$_ScheduleDetailInfo _$$_ScheduleDetailInfoFromJson(
        Map<String, dynamic> json) =>
    _$_ScheduleDetailInfo(
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
      scheduleInfo: json['scheduleInfo'] == null
          ? null
          : ScheduleInfo.fromJson(json['scheduleInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ScheduleDetailInfoToJson(
        _$_ScheduleDetailInfo instance) =>
    <String, dynamic>{
      'startPeriodTimestamp': instance.startPeriodTimestamp,
      'endPeriodTimestamp': instance.endPeriodTimestamp,
      'id': instance.id,
      'scheduleId': instance.scheduleId,
      'startPeriod': instance.startPeriod,
      'endPeriod': instance.endPeriod,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'scheduleInfo': instance.scheduleInfo,
    };

_$_ScheduleInfo _$$_ScheduleInfoFromJson(Map<String, dynamic> json) =>
    _$_ScheduleInfo(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      startTimestamp: json['startTimestamp'] as int?,
      endTimestamp: json['endTimestamp'] as int?,
      id: json['id'] as String?,
      tutorId: json['tutorId'] as String?,
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
      isDeleted: json['isDeleted'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      tutorInfo: json['tutorInfo'] == null
          ? null
          : TutorInfo.fromJson(json['tutorInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ScheduleInfoToJson(_$_ScheduleInfo instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'startTimestamp': instance.startTimestamp,
      'endTimestamp': instance.endTimestamp,
      'id': instance.id,
      'tutorId': instance.tutorId,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'isDeleted': instance.isDeleted,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'tutorInfo': instance.tutorInfo,
    };

_$_TutorInfo _$$_TutorInfoFromJson(Map<String, dynamic> json) => _$_TutorInfo(
      id: json['id'] as String?,
      level: json['level'] as String?,
      email: json['email'] as String?,
      google: json['google'] as String?,
      facebook: json['facebook'] as String?,
      apple: json['apple'] as String?,
      avatar: json['avatar'] as String?,
      name: json['name'] as String?,
      country: json['country'] as String?,
      phone: json['phone'] as String?,
      language: json['language'] as String?,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      requestPassword: json['requestPassword'] as bool?,
      isActivated: json['isActivated'] as bool?,
      isPhoneActivated: json['isPhoneActivated'] as bool?,
      requireNote: json['requireNote'] as String?,
      timezone: json['timezone'] as int?,
      phoneAuth: json['phoneAuth'] as String?,
      isPhoneAuthActivated: json['isPhoneAuthActivated'] as bool?,
      studySchedule: json['studySchedule'] as String?,
      canSendMessage: json['canSendMessage'] as bool?,
      isPublicRecord: json['isPublicRecord'] as bool?,
      caredByStaffId: json['caredByStaffId'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      studentGroupId: json['studentGroupId'] as String?,
    );

Map<String, dynamic> _$$_TutorInfoToJson(_$_TutorInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'level': instance.level,
      'email': instance.email,
      'google': instance.google,
      'facebook': instance.facebook,
      'apple': instance.apple,
      'avatar': instance.avatar,
      'name': instance.name,
      'country': instance.country,
      'phone': instance.phone,
      'language': instance.language,
      'birthday': instance.birthday?.toIso8601String(),
      'requestPassword': instance.requestPassword,
      'isActivated': instance.isActivated,
      'isPhoneActivated': instance.isPhoneActivated,
      'requireNote': instance.requireNote,
      'timezone': instance.timezone,
      'phoneAuth': instance.phoneAuth,
      'isPhoneAuthActivated': instance.isPhoneAuthActivated,
      'studySchedule': instance.studySchedule,
      'canSendMessage': instance.canSendMessage,
      'isPublicRecord': instance.isPublicRecord,
      'caredByStaffId': instance.caredByStaffId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'studentGroupId': instance.studentGroupId,
    };
