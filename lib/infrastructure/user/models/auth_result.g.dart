// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthResult _$$_AuthResultFromJson(Map<String, dynamic> json) =>
    _$_AuthResult(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      tokens: Tokens.fromJson(json['tokens'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AuthResultToJson(_$_AuthResult instance) =>
    <String, dynamic>{
      'user': instance.user,
      'tokens': instance.tokens,
    };

_$_Tokens _$$_TokensFromJson(Map<String, dynamic> json) => _$_Tokens(
      access: Access.fromJson(json['access'] as Map<String, dynamic>),
      refresh: Access.fromJson(json['refresh'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TokensToJson(_$_Tokens instance) => <String, dynamic>{
      'access': instance.access,
      'refresh': instance.refresh,
    };

_$_Access _$$_AccessFromJson(Map<String, dynamic> json) => _$_Access(
      token: json['token'] as String,
      expires: json['expires'] as String,
    );

Map<String, dynamic> _$$_AccessToJson(_$_Access instance) => <String, dynamic>{
      'token': instance.token,
      'expires': instance.expires,
    };

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      avatar: json['avatar'] as String,
      country: json['country'] as String,
      phone: json['phone'] as String,
      roles: (json['roles'] as List<dynamic>).map((e) => e as String).toList(),
      language: json['language'],
      birthday: json['birthday'] as String,
      isActivated: json['is_activated'] as bool,
      walletInfo:
          WalletInfo.fromJson(json['wallet_info'] as Map<String, dynamic>),
      courses: json['courses'] as List<dynamic>,
      requireNote: json['require_note'] as String,
      level: json['level'] as String,
      learnTopics: json['learn_topics'] as List<dynamic>,
      testPreparations: json['test_preparations'] as List<dynamic>,
      isPhoneActivated: json['is_phone_activated'] as bool,
      timezone: json['timezone'] as int,
      studySchedule: json['study_schedule'],
      canSendMessage: json['can_send_message'] as bool,
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
      'birthday': instance.birthday,
      'is_activated': instance.isActivated,
      'wallet_info': instance.walletInfo,
      'courses': instance.courses,
      'require_note': instance.requireNote,
      'level': instance.level,
      'learn_topics': instance.learnTopics,
      'test_preparations': instance.testPreparations,
      'is_phone_activated': instance.isPhoneActivated,
      'timezone': instance.timezone,
      'study_schedule': instance.studySchedule,
      'can_send_message': instance.canSendMessage,
    };

_$_WalletInfo _$$_WalletInfoFromJson(Map<String, dynamic> json) =>
    _$_WalletInfo(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      amount: json['amount'] as String,
      isBlocked: json['is_blocked'] as bool,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      bonus: json['bonus'] as int,
    );

Map<String, dynamic> _$$_WalletInfoToJson(_$_WalletInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'amount': instance.amount,
      'is_blocked': instance.isBlocked,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'bonus': instance.bonus,
    };
