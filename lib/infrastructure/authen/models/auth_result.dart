// To parse this JSON data, do
//
//     final authResult = authResultFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_result.freezed.dart';
part 'auth_result.g.dart';

@freezed
class AuthResult with _$AuthResult {
  const factory AuthResult({
    required User user,
    required Tokens tokens,
  }) = _AuthResult;

  factory AuthResult.fromJson(Map<String, dynamic> json) => _$AuthResultFromJson(json);
}

@freezed
class Tokens with _$Tokens {
  const factory Tokens({
    required Access access,
    required Access refresh,
  }) = _Tokens;

  factory Tokens.fromJson(Map<String, dynamic> json) => _$TokensFromJson(json);
}

@freezed
class Access with _$Access {
  const factory Access({
    String? token,
    String? expires,
  }) = _Access;

  factory Access.fromJson(Map<String, dynamic> json) => _$AccessFromJson(json);
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
    String? birthday,
    bool? isActivated,
    WalletInfo? walletInfo,
    List<String>? courses,
    String? requireNote,
    String? level,
    List<dynamic>? learnTopics,
    List<String>? testPreparations,
    bool? isPhoneActivated,
    int? timezone,
    String? studySchedule,
    bool? canSendMessage,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class WalletInfo with _$WalletInfo {
  const factory WalletInfo({
    String? id,
    String? userId,
    String? amount,
    bool? isBlocked,
    String? createdAt,
    String? updatedAt,
    required int bonus,
  }) = _WalletInfo;

  factory WalletInfo.fromJson(Map<String, dynamic> json) => _$WalletInfoFromJson(json);
}
