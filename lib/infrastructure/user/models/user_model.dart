// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../teacher/models/paginated_tutors.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    User? user,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    String? id,
    String? email,
    String? name,
    String? avatar,
    String? country,
    String? phone,
    List<String>? roles,
    String? language,
    DateTime? birthday,
    bool? isActivated,
    TutorInfo? tutorInfo,
    WalletInfo? walletInfo,
    String? requireNote,
    String? level,
    List<LearnTopic>? learnTopics,
    List<LearnTopic>? testPreparations,
    bool? isPhoneActivated,
    int? timezone,
    ReferralInfo? referralInfo,
    String? studySchedule,
    bool? canSendMessage,
    dynamic? studentGroup,
    dynamic? studentInfo,
    double? avgRating,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class LearnTopic with _$LearnTopic {
  const factory LearnTopic({
    int? id,
    String? key,
    String? name,
  }) = _LearnTopic;

  factory LearnTopic.fromJson(Map<String, dynamic> json) => _$LearnTopicFromJson(json);
}

@freezed
class ReferralInfo with _$ReferralInfo {
  const factory ReferralInfo({
    String? referralCode,
    ReferralPackInfo? referralPackInfo,
  }) = _ReferralInfo;

  factory ReferralInfo.fromJson(Map<String, dynamic> json) => _$ReferralInfoFromJson(json);
}

@freezed
class ReferralPackInfo with _$ReferralPackInfo {
  const factory ReferralPackInfo({
    int? earnPercent,
  }) = _ReferralPackInfo;

  factory ReferralPackInfo.fromJson(Map<String, dynamic> json) => _$ReferralPackInfoFromJson(json);
}

@freezed
class WalletInfo with _$WalletInfo {
  const factory WalletInfo({
    String? amount,
    bool? isBlocked,
    int? bonus,
  }) = _WalletInfo;

  factory WalletInfo.fromJson(Map<String, dynamic> json) => _$WalletInfoFromJson(json);
}
