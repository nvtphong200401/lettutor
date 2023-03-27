// To parse this JSON data, do
//
//     final paginatedTutors = paginatedTutorsFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_tutors.freezed.dart';
part 'paginated_tutors.g.dart';

@freezed
class PaginatedTutors with _$PaginatedTutors {
  const factory PaginatedTutors({
    required Tutors tutors,
    required List<FavoriteTutor> favoriteTutor,
  }) = _PaginatedTutors;

  factory PaginatedTutors.fromJson(Map<String, dynamic> json) =>
      _$PaginatedTutorsFromJson(json);
}

@freezed
class FavoriteTutor with _$FavoriteTutor {
  const factory FavoriteTutor({
    required String id,
    required String firstId,
    required String secondId,
    required String createdAt,
    required String updatedAt,
    required SecondInfo secondInfo,
  }) = _FavoriteTutor;

  factory FavoriteTutor.fromJson(Map<String, dynamic> json) =>
      _$FavoriteTutorFromJson(json);
}

@freezed
class SecondInfo with _$SecondInfo {
  const factory SecondInfo({
    required String id,
    required String level,
    required String email,
    required dynamic google,
    required dynamic facebook,
    required dynamic apple,
    required String avatar,
    required String name,
    required String country,
    required String phone,
    required String language,
    required DateTime birthday,
    required bool requestPassword,
    required bool isActivated,
    required dynamic isPhoneActivated,
    required dynamic requireNote,
    required int timezone,
    required dynamic phoneAuth,
    required bool isPhoneAuthActivated,
    required String studySchedule,
    required bool canSendMessage,
    required bool isPublicRecord,
    required dynamic caredByStaffId,
    required String createdAt,
    required String updatedAt,
    required dynamic deletedAt,
    required dynamic studentGroupId,
    required TutorInfo tutorInfo,
  }) = _SecondInfo;

  factory SecondInfo.fromJson(Map<String, dynamic> json) =>
      _$SecondInfoFromJson(json);
}

@freezed
class TutorInfo with _$TutorInfo {
  const factory TutorInfo({
    required String id,
    required String userId,
    required String video,
    required String bio,
    required String education,
    required String experience,
    required String profession,
    required dynamic accent,
    required String targetStudent,
    required String interests,
    required String languages,
    required String specialties,
    required dynamic resume,
    required double rating,
    required bool isActivated,
    required dynamic isNative,
    required String createdAt,
    required String updatedAt,
  }) = _TutorInfo;

  factory TutorInfo.fromJson(Map<String, dynamic> json) =>
      _$TutorInfoFromJson(json);
}

@freezed
class Tutors with _$Tutors {
  const factory Tutors({
    required int count,
    required List<Row> rows,
  }) = _Tutors;

  factory Tutors.fromJson(Map<String, dynamic> json) => _$TutorsFromJson(json);
}

@freezed
class Row with _$Row {
  const factory Row({
    required String level,
    required String email,
    required dynamic google,
    required dynamic facebook,
    required dynamic apple,
    required String avatar,
    required String name,
    required String country,
    required String phone,
    required String language,
    required String birthday,
    required bool requestPassword,
    required bool isActivated,
    required dynamic isPhoneActivated,
    required dynamic requireNote,
    required int timezone,
    required dynamic phoneAuth,
    required bool isPhoneAuthActivated,
    required String studySchedule,
    required bool canSendMessage,
    required bool isPublicRecord,
    required dynamic caredByStaffId,
    required String createdAt,
    required String updatedAt,
    required dynamic deletedAt,
    required dynamic studentGroupId,
    required List<Feedback> feedbacks,
    required String id,
    required String userId,
    required String video,
    required String bio,
    required String education,
    required String experience,
    required String profession,
    required String accent,
    required String targetStudent,
    required String interests,
    required String languages,
    required String specialties,
    required String resume,
    required double rating,
    required dynamic isNative,
    required int price,
    required bool isOnline,
  }) = _Row;

  factory Row.fromJson(Map<String, dynamic> json) => _$RowFromJson(json);
}

@freezed
class Feedback with _$Feedback {
  const factory Feedback({
    required String id,
    required String bookingId,
    required String firstId,
    required String secondId,
    required int rating,
    required String content,
    required String createdAt,
    required String updatedAt,
    required FirstInfo firstInfo,
  }) = _Feedback;

  factory Feedback.fromJson(Map<String, dynamic> json) =>
      _$FeedbackFromJson(json);
}

@freezed
class FirstInfo with _$FirstInfo {
  const factory FirstInfo({
    required String level,
    required String email,
    required String google,
    required String facebook,
    required dynamic apple,
    required String avatar,
    required String name,
    required String country,
    required String phone,
    required String language,
    required String birthday,
    required bool requestPassword,
    required bool isActivated,
    required bool isPhoneActivated,
    required String requireNote,
    required int timezone,
    required dynamic phoneAuth,
    required bool isPhoneAuthActivated,
    required String studySchedule,
    required bool canSendMessage,
    required bool isPublicRecord,
    required dynamic caredByStaffId,
    required String createdAt,
    required String updatedAt,
    required dynamic deletedAt,
    required dynamic studentGroupId,
  }) = _FirstInfo;

  factory FirstInfo.fromJson(Map<String, dynamic> json) =>
      _$FirstInfoFromJson(json);
}
