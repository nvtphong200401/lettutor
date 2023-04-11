// To parse this JSON data, do
//
//     final paginatedTutors = paginatedTutorsFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lettutor/infrastructure/teacher/models/teacher_schedule_result.dart';

import 'tutor_detail_model.dart';

part 'paginated_tutors.freezed.dart';
part 'paginated_tutors.g.dart';

@freezed
class PaginatedTutors with _$PaginatedTutors {
  const factory PaginatedTutors({
    required Tutors tutors,
    required List<FavoriteTutor> favoriteTutor,
  }) = _PaginatedTutors;

  factory PaginatedTutors.fromJson(Map<String, dynamic> json) => _$PaginatedTutorsFromJson(json);
}

@freezed
class FavoriteTutor with _$FavoriteTutor {
  const factory FavoriteTutor({
    required String id,
    String? firstId,
    String? secondId,
    required String createdAt,
    required String updatedAt,
    SecondInfo? secondInfo,
  }) = _FavoriteTutor;

  factory FavoriteTutor.fromJson(Map<String, dynamic> json) => _$FavoriteTutorFromJson(json);
}

@freezed
class SecondInfo with _$SecondInfo {
  const factory SecondInfo({
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
    String? isPhoneActivated,
    String? requireNote,
    int? timezone,
    String? phoneAuth,
    bool? isPhoneAuthActivated,
    String? studySchedule,
    bool? canSendMessage,
    bool? isPublicRecord,
    String? caredByStaffId,
    String? createdAt,
    String? updatedAt,
    String? deletedAt,
    String? studentGroupId,
    required TutorInfo tutorInfo,
  }) = _SecondInfo;

  factory SecondInfo.fromJson(Map<String, dynamic> json) => _$SecondInfoFromJson(json);
}

@freezed
class TutorInfo with _$TutorInfo {
  const factory TutorInfo({
    String? id,
    String? userId,
    String? video,
    String? bio,
    String? education,
    String? experience,
    String? profession,
    String? accent,
    String? targetStudent,
    String? interests,
    String? languages,
    String? specialties,
    String? resume,
    double? rating,
    bool? isActivated,
    bool? isNative,
    String? createdAt,
    String? updatedAt,
  }) = _TutorInfo;

  factory TutorInfo.fromJson(Map<String, dynamic> json) => _$TutorInfoFromJson(json);
}

@freezed
class Tutors with _$Tutors {
  const factory Tutors({
    required int count,
    required List<TeacherModel> rows,
  }) = _Tutors;

  factory Tutors.fromJson(Map<String, dynamic> json) => _$TutorsFromJson(json);
}

@freezed
class TeacherModel with _$TeacherModel {
  const factory TeacherModel({
    String? level,
    String? email,
    String? google,
    String? facebook,
    String? apple,
    @Default('https://thumbs.dreamstime.com/z/default-avatar-profile-vector-user-profile-default-avatar-profile-vector-user-profile-profile-179376714.jpg')
        String avatar,
    String? name,
    String? country,
    String? phone,
    String? language,
    String? birthday,
    bool? requestPassword,
    bool? isActivated,
    String? isPhoneActivated,
    String? requireNote,
    int? timezone,
    String? phoneAuth,
    bool? isPhoneAuthActivated,
    String? studySchedule,
    bool? canSendMessage,
    bool? isPublicRecord,
    String? caredByStaffId,
    String? createdAt,
    String? updatedAt,
    String? deletedAt,
    String? studentGroupId,
    List<FeedbackModel>? feedbacks,
    String? id,
    String? userId,
    String? video,
    String? bio,
    String? education,
    String? experience,
    String? profession,
    String? accent,
    String? targetStudent,
    String? interests,
    String? languages,
    String? specialties,
    String? resume,
    double? rating,
    bool? isNative,
    int? price,
    bool? isOnline,
    bool? isFavorite,
    List<ScheduleOfTutor>? schedules,
    List<Course>? courses,
  }) = _TeacherModel;

  factory TeacherModel.fromJson(Map<String, dynamic> json) => _$TeacherModelFromJson(json);
}

@freezed
class FeedbackModel with _$FeedbackModel {
  const factory FeedbackModel({
    required String id,
    String? bookingId,
    String? firstId,
    String? secondId,
    int? rating,
    String? content,
    String? createdAt,
    String? updatedAt,
    FirstInfo? firstInfo,
  }) = _FeedbackModel;

  factory FeedbackModel.fromJson(Map<String, dynamic> json) => _$FeedbackModelFromJson(json);
}

@freezed
class FirstInfo with _$FirstInfo {
  const factory FirstInfo({
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
    String? birthday,
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
    String? createdAt,
    String? updatedAt,
    String? deletedAt,
    String? studentGroupId,
  }) = _FirstInfo;

  factory FirstInfo.fromJson(Map<String, dynamic> json) => _$FirstInfoFromJson(json);
}
