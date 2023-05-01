// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthResult _$AuthResultFromJson(Map<String, dynamic> json) {
  return _AuthResult.fromJson(json);
}

/// @nodoc
mixin _$AuthResult {
  User get user => throw _privateConstructorUsedError;
  Tokens get tokens => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthResultCopyWith<AuthResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResultCopyWith<$Res> {
  factory $AuthResultCopyWith(
          AuthResult value, $Res Function(AuthResult) then) =
      _$AuthResultCopyWithImpl<$Res, AuthResult>;
  @useResult
  $Res call({User user, Tokens tokens});

  $UserCopyWith<$Res> get user;
  $TokensCopyWith<$Res> get tokens;
}

/// @nodoc
class _$AuthResultCopyWithImpl<$Res, $Val extends AuthResult>
    implements $AuthResultCopyWith<$Res> {
  _$AuthResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? tokens = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      tokens: null == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as Tokens,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TokensCopyWith<$Res> get tokens {
    return $TokensCopyWith<$Res>(_value.tokens, (value) {
      return _then(_value.copyWith(tokens: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthResultCopyWith<$Res>
    implements $AuthResultCopyWith<$Res> {
  factory _$$_AuthResultCopyWith(
          _$_AuthResult value, $Res Function(_$_AuthResult) then) =
      __$$_AuthResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, Tokens tokens});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $TokensCopyWith<$Res> get tokens;
}

/// @nodoc
class __$$_AuthResultCopyWithImpl<$Res>
    extends _$AuthResultCopyWithImpl<$Res, _$_AuthResult>
    implements _$$_AuthResultCopyWith<$Res> {
  __$$_AuthResultCopyWithImpl(
      _$_AuthResult _value, $Res Function(_$_AuthResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? tokens = null,
  }) {
    return _then(_$_AuthResult(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      tokens: null == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as Tokens,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthResult implements _AuthResult {
  const _$_AuthResult({required this.user, required this.tokens});

  factory _$_AuthResult.fromJson(Map<String, dynamic> json) =>
      _$$_AuthResultFromJson(json);

  @override
  final User user;
  @override
  final Tokens tokens;

  @override
  String toString() {
    return 'AuthResult(user: $user, tokens: $tokens)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthResult &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.tokens, tokens) || other.tokens == tokens));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, tokens);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthResultCopyWith<_$_AuthResult> get copyWith =>
      __$$_AuthResultCopyWithImpl<_$_AuthResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthResultToJson(
      this,
    );
  }
}

abstract class _AuthResult implements AuthResult {
  const factory _AuthResult(
      {required final User user, required final Tokens tokens}) = _$_AuthResult;

  factory _AuthResult.fromJson(Map<String, dynamic> json) =
      _$_AuthResult.fromJson;

  @override
  User get user;
  @override
  Tokens get tokens;
  @override
  @JsonKey(ignore: true)
  _$$_AuthResultCopyWith<_$_AuthResult> get copyWith =>
      throw _privateConstructorUsedError;
}

Tokens _$TokensFromJson(Map<String, dynamic> json) {
  return _Tokens.fromJson(json);
}

/// @nodoc
mixin _$Tokens {
  Access get access => throw _privateConstructorUsedError;
  Access get refresh => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokensCopyWith<Tokens> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokensCopyWith<$Res> {
  factory $TokensCopyWith(Tokens value, $Res Function(Tokens) then) =
      _$TokensCopyWithImpl<$Res, Tokens>;
  @useResult
  $Res call({Access access, Access refresh});

  $AccessCopyWith<$Res> get access;
  $AccessCopyWith<$Res> get refresh;
}

/// @nodoc
class _$TokensCopyWithImpl<$Res, $Val extends Tokens>
    implements $TokensCopyWith<$Res> {
  _$TokensCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access = null,
    Object? refresh = null,
  }) {
    return _then(_value.copyWith(
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as Access,
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as Access,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccessCopyWith<$Res> get access {
    return $AccessCopyWith<$Res>(_value.access, (value) {
      return _then(_value.copyWith(access: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AccessCopyWith<$Res> get refresh {
    return $AccessCopyWith<$Res>(_value.refresh, (value) {
      return _then(_value.copyWith(refresh: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TokensCopyWith<$Res> implements $TokensCopyWith<$Res> {
  factory _$$_TokensCopyWith(_$_Tokens value, $Res Function(_$_Tokens) then) =
      __$$_TokensCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Access access, Access refresh});

  @override
  $AccessCopyWith<$Res> get access;
  @override
  $AccessCopyWith<$Res> get refresh;
}

/// @nodoc
class __$$_TokensCopyWithImpl<$Res>
    extends _$TokensCopyWithImpl<$Res, _$_Tokens>
    implements _$$_TokensCopyWith<$Res> {
  __$$_TokensCopyWithImpl(_$_Tokens _value, $Res Function(_$_Tokens) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access = null,
    Object? refresh = null,
  }) {
    return _then(_$_Tokens(
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as Access,
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as Access,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tokens implements _Tokens {
  const _$_Tokens({required this.access, required this.refresh});

  factory _$_Tokens.fromJson(Map<String, dynamic> json) =>
      _$$_TokensFromJson(json);

  @override
  final Access access;
  @override
  final Access refresh;

  @override
  String toString() {
    return 'Tokens(access: $access, refresh: $refresh)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tokens &&
            (identical(other.access, access) || other.access == access) &&
            (identical(other.refresh, refresh) || other.refresh == refresh));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, access, refresh);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokensCopyWith<_$_Tokens> get copyWith =>
      __$$_TokensCopyWithImpl<_$_Tokens>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokensToJson(
      this,
    );
  }
}

abstract class _Tokens implements Tokens {
  const factory _Tokens(
      {required final Access access,
      required final Access refresh}) = _$_Tokens;

  factory _Tokens.fromJson(Map<String, dynamic> json) = _$_Tokens.fromJson;

  @override
  Access get access;
  @override
  Access get refresh;
  @override
  @JsonKey(ignore: true)
  _$$_TokensCopyWith<_$_Tokens> get copyWith =>
      throw _privateConstructorUsedError;
}

Access _$AccessFromJson(Map<String, dynamic> json) {
  return _Access.fromJson(json);
}

/// @nodoc
mixin _$Access {
  String? get token => throw _privateConstructorUsedError;
  String? get expires => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccessCopyWith<Access> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessCopyWith<$Res> {
  factory $AccessCopyWith(Access value, $Res Function(Access) then) =
      _$AccessCopyWithImpl<$Res, Access>;
  @useResult
  $Res call({String? token, String? expires});
}

/// @nodoc
class _$AccessCopyWithImpl<$Res, $Val extends Access>
    implements $AccessCopyWith<$Res> {
  _$AccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? expires = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      expires: freezed == expires
          ? _value.expires
          : expires // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccessCopyWith<$Res> implements $AccessCopyWith<$Res> {
  factory _$$_AccessCopyWith(_$_Access value, $Res Function(_$_Access) then) =
      __$$_AccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? token, String? expires});
}

/// @nodoc
class __$$_AccessCopyWithImpl<$Res>
    extends _$AccessCopyWithImpl<$Res, _$_Access>
    implements _$$_AccessCopyWith<$Res> {
  __$$_AccessCopyWithImpl(_$_Access _value, $Res Function(_$_Access) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? expires = freezed,
  }) {
    return _then(_$_Access(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      expires: freezed == expires
          ? _value.expires
          : expires // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Access implements _Access {
  const _$_Access({this.token, this.expires});

  factory _$_Access.fromJson(Map<String, dynamic> json) =>
      _$$_AccessFromJson(json);

  @override
  final String? token;
  @override
  final String? expires;

  @override
  String toString() {
    return 'Access(token: $token, expires: $expires)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Access &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.expires, expires) || other.expires == expires));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, expires);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccessCopyWith<_$_Access> get copyWith =>
      __$$_AccessCopyWithImpl<_$_Access>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccessToJson(
      this,
    );
  }
}

abstract class _Access implements Access {
  const factory _Access({final String? token, final String? expires}) =
      _$_Access;

  factory _Access.fromJson(Map<String, dynamic> json) = _$_Access.fromJson;

  @override
  String? get token;
  @override
  String? get expires;
  @override
  @JsonKey(ignore: true)
  _$$_AccessCopyWith<_$_Access> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String? get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  List<String>? get roles => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get birthday => throw _privateConstructorUsedError;
  bool? get isActivated => throw _privateConstructorUsedError;
  WalletInfo? get walletInfo =>
      throw _privateConstructorUsedError; // List<dynamic>? courses,
  String? get requireNote => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  List<dynamic>? get learnTopics =>
      throw _privateConstructorUsedError; // List<String>? testPreparations,
  bool? get isPhoneActivated => throw _privateConstructorUsedError;
  int? get timezone => throw _privateConstructorUsedError;
  String? get studySchedule => throw _privateConstructorUsedError;
  bool? get canSendMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String? id,
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
      String? requireNote,
      String? level,
      List<dynamic>? learnTopics,
      bool? isPhoneActivated,
      int? timezone,
      String? studySchedule,
      bool? canSendMessage});

  $WalletInfoCopyWith<$Res>? get walletInfo;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
    Object? country = freezed,
    Object? phone = freezed,
    Object? roles = freezed,
    Object? language = freezed,
    Object? birthday = freezed,
    Object? isActivated = freezed,
    Object? walletInfo = freezed,
    Object? requireNote = freezed,
    Object? level = freezed,
    Object? learnTopics = freezed,
    Object? isPhoneActivated = freezed,
    Object? timezone = freezed,
    Object? studySchedule = freezed,
    Object? canSendMessage = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      isActivated: freezed == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      walletInfo: freezed == walletInfo
          ? _value.walletInfo
          : walletInfo // ignore: cast_nullable_to_non_nullable
              as WalletInfo?,
      requireNote: freezed == requireNote
          ? _value.requireNote
          : requireNote // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      learnTopics: freezed == learnTopics
          ? _value.learnTopics
          : learnTopics // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      isPhoneActivated: freezed == isPhoneActivated
          ? _value.isPhoneActivated
          : isPhoneActivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int?,
      studySchedule: freezed == studySchedule
          ? _value.studySchedule
          : studySchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      canSendMessage: freezed == canSendMessage
          ? _value.canSendMessage
          : canSendMessage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WalletInfoCopyWith<$Res>? get walletInfo {
    if (_value.walletInfo == null) {
      return null;
    }

    return $WalletInfoCopyWith<$Res>(_value.walletInfo!, (value) {
      return _then(_value.copyWith(walletInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
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
      String? requireNote,
      String? level,
      List<dynamic>? learnTopics,
      bool? isPhoneActivated,
      int? timezone,
      String? studySchedule,
      bool? canSendMessage});

  @override
  $WalletInfoCopyWith<$Res>? get walletInfo;
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
    Object? country = freezed,
    Object? phone = freezed,
    Object? roles = freezed,
    Object? language = freezed,
    Object? birthday = freezed,
    Object? isActivated = freezed,
    Object? walletInfo = freezed,
    Object? requireNote = freezed,
    Object? level = freezed,
    Object? learnTopics = freezed,
    Object? isPhoneActivated = freezed,
    Object? timezone = freezed,
    Object? studySchedule = freezed,
    Object? canSendMessage = freezed,
  }) {
    return _then(_$_User(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      isActivated: freezed == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      walletInfo: freezed == walletInfo
          ? _value.walletInfo
          : walletInfo // ignore: cast_nullable_to_non_nullable
              as WalletInfo?,
      requireNote: freezed == requireNote
          ? _value.requireNote
          : requireNote // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      learnTopics: freezed == learnTopics
          ? _value._learnTopics
          : learnTopics // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      isPhoneActivated: freezed == isPhoneActivated
          ? _value.isPhoneActivated
          : isPhoneActivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int?,
      studySchedule: freezed == studySchedule
          ? _value.studySchedule
          : studySchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      canSendMessage: freezed == canSendMessage
          ? _value.canSendMessage
          : canSendMessage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {this.id,
      this.email,
      this.name,
      this.avatar,
      this.country,
      this.phone,
      final List<String>? roles,
      this.language,
      this.birthday,
      this.isActivated,
      this.walletInfo,
      this.requireNote,
      this.level,
      final List<dynamic>? learnTopics,
      this.isPhoneActivated,
      this.timezone,
      this.studySchedule,
      this.canSendMessage})
      : _roles = roles,
        _learnTopics = learnTopics;

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String? id;
  @override
  final String? email;
  @override
  final String? name;
  @override
  final String? avatar;
  @override
  final String? country;
  @override
  final String? phone;
  final List<String>? _roles;
  @override
  List<String>? get roles {
    final value = _roles;
    if (value == null) return null;
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? language;
  @override
  final String? birthday;
  @override
  final bool? isActivated;
  @override
  final WalletInfo? walletInfo;
// List<dynamic>? courses,
  @override
  final String? requireNote;
  @override
  final String? level;
  final List<dynamic>? _learnTopics;
  @override
  List<dynamic>? get learnTopics {
    final value = _learnTopics;
    if (value == null) return null;
    if (_learnTopics is EqualUnmodifiableListView) return _learnTopics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// List<String>? testPreparations,
  @override
  final bool? isPhoneActivated;
  @override
  final int? timezone;
  @override
  final String? studySchedule;
  @override
  final bool? canSendMessage;

  @override
  String toString() {
    return 'User(id: $id, email: $email, name: $name, avatar: $avatar, country: $country, phone: $phone, roles: $roles, language: $language, birthday: $birthday, isActivated: $isActivated, walletInfo: $walletInfo, requireNote: $requireNote, level: $level, learnTopics: $learnTopics, isPhoneActivated: $isPhoneActivated, timezone: $timezone, studySchedule: $studySchedule, canSendMessage: $canSendMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.isActivated, isActivated) ||
                other.isActivated == isActivated) &&
            (identical(other.walletInfo, walletInfo) ||
                other.walletInfo == walletInfo) &&
            (identical(other.requireNote, requireNote) ||
                other.requireNote == requireNote) &&
            (identical(other.level, level) || other.level == level) &&
            const DeepCollectionEquality()
                .equals(other._learnTopics, _learnTopics) &&
            (identical(other.isPhoneActivated, isPhoneActivated) ||
                other.isPhoneActivated == isPhoneActivated) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.studySchedule, studySchedule) ||
                other.studySchedule == studySchedule) &&
            (identical(other.canSendMessage, canSendMessage) ||
                other.canSendMessage == canSendMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      name,
      avatar,
      country,
      phone,
      const DeepCollectionEquality().hash(_roles),
      language,
      birthday,
      isActivated,
      walletInfo,
      requireNote,
      level,
      const DeepCollectionEquality().hash(_learnTopics),
      isPhoneActivated,
      timezone,
      studySchedule,
      canSendMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {final String? id,
      final String? email,
      final String? name,
      final String? avatar,
      final String? country,
      final String? phone,
      final List<String>? roles,
      final String? language,
      final String? birthday,
      final bool? isActivated,
      final WalletInfo? walletInfo,
      final String? requireNote,
      final String? level,
      final List<dynamic>? learnTopics,
      final bool? isPhoneActivated,
      final int? timezone,
      final String? studySchedule,
      final bool? canSendMessage}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String? get id;
  @override
  String? get email;
  @override
  String? get name;
  @override
  String? get avatar;
  @override
  String? get country;
  @override
  String? get phone;
  @override
  List<String>? get roles;
  @override
  String? get language;
  @override
  String? get birthday;
  @override
  bool? get isActivated;
  @override
  WalletInfo? get walletInfo;
  @override // List<dynamic>? courses,
  String? get requireNote;
  @override
  String? get level;
  @override
  List<dynamic>? get learnTopics;
  @override // List<String>? testPreparations,
  bool? get isPhoneActivated;
  @override
  int? get timezone;
  @override
  String? get studySchedule;
  @override
  bool? get canSendMessage;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}

WalletInfo _$WalletInfoFromJson(Map<String, dynamic> json) {
  return _WalletInfo.fromJson(json);
}

/// @nodoc
mixin _$WalletInfo {
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;
  bool? get isBlocked => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  int get bonus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletInfoCopyWith<WalletInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletInfoCopyWith<$Res> {
  factory $WalletInfoCopyWith(
          WalletInfo value, $Res Function(WalletInfo) then) =
      _$WalletInfoCopyWithImpl<$Res, WalletInfo>;
  @useResult
  $Res call(
      {String? id,
      String? userId,
      String? amount,
      bool? isBlocked,
      String? createdAt,
      String? updatedAt,
      int bonus});
}

/// @nodoc
class _$WalletInfoCopyWithImpl<$Res, $Val extends WalletInfo>
    implements $WalletInfoCopyWith<$Res> {
  _$WalletInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? amount = freezed,
    Object? isBlocked = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? bonus = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      isBlocked: freezed == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WalletInfoCopyWith<$Res>
    implements $WalletInfoCopyWith<$Res> {
  factory _$$_WalletInfoCopyWith(
          _$_WalletInfo value, $Res Function(_$_WalletInfo) then) =
      __$$_WalletInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? userId,
      String? amount,
      bool? isBlocked,
      String? createdAt,
      String? updatedAt,
      int bonus});
}

/// @nodoc
class __$$_WalletInfoCopyWithImpl<$Res>
    extends _$WalletInfoCopyWithImpl<$Res, _$_WalletInfo>
    implements _$$_WalletInfoCopyWith<$Res> {
  __$$_WalletInfoCopyWithImpl(
      _$_WalletInfo _value, $Res Function(_$_WalletInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? amount = freezed,
    Object? isBlocked = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? bonus = null,
  }) {
    return _then(_$_WalletInfo(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      isBlocked: freezed == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WalletInfo implements _WalletInfo {
  const _$_WalletInfo(
      {this.id,
      this.userId,
      this.amount,
      this.isBlocked,
      this.createdAt,
      this.updatedAt,
      required this.bonus});

  factory _$_WalletInfo.fromJson(Map<String, dynamic> json) =>
      _$$_WalletInfoFromJson(json);

  @override
  final String? id;
  @override
  final String? userId;
  @override
  final String? amount;
  @override
  final bool? isBlocked;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final int bonus;

  @override
  String toString() {
    return 'WalletInfo(id: $id, userId: $userId, amount: $amount, isBlocked: $isBlocked, createdAt: $createdAt, updatedAt: $updatedAt, bonus: $bonus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.isBlocked, isBlocked) ||
                other.isBlocked == isBlocked) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.bonus, bonus) || other.bonus == bonus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, amount, isBlocked, createdAt, updatedAt, bonus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WalletInfoCopyWith<_$_WalletInfo> get copyWith =>
      __$$_WalletInfoCopyWithImpl<_$_WalletInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletInfoToJson(
      this,
    );
  }
}

abstract class _WalletInfo implements WalletInfo {
  const factory _WalletInfo(
      {final String? id,
      final String? userId,
      final String? amount,
      final bool? isBlocked,
      final String? createdAt,
      final String? updatedAt,
      required final int bonus}) = _$_WalletInfo;

  factory _WalletInfo.fromJson(Map<String, dynamic> json) =
      _$_WalletInfo.fromJson;

  @override
  String? get id;
  @override
  String? get userId;
  @override
  String? get amount;
  @override
  bool? get isBlocked;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  int get bonus;
  @override
  @JsonKey(ignore: true)
  _$$_WalletInfoCopyWith<_$_WalletInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
