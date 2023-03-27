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

  factory AuthResult.fromJson(Map<String, dynamic> json) =>
      _$AuthResultFromJson(json);
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
    required String token,
    required String expires,
  }) = _Access;

  factory Access.fromJson(Map<String, dynamic> json) => _$AccessFromJson(json);
}

@freezed
class User with _$User {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory User({
    required String id,
    required String email,
    required String name,
    required String avatar,
    required String country,
    required String phone,
    required List<String> roles,
    required dynamic language,
    required String birthday,
    required bool isActivated,
    required WalletInfo walletInfo,
    required List<dynamic> courses,
    required String requireNote,
    required String level,
    required List<dynamic> learnTopics,
    required List<dynamic> testPreparations,
    required bool isPhoneActivated,
    required int timezone,
    required dynamic studySchedule,
    required bool canSendMessage,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class WalletInfo with _$WalletInfo {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory WalletInfo({
    required String id,
    required String userId,
    required String amount,
    required bool isBlocked,
    required String createdAt,
    required String updatedAt,
    required int bonus,
  }) = _WalletInfo;

  factory WalletInfo.fromJson(Map<String, dynamic> json) =>
      _$WalletInfoFromJson(json);
}
