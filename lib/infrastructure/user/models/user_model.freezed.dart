// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  User? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call({User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$_UserModel>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_UserModel(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  const _$_UserModel({this.user});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  final User? user;

  @override
  String toString() {
    return 'UserModel(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel({final User? user}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
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
  DateTime? get birthday => throw _privateConstructorUsedError;
  bool? get isActivated => throw _privateConstructorUsedError;
  TutorInfo? get tutorInfo => throw _privateConstructorUsedError;
  WalletInfo? get walletInfo => throw _privateConstructorUsedError;
  String? get requireNote => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  List<LearnTopic>? get learnTopics => throw _privateConstructorUsedError;
  List<LearnTopic>? get testPreparations => throw _privateConstructorUsedError;
  bool? get isPhoneActivated => throw _privateConstructorUsedError;
  int? get timezone => throw _privateConstructorUsedError;
  ReferralInfo? get referralInfo => throw _privateConstructorUsedError;
  String? get studySchedule => throw _privateConstructorUsedError;
  bool? get canSendMessage => throw _privateConstructorUsedError;
  dynamic? get studentGroup => throw _privateConstructorUsedError;
  dynamic? get studentInfo => throw _privateConstructorUsedError;
  double? get avgRating => throw _privateConstructorUsedError;

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
      double? avgRating});

  $TutorInfoCopyWith<$Res>? get tutorInfo;
  $WalletInfoCopyWith<$Res>? get walletInfo;
  $ReferralInfoCopyWith<$Res>? get referralInfo;
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
    Object? tutorInfo = freezed,
    Object? walletInfo = freezed,
    Object? requireNote = freezed,
    Object? level = freezed,
    Object? learnTopics = freezed,
    Object? testPreparations = freezed,
    Object? isPhoneActivated = freezed,
    Object? timezone = freezed,
    Object? referralInfo = freezed,
    Object? studySchedule = freezed,
    Object? canSendMessage = freezed,
    Object? studentGroup = freezed,
    Object? studentInfo = freezed,
    Object? avgRating = freezed,
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
              as DateTime?,
      isActivated: freezed == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      tutorInfo: freezed == tutorInfo
          ? _value.tutorInfo
          : tutorInfo // ignore: cast_nullable_to_non_nullable
              as TutorInfo?,
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
              as List<LearnTopic>?,
      testPreparations: freezed == testPreparations
          ? _value.testPreparations
          : testPreparations // ignore: cast_nullable_to_non_nullable
              as List<LearnTopic>?,
      isPhoneActivated: freezed == isPhoneActivated
          ? _value.isPhoneActivated
          : isPhoneActivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int?,
      referralInfo: freezed == referralInfo
          ? _value.referralInfo
          : referralInfo // ignore: cast_nullable_to_non_nullable
              as ReferralInfo?,
      studySchedule: freezed == studySchedule
          ? _value.studySchedule
          : studySchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      canSendMessage: freezed == canSendMessage
          ? _value.canSendMessage
          : canSendMessage // ignore: cast_nullable_to_non_nullable
              as bool?,
      studentGroup: freezed == studentGroup
          ? _value.studentGroup
          : studentGroup // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      studentInfo: freezed == studentInfo
          ? _value.studentInfo
          : studentInfo // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      avgRating: freezed == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TutorInfoCopyWith<$Res>? get tutorInfo {
    if (_value.tutorInfo == null) {
      return null;
    }

    return $TutorInfoCopyWith<$Res>(_value.tutorInfo!, (value) {
      return _then(_value.copyWith(tutorInfo: value) as $Val);
    });
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

  @override
  @pragma('vm:prefer-inline')
  $ReferralInfoCopyWith<$Res>? get referralInfo {
    if (_value.referralInfo == null) {
      return null;
    }

    return $ReferralInfoCopyWith<$Res>(_value.referralInfo!, (value) {
      return _then(_value.copyWith(referralInfo: value) as $Val);
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
      double? avgRating});

  @override
  $TutorInfoCopyWith<$Res>? get tutorInfo;
  @override
  $WalletInfoCopyWith<$Res>? get walletInfo;
  @override
  $ReferralInfoCopyWith<$Res>? get referralInfo;
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
    Object? tutorInfo = freezed,
    Object? walletInfo = freezed,
    Object? requireNote = freezed,
    Object? level = freezed,
    Object? learnTopics = freezed,
    Object? testPreparations = freezed,
    Object? isPhoneActivated = freezed,
    Object? timezone = freezed,
    Object? referralInfo = freezed,
    Object? studySchedule = freezed,
    Object? canSendMessage = freezed,
    Object? studentGroup = freezed,
    Object? studentInfo = freezed,
    Object? avgRating = freezed,
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
              as DateTime?,
      isActivated: freezed == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      tutorInfo: freezed == tutorInfo
          ? _value.tutorInfo
          : tutorInfo // ignore: cast_nullable_to_non_nullable
              as TutorInfo?,
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
              as List<LearnTopic>?,
      testPreparations: freezed == testPreparations
          ? _value._testPreparations
          : testPreparations // ignore: cast_nullable_to_non_nullable
              as List<LearnTopic>?,
      isPhoneActivated: freezed == isPhoneActivated
          ? _value.isPhoneActivated
          : isPhoneActivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int?,
      referralInfo: freezed == referralInfo
          ? _value.referralInfo
          : referralInfo // ignore: cast_nullable_to_non_nullable
              as ReferralInfo?,
      studySchedule: freezed == studySchedule
          ? _value.studySchedule
          : studySchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      canSendMessage: freezed == canSendMessage
          ? _value.canSendMessage
          : canSendMessage // ignore: cast_nullable_to_non_nullable
              as bool?,
      studentGroup: freezed == studentGroup
          ? _value.studentGroup
          : studentGroup // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      studentInfo: freezed == studentInfo
          ? _value.studentInfo
          : studentInfo // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      avgRating: freezed == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as double?,
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
      this.tutorInfo,
      this.walletInfo,
      this.requireNote,
      this.level,
      final List<LearnTopic>? learnTopics,
      final List<LearnTopic>? testPreparations,
      this.isPhoneActivated,
      this.timezone,
      this.referralInfo,
      this.studySchedule,
      this.canSendMessage,
      this.studentGroup,
      this.studentInfo,
      this.avgRating})
      : _roles = roles,
        _learnTopics = learnTopics,
        _testPreparations = testPreparations;

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
  final DateTime? birthday;
  @override
  final bool? isActivated;
  @override
  final TutorInfo? tutorInfo;
  @override
  final WalletInfo? walletInfo;
  @override
  final String? requireNote;
  @override
  final String? level;
  final List<LearnTopic>? _learnTopics;
  @override
  List<LearnTopic>? get learnTopics {
    final value = _learnTopics;
    if (value == null) return null;
    if (_learnTopics is EqualUnmodifiableListView) return _learnTopics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LearnTopic>? _testPreparations;
  @override
  List<LearnTopic>? get testPreparations {
    final value = _testPreparations;
    if (value == null) return null;
    if (_testPreparations is EqualUnmodifiableListView)
      return _testPreparations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isPhoneActivated;
  @override
  final int? timezone;
  @override
  final ReferralInfo? referralInfo;
  @override
  final String? studySchedule;
  @override
  final bool? canSendMessage;
  @override
  final dynamic? studentGroup;
  @override
  final dynamic? studentInfo;
  @override
  final double? avgRating;

  @override
  String toString() {
    return 'User(id: $id, email: $email, name: $name, avatar: $avatar, country: $country, phone: $phone, roles: $roles, language: $language, birthday: $birthday, isActivated: $isActivated, tutorInfo: $tutorInfo, walletInfo: $walletInfo, requireNote: $requireNote, level: $level, learnTopics: $learnTopics, testPreparations: $testPreparations, isPhoneActivated: $isPhoneActivated, timezone: $timezone, referralInfo: $referralInfo, studySchedule: $studySchedule, canSendMessage: $canSendMessage, studentGroup: $studentGroup, studentInfo: $studentInfo, avgRating: $avgRating)';
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
            (identical(other.tutorInfo, tutorInfo) ||
                other.tutorInfo == tutorInfo) &&
            (identical(other.walletInfo, walletInfo) ||
                other.walletInfo == walletInfo) &&
            (identical(other.requireNote, requireNote) ||
                other.requireNote == requireNote) &&
            (identical(other.level, level) || other.level == level) &&
            const DeepCollectionEquality()
                .equals(other._learnTopics, _learnTopics) &&
            const DeepCollectionEquality()
                .equals(other._testPreparations, _testPreparations) &&
            (identical(other.isPhoneActivated, isPhoneActivated) ||
                other.isPhoneActivated == isPhoneActivated) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.referralInfo, referralInfo) ||
                other.referralInfo == referralInfo) &&
            (identical(other.studySchedule, studySchedule) ||
                other.studySchedule == studySchedule) &&
            (identical(other.canSendMessage, canSendMessage) ||
                other.canSendMessage == canSendMessage) &&
            const DeepCollectionEquality()
                .equals(other.studentGroup, studentGroup) &&
            const DeepCollectionEquality()
                .equals(other.studentInfo, studentInfo) &&
            (identical(other.avgRating, avgRating) ||
                other.avgRating == avgRating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
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
        tutorInfo,
        walletInfo,
        requireNote,
        level,
        const DeepCollectionEquality().hash(_learnTopics),
        const DeepCollectionEquality().hash(_testPreparations),
        isPhoneActivated,
        timezone,
        referralInfo,
        studySchedule,
        canSendMessage,
        const DeepCollectionEquality().hash(studentGroup),
        const DeepCollectionEquality().hash(studentInfo),
        avgRating
      ]);

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
      final DateTime? birthday,
      final bool? isActivated,
      final TutorInfo? tutorInfo,
      final WalletInfo? walletInfo,
      final String? requireNote,
      final String? level,
      final List<LearnTopic>? learnTopics,
      final List<LearnTopic>? testPreparations,
      final bool? isPhoneActivated,
      final int? timezone,
      final ReferralInfo? referralInfo,
      final String? studySchedule,
      final bool? canSendMessage,
      final dynamic? studentGroup,
      final dynamic? studentInfo,
      final double? avgRating}) = _$_User;

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
  DateTime? get birthday;
  @override
  bool? get isActivated;
  @override
  TutorInfo? get tutorInfo;
  @override
  WalletInfo? get walletInfo;
  @override
  String? get requireNote;
  @override
  String? get level;
  @override
  List<LearnTopic>? get learnTopics;
  @override
  List<LearnTopic>? get testPreparations;
  @override
  bool? get isPhoneActivated;
  @override
  int? get timezone;
  @override
  ReferralInfo? get referralInfo;
  @override
  String? get studySchedule;
  @override
  bool? get canSendMessage;
  @override
  dynamic? get studentGroup;
  @override
  dynamic? get studentInfo;
  @override
  double? get avgRating;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}

LearnTopic _$LearnTopicFromJson(Map<String, dynamic> json) {
  return _LearnTopic.fromJson(json);
}

/// @nodoc
mixin _$LearnTopic {
  int? get id => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LearnTopicCopyWith<LearnTopic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearnTopicCopyWith<$Res> {
  factory $LearnTopicCopyWith(
          LearnTopic value, $Res Function(LearnTopic) then) =
      _$LearnTopicCopyWithImpl<$Res, LearnTopic>;
  @useResult
  $Res call({int? id, String? key, String? name});
}

/// @nodoc
class _$LearnTopicCopyWithImpl<$Res, $Val extends LearnTopic>
    implements $LearnTopicCopyWith<$Res> {
  _$LearnTopicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? key = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LearnTopicCopyWith<$Res>
    implements $LearnTopicCopyWith<$Res> {
  factory _$$_LearnTopicCopyWith(
          _$_LearnTopic value, $Res Function(_$_LearnTopic) then) =
      __$$_LearnTopicCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? key, String? name});
}

/// @nodoc
class __$$_LearnTopicCopyWithImpl<$Res>
    extends _$LearnTopicCopyWithImpl<$Res, _$_LearnTopic>
    implements _$$_LearnTopicCopyWith<$Res> {
  __$$_LearnTopicCopyWithImpl(
      _$_LearnTopic _value, $Res Function(_$_LearnTopic) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? key = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_LearnTopic(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LearnTopic implements _LearnTopic {
  const _$_LearnTopic({this.id, this.key, this.name});

  factory _$_LearnTopic.fromJson(Map<String, dynamic> json) =>
      _$$_LearnTopicFromJson(json);

  @override
  final int? id;
  @override
  final String? key;
  @override
  final String? name;

  @override
  String toString() {
    return 'LearnTopic(id: $id, key: $key, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LearnTopic &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, key, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LearnTopicCopyWith<_$_LearnTopic> get copyWith =>
      __$$_LearnTopicCopyWithImpl<_$_LearnTopic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LearnTopicToJson(
      this,
    );
  }
}

abstract class _LearnTopic implements LearnTopic {
  const factory _LearnTopic(
      {final int? id, final String? key, final String? name}) = _$_LearnTopic;

  factory _LearnTopic.fromJson(Map<String, dynamic> json) =
      _$_LearnTopic.fromJson;

  @override
  int? get id;
  @override
  String? get key;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_LearnTopicCopyWith<_$_LearnTopic> get copyWith =>
      throw _privateConstructorUsedError;
}

ReferralInfo _$ReferralInfoFromJson(Map<String, dynamic> json) {
  return _ReferralInfo.fromJson(json);
}

/// @nodoc
mixin _$ReferralInfo {
  String? get referralCode => throw _privateConstructorUsedError;
  ReferralPackInfo? get referralPackInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReferralInfoCopyWith<ReferralInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralInfoCopyWith<$Res> {
  factory $ReferralInfoCopyWith(
          ReferralInfo value, $Res Function(ReferralInfo) then) =
      _$ReferralInfoCopyWithImpl<$Res, ReferralInfo>;
  @useResult
  $Res call({String? referralCode, ReferralPackInfo? referralPackInfo});

  $ReferralPackInfoCopyWith<$Res>? get referralPackInfo;
}

/// @nodoc
class _$ReferralInfoCopyWithImpl<$Res, $Val extends ReferralInfo>
    implements $ReferralInfoCopyWith<$Res> {
  _$ReferralInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referralCode = freezed,
    Object? referralPackInfo = freezed,
  }) {
    return _then(_value.copyWith(
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      referralPackInfo: freezed == referralPackInfo
          ? _value.referralPackInfo
          : referralPackInfo // ignore: cast_nullable_to_non_nullable
              as ReferralPackInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferralPackInfoCopyWith<$Res>? get referralPackInfo {
    if (_value.referralPackInfo == null) {
      return null;
    }

    return $ReferralPackInfoCopyWith<$Res>(_value.referralPackInfo!, (value) {
      return _then(_value.copyWith(referralPackInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReferralInfoCopyWith<$Res>
    implements $ReferralInfoCopyWith<$Res> {
  factory _$$_ReferralInfoCopyWith(
          _$_ReferralInfo value, $Res Function(_$_ReferralInfo) then) =
      __$$_ReferralInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? referralCode, ReferralPackInfo? referralPackInfo});

  @override
  $ReferralPackInfoCopyWith<$Res>? get referralPackInfo;
}

/// @nodoc
class __$$_ReferralInfoCopyWithImpl<$Res>
    extends _$ReferralInfoCopyWithImpl<$Res, _$_ReferralInfo>
    implements _$$_ReferralInfoCopyWith<$Res> {
  __$$_ReferralInfoCopyWithImpl(
      _$_ReferralInfo _value, $Res Function(_$_ReferralInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referralCode = freezed,
    Object? referralPackInfo = freezed,
  }) {
    return _then(_$_ReferralInfo(
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      referralPackInfo: freezed == referralPackInfo
          ? _value.referralPackInfo
          : referralPackInfo // ignore: cast_nullable_to_non_nullable
              as ReferralPackInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReferralInfo implements _ReferralInfo {
  const _$_ReferralInfo({this.referralCode, this.referralPackInfo});

  factory _$_ReferralInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ReferralInfoFromJson(json);

  @override
  final String? referralCode;
  @override
  final ReferralPackInfo? referralPackInfo;

  @override
  String toString() {
    return 'ReferralInfo(referralCode: $referralCode, referralPackInfo: $referralPackInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReferralInfo &&
            (identical(other.referralCode, referralCode) ||
                other.referralCode == referralCode) &&
            (identical(other.referralPackInfo, referralPackInfo) ||
                other.referralPackInfo == referralPackInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, referralCode, referralPackInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReferralInfoCopyWith<_$_ReferralInfo> get copyWith =>
      __$$_ReferralInfoCopyWithImpl<_$_ReferralInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReferralInfoToJson(
      this,
    );
  }
}

abstract class _ReferralInfo implements ReferralInfo {
  const factory _ReferralInfo(
      {final String? referralCode,
      final ReferralPackInfo? referralPackInfo}) = _$_ReferralInfo;

  factory _ReferralInfo.fromJson(Map<String, dynamic> json) =
      _$_ReferralInfo.fromJson;

  @override
  String? get referralCode;
  @override
  ReferralPackInfo? get referralPackInfo;
  @override
  @JsonKey(ignore: true)
  _$$_ReferralInfoCopyWith<_$_ReferralInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

ReferralPackInfo _$ReferralPackInfoFromJson(Map<String, dynamic> json) {
  return _ReferralPackInfo.fromJson(json);
}

/// @nodoc
mixin _$ReferralPackInfo {
  int? get earnPercent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReferralPackInfoCopyWith<ReferralPackInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralPackInfoCopyWith<$Res> {
  factory $ReferralPackInfoCopyWith(
          ReferralPackInfo value, $Res Function(ReferralPackInfo) then) =
      _$ReferralPackInfoCopyWithImpl<$Res, ReferralPackInfo>;
  @useResult
  $Res call({int? earnPercent});
}

/// @nodoc
class _$ReferralPackInfoCopyWithImpl<$Res, $Val extends ReferralPackInfo>
    implements $ReferralPackInfoCopyWith<$Res> {
  _$ReferralPackInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? earnPercent = freezed,
  }) {
    return _then(_value.copyWith(
      earnPercent: freezed == earnPercent
          ? _value.earnPercent
          : earnPercent // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReferralPackInfoCopyWith<$Res>
    implements $ReferralPackInfoCopyWith<$Res> {
  factory _$$_ReferralPackInfoCopyWith(
          _$_ReferralPackInfo value, $Res Function(_$_ReferralPackInfo) then) =
      __$$_ReferralPackInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? earnPercent});
}

/// @nodoc
class __$$_ReferralPackInfoCopyWithImpl<$Res>
    extends _$ReferralPackInfoCopyWithImpl<$Res, _$_ReferralPackInfo>
    implements _$$_ReferralPackInfoCopyWith<$Res> {
  __$$_ReferralPackInfoCopyWithImpl(
      _$_ReferralPackInfo _value, $Res Function(_$_ReferralPackInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? earnPercent = freezed,
  }) {
    return _then(_$_ReferralPackInfo(
      earnPercent: freezed == earnPercent
          ? _value.earnPercent
          : earnPercent // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReferralPackInfo implements _ReferralPackInfo {
  const _$_ReferralPackInfo({this.earnPercent});

  factory _$_ReferralPackInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ReferralPackInfoFromJson(json);

  @override
  final int? earnPercent;

  @override
  String toString() {
    return 'ReferralPackInfo(earnPercent: $earnPercent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReferralPackInfo &&
            (identical(other.earnPercent, earnPercent) ||
                other.earnPercent == earnPercent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, earnPercent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReferralPackInfoCopyWith<_$_ReferralPackInfo> get copyWith =>
      __$$_ReferralPackInfoCopyWithImpl<_$_ReferralPackInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReferralPackInfoToJson(
      this,
    );
  }
}

abstract class _ReferralPackInfo implements ReferralPackInfo {
  const factory _ReferralPackInfo({final int? earnPercent}) =
      _$_ReferralPackInfo;

  factory _ReferralPackInfo.fromJson(Map<String, dynamic> json) =
      _$_ReferralPackInfo.fromJson;

  @override
  int? get earnPercent;
  @override
  @JsonKey(ignore: true)
  _$$_ReferralPackInfoCopyWith<_$_ReferralPackInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

WalletInfo _$WalletInfoFromJson(Map<String, dynamic> json) {
  return _WalletInfo.fromJson(json);
}

/// @nodoc
mixin _$WalletInfo {
  String? get amount => throw _privateConstructorUsedError;
  bool? get isBlocked => throw _privateConstructorUsedError;
  int? get bonus => throw _privateConstructorUsedError;

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
  $Res call({String? amount, bool? isBlocked, int? bonus});
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
    Object? amount = freezed,
    Object? isBlocked = freezed,
    Object? bonus = freezed,
  }) {
    return _then(_value.copyWith(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      isBlocked: freezed == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      bonus: freezed == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as int?,
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
  $Res call({String? amount, bool? isBlocked, int? bonus});
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
    Object? amount = freezed,
    Object? isBlocked = freezed,
    Object? bonus = freezed,
  }) {
    return _then(_$_WalletInfo(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      isBlocked: freezed == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      bonus: freezed == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WalletInfo implements _WalletInfo {
  const _$_WalletInfo({this.amount, this.isBlocked, this.bonus});

  factory _$_WalletInfo.fromJson(Map<String, dynamic> json) =>
      _$$_WalletInfoFromJson(json);

  @override
  final String? amount;
  @override
  final bool? isBlocked;
  @override
  final int? bonus;

  @override
  String toString() {
    return 'WalletInfo(amount: $amount, isBlocked: $isBlocked, bonus: $bonus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletInfo &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.isBlocked, isBlocked) ||
                other.isBlocked == isBlocked) &&
            (identical(other.bonus, bonus) || other.bonus == bonus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, isBlocked, bonus);

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
      {final String? amount,
      final bool? isBlocked,
      final int? bonus}) = _$_WalletInfo;

  factory _WalletInfo.fromJson(Map<String, dynamic> json) =
      _$_WalletInfo.fromJson;

  @override
  String? get amount;
  @override
  bool? get isBlocked;
  @override
  int? get bonus;
  @override
  @JsonKey(ignore: true)
  _$$_WalletInfoCopyWith<_$_WalletInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
