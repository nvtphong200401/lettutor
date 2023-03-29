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
      isActivated: json['isActivated'] as bool,
      walletInfo:
          WalletInfo.fromJson(json['walletInfo'] as Map<String, dynamic>),
      courses: json['courses'] as List<dynamic>,
      requireNote: json['requireNote'] as String,
      level: json['level'] as String,
      learnTopics: json['learnTopics'] as List<dynamic>,
      testPreparations: json['testPreparations'] as List<dynamic>,
      isPhoneActivated: json['isPhoneActivated'] as bool,
      timezone: json['timezone'] as int,
      studySchedule: json['studySchedule'],
      canSendMessage: json['canSendMessage'] as bool,
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
      'isActivated': instance.isActivated,
      'walletInfo': instance.walletInfo,
      'courses': instance.courses,
      'requireNote': instance.requireNote,
      'level': instance.level,
      'learnTopics': instance.learnTopics,
      'testPreparations': instance.testPreparations,
      'isPhoneActivated': instance.isPhoneActivated,
      'timezone': instance.timezone,
      'studySchedule': instance.studySchedule,
      'canSendMessage': instance.canSendMessage,
    };

_$_WalletInfo _$$_WalletInfoFromJson(Map<String, dynamic> json) =>
    _$_WalletInfo(
      id: json['id'] as String,
      userId: json['userId'] as String,
      amount: json['amount'] as String,
      isBlocked: json['isBlocked'] as bool,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      bonus: json['bonus'] as int,
    );

Map<String, dynamic> _$$_WalletInfoToJson(_$_WalletInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'amount': instance.amount,
      'isBlocked': instance.isBlocked,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'bonus': instance.bonus,
    };
