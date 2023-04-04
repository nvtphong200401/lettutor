// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      avatar: json['avatar'] as String?,
      country: json['country'] as String?,
      phone: json['phone'] as String?,
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
      language: json['language'] as String?,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      isActivated: json['isActivated'] as bool?,
      tutorInfo: json['tutorInfo'] == null
          ? null
          : TutorInfo.fromJson(json['tutorInfo'] as Map<String, dynamic>),
      walletInfo: json['walletInfo'] == null
          ? null
          : WalletInfo.fromJson(json['walletInfo'] as Map<String, dynamic>),
      requireNote: json['requireNote'] as String?,
      level: json['level'] as String?,
      learnTopics: (json['learnTopics'] as List<dynamic>?)
          ?.map((e) => LearnTopic.fromJson(e as Map<String, dynamic>))
          .toList(),
      testPreparations: (json['testPreparations'] as List<dynamic>?)
          ?.map((e) => LearnTopic.fromJson(e as Map<String, dynamic>))
          .toList(),
      isPhoneActivated: json['isPhoneActivated'] as bool?,
      timezone: json['timezone'] as int?,
      referralInfo: json['referralInfo'] == null
          ? null
          : ReferralInfo.fromJson(json['referralInfo'] as Map<String, dynamic>),
      studySchedule: json['studySchedule'] as String?,
      canSendMessage: json['canSendMessage'] as bool?,
      studentGroup: json['studentGroup'],
      studentInfo: json['studentInfo'],
      avgRating: (json['avgRating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'avatar': instance.avatar,
      'country': instance.country,
      'phone': instance.phone,
      'roles': instance.roles,
      'language': instance.language,
      'birthday': instance.birthday?.toIso8601String(),
      'isActivated': instance.isActivated,
      'tutorInfo': instance.tutorInfo,
      'walletInfo': instance.walletInfo,
      'requireNote': instance.requireNote,
      'level': instance.level,
      'learnTopics': instance.learnTopics,
      'testPreparations': instance.testPreparations,
      'isPhoneActivated': instance.isPhoneActivated,
      'timezone': instance.timezone,
      'referralInfo': instance.referralInfo,
      'studySchedule': instance.studySchedule,
      'canSendMessage': instance.canSendMessage,
      'studentGroup': instance.studentGroup,
      'studentInfo': instance.studentInfo,
      'avgRating': instance.avgRating,
    };

_$_LearnTopic _$$_LearnTopicFromJson(Map<String, dynamic> json) =>
    _$_LearnTopic(
      id: json['id'] as int?,
      key: json['key'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_LearnTopicToJson(_$_LearnTopic instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'name': instance.name,
    };

_$_ReferralInfo _$$_ReferralInfoFromJson(Map<String, dynamic> json) =>
    _$_ReferralInfo(
      referralCode: json['referralCode'] as String?,
      referralPackInfo: json['referralPackInfo'] == null
          ? null
          : ReferralPackInfo.fromJson(
              json['referralPackInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReferralInfoToJson(_$_ReferralInfo instance) =>
    <String, dynamic>{
      'referralCode': instance.referralCode,
      'referralPackInfo': instance.referralPackInfo,
    };

_$_ReferralPackInfo _$$_ReferralPackInfoFromJson(Map<String, dynamic> json) =>
    _$_ReferralPackInfo(
      earnPercent: json['earnPercent'] as int?,
    );

Map<String, dynamic> _$$_ReferralPackInfoToJson(_$_ReferralPackInfo instance) =>
    <String, dynamic>{
      'earnPercent': instance.earnPercent,
    };

_$_WalletInfo _$$_WalletInfoFromJson(Map<String, dynamic> json) =>
    _$_WalletInfo(
      amount: json['amount'] as String?,
      isBlocked: json['isBlocked'] as bool?,
      bonus: json['bonus'] as int?,
    );

Map<String, dynamic> _$$_WalletInfoToJson(_$_WalletInfo instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'isBlocked': instance.isBlocked,
      'bonus': instance.bonus,
    };
