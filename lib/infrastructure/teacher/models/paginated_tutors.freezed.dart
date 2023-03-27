// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_tutors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginatedTutors _$PaginatedTutorsFromJson(Map<String, dynamic> json) {
  return _PaginatedTutors.fromJson(json);
}

/// @nodoc
mixin _$PaginatedTutors {
  Tutors get tutors => throw _privateConstructorUsedError;
  List<FavoriteTutor> get favoriteTutor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedTutorsCopyWith<PaginatedTutors> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedTutorsCopyWith<$Res> {
  factory $PaginatedTutorsCopyWith(
          PaginatedTutors value, $Res Function(PaginatedTutors) then) =
      _$PaginatedTutorsCopyWithImpl<$Res, PaginatedTutors>;
  @useResult
  $Res call({Tutors tutors, List<FavoriteTutor> favoriteTutor});

  $TutorsCopyWith<$Res> get tutors;
}

/// @nodoc
class _$PaginatedTutorsCopyWithImpl<$Res, $Val extends PaginatedTutors>
    implements $PaginatedTutorsCopyWith<$Res> {
  _$PaginatedTutorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tutors = null,
    Object? favoriteTutor = null,
  }) {
    return _then(_value.copyWith(
      tutors: null == tutors
          ? _value.tutors
          : tutors // ignore: cast_nullable_to_non_nullable
              as Tutors,
      favoriteTutor: null == favoriteTutor
          ? _value.favoriteTutor
          : favoriteTutor // ignore: cast_nullable_to_non_nullable
              as List<FavoriteTutor>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TutorsCopyWith<$Res> get tutors {
    return $TutorsCopyWith<$Res>(_value.tutors, (value) {
      return _then(_value.copyWith(tutors: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PaginatedTutorsCopyWith<$Res>
    implements $PaginatedTutorsCopyWith<$Res> {
  factory _$$_PaginatedTutorsCopyWith(
          _$_PaginatedTutors value, $Res Function(_$_PaginatedTutors) then) =
      __$$_PaginatedTutorsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Tutors tutors, List<FavoriteTutor> favoriteTutor});

  @override
  $TutorsCopyWith<$Res> get tutors;
}

/// @nodoc
class __$$_PaginatedTutorsCopyWithImpl<$Res>
    extends _$PaginatedTutorsCopyWithImpl<$Res, _$_PaginatedTutors>
    implements _$$_PaginatedTutorsCopyWith<$Res> {
  __$$_PaginatedTutorsCopyWithImpl(
      _$_PaginatedTutors _value, $Res Function(_$_PaginatedTutors) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tutors = null,
    Object? favoriteTutor = null,
  }) {
    return _then(_$_PaginatedTutors(
      tutors: null == tutors
          ? _value.tutors
          : tutors // ignore: cast_nullable_to_non_nullable
              as Tutors,
      favoriteTutor: null == favoriteTutor
          ? _value._favoriteTutor
          : favoriteTutor // ignore: cast_nullable_to_non_nullable
              as List<FavoriteTutor>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaginatedTutors implements _PaginatedTutors {
  const _$_PaginatedTutors(
      {required this.tutors, required final List<FavoriteTutor> favoriteTutor})
      : _favoriteTutor = favoriteTutor;

  factory _$_PaginatedTutors.fromJson(Map<String, dynamic> json) =>
      _$$_PaginatedTutorsFromJson(json);

  @override
  final Tutors tutors;
  final List<FavoriteTutor> _favoriteTutor;
  @override
  List<FavoriteTutor> get favoriteTutor {
    if (_favoriteTutor is EqualUnmodifiableListView) return _favoriteTutor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteTutor);
  }

  @override
  String toString() {
    return 'PaginatedTutors(tutors: $tutors, favoriteTutor: $favoriteTutor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginatedTutors &&
            (identical(other.tutors, tutors) || other.tutors == tutors) &&
            const DeepCollectionEquality()
                .equals(other._favoriteTutor, _favoriteTutor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, tutors, const DeepCollectionEquality().hash(_favoriteTutor));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginatedTutorsCopyWith<_$_PaginatedTutors> get copyWith =>
      __$$_PaginatedTutorsCopyWithImpl<_$_PaginatedTutors>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginatedTutorsToJson(
      this,
    );
  }
}

abstract class _PaginatedTutors implements PaginatedTutors {
  const factory _PaginatedTutors(
      {required final Tutors tutors,
      required final List<FavoriteTutor> favoriteTutor}) = _$_PaginatedTutors;

  factory _PaginatedTutors.fromJson(Map<String, dynamic> json) =
      _$_PaginatedTutors.fromJson;

  @override
  Tutors get tutors;
  @override
  List<FavoriteTutor> get favoriteTutor;
  @override
  @JsonKey(ignore: true)
  _$$_PaginatedTutorsCopyWith<_$_PaginatedTutors> get copyWith =>
      throw _privateConstructorUsedError;
}

FavoriteTutor _$FavoriteTutorFromJson(Map<String, dynamic> json) {
  return _FavoriteTutor.fromJson(json);
}

/// @nodoc
mixin _$FavoriteTutor {
  String get id => throw _privateConstructorUsedError;
  String get firstId => throw _privateConstructorUsedError;
  String get secondId => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  SecondInfo get secondInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteTutorCopyWith<FavoriteTutor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteTutorCopyWith<$Res> {
  factory $FavoriteTutorCopyWith(
          FavoriteTutor value, $Res Function(FavoriteTutor) then) =
      _$FavoriteTutorCopyWithImpl<$Res, FavoriteTutor>;
  @useResult
  $Res call(
      {String id,
      String firstId,
      String secondId,
      String createdAt,
      String updatedAt,
      SecondInfo secondInfo});

  $SecondInfoCopyWith<$Res> get secondInfo;
}

/// @nodoc
class _$FavoriteTutorCopyWithImpl<$Res, $Val extends FavoriteTutor>
    implements $FavoriteTutorCopyWith<$Res> {
  _$FavoriteTutorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstId = null,
    Object? secondId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? secondInfo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstId: null == firstId
          ? _value.firstId
          : firstId // ignore: cast_nullable_to_non_nullable
              as String,
      secondId: null == secondId
          ? _value.secondId
          : secondId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      secondInfo: null == secondInfo
          ? _value.secondInfo
          : secondInfo // ignore: cast_nullable_to_non_nullable
              as SecondInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SecondInfoCopyWith<$Res> get secondInfo {
    return $SecondInfoCopyWith<$Res>(_value.secondInfo, (value) {
      return _then(_value.copyWith(secondInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FavoriteTutorCopyWith<$Res>
    implements $FavoriteTutorCopyWith<$Res> {
  factory _$$_FavoriteTutorCopyWith(
          _$_FavoriteTutor value, $Res Function(_$_FavoriteTutor) then) =
      __$$_FavoriteTutorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String firstId,
      String secondId,
      String createdAt,
      String updatedAt,
      SecondInfo secondInfo});

  @override
  $SecondInfoCopyWith<$Res> get secondInfo;
}

/// @nodoc
class __$$_FavoriteTutorCopyWithImpl<$Res>
    extends _$FavoriteTutorCopyWithImpl<$Res, _$_FavoriteTutor>
    implements _$$_FavoriteTutorCopyWith<$Res> {
  __$$_FavoriteTutorCopyWithImpl(
      _$_FavoriteTutor _value, $Res Function(_$_FavoriteTutor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstId = null,
    Object? secondId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? secondInfo = null,
  }) {
    return _then(_$_FavoriteTutor(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstId: null == firstId
          ? _value.firstId
          : firstId // ignore: cast_nullable_to_non_nullable
              as String,
      secondId: null == secondId
          ? _value.secondId
          : secondId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      secondInfo: null == secondInfo
          ? _value.secondInfo
          : secondInfo // ignore: cast_nullable_to_non_nullable
              as SecondInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavoriteTutor implements _FavoriteTutor {
  const _$_FavoriteTutor(
      {required this.id,
      required this.firstId,
      required this.secondId,
      required this.createdAt,
      required this.updatedAt,
      required this.secondInfo});

  factory _$_FavoriteTutor.fromJson(Map<String, dynamic> json) =>
      _$$_FavoriteTutorFromJson(json);

  @override
  final String id;
  @override
  final String firstId;
  @override
  final String secondId;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final SecondInfo secondInfo;

  @override
  String toString() {
    return 'FavoriteTutor(id: $id, firstId: $firstId, secondId: $secondId, createdAt: $createdAt, updatedAt: $updatedAt, secondInfo: $secondInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteTutor &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstId, firstId) || other.firstId == firstId) &&
            (identical(other.secondId, secondId) ||
                other.secondId == secondId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.secondInfo, secondInfo) ||
                other.secondInfo == secondInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, firstId, secondId, createdAt, updatedAt, secondInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoriteTutorCopyWith<_$_FavoriteTutor> get copyWith =>
      __$$_FavoriteTutorCopyWithImpl<_$_FavoriteTutor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavoriteTutorToJson(
      this,
    );
  }
}

abstract class _FavoriteTutor implements FavoriteTutor {
  const factory _FavoriteTutor(
      {required final String id,
      required final String firstId,
      required final String secondId,
      required final String createdAt,
      required final String updatedAt,
      required final SecondInfo secondInfo}) = _$_FavoriteTutor;

  factory _FavoriteTutor.fromJson(Map<String, dynamic> json) =
      _$_FavoriteTutor.fromJson;

  @override
  String get id;
  @override
  String get firstId;
  @override
  String get secondId;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  SecondInfo get secondInfo;
  @override
  @JsonKey(ignore: true)
  _$$_FavoriteTutorCopyWith<_$_FavoriteTutor> get copyWith =>
      throw _privateConstructorUsedError;
}

SecondInfo _$SecondInfoFromJson(Map<String, dynamic> json) {
  return _SecondInfo.fromJson(json);
}

/// @nodoc
mixin _$SecondInfo {
  String get id => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  dynamic get google => throw _privateConstructorUsedError;
  dynamic get facebook => throw _privateConstructorUsedError;
  dynamic get apple => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  DateTime get birthday => throw _privateConstructorUsedError;
  bool get requestPassword => throw _privateConstructorUsedError;
  bool get isActivated => throw _privateConstructorUsedError;
  dynamic get isPhoneActivated => throw _privateConstructorUsedError;
  dynamic get requireNote => throw _privateConstructorUsedError;
  int get timezone => throw _privateConstructorUsedError;
  dynamic get phoneAuth => throw _privateConstructorUsedError;
  bool get isPhoneAuthActivated => throw _privateConstructorUsedError;
  String get studySchedule => throw _privateConstructorUsedError;
  bool get canSendMessage => throw _privateConstructorUsedError;
  bool get isPublicRecord => throw _privateConstructorUsedError;
  dynamic get caredByStaffId => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  dynamic get deletedAt => throw _privateConstructorUsedError;
  dynamic get studentGroupId => throw _privateConstructorUsedError;
  TutorInfo get tutorInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SecondInfoCopyWith<SecondInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecondInfoCopyWith<$Res> {
  factory $SecondInfoCopyWith(
          SecondInfo value, $Res Function(SecondInfo) then) =
      _$SecondInfoCopyWithImpl<$Res, SecondInfo>;
  @useResult
  $Res call(
      {String id,
      String level,
      String email,
      dynamic google,
      dynamic facebook,
      dynamic apple,
      String avatar,
      String name,
      String country,
      String phone,
      String language,
      DateTime birthday,
      bool requestPassword,
      bool isActivated,
      dynamic isPhoneActivated,
      dynamic requireNote,
      int timezone,
      dynamic phoneAuth,
      bool isPhoneAuthActivated,
      String studySchedule,
      bool canSendMessage,
      bool isPublicRecord,
      dynamic caredByStaffId,
      String createdAt,
      String updatedAt,
      dynamic deletedAt,
      dynamic studentGroupId,
      TutorInfo tutorInfo});

  $TutorInfoCopyWith<$Res> get tutorInfo;
}

/// @nodoc
class _$SecondInfoCopyWithImpl<$Res, $Val extends SecondInfo>
    implements $SecondInfoCopyWith<$Res> {
  _$SecondInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? level = null,
    Object? email = null,
    Object? google = freezed,
    Object? facebook = freezed,
    Object? apple = freezed,
    Object? avatar = null,
    Object? name = null,
    Object? country = null,
    Object? phone = null,
    Object? language = null,
    Object? birthday = null,
    Object? requestPassword = null,
    Object? isActivated = null,
    Object? isPhoneActivated = freezed,
    Object? requireNote = freezed,
    Object? timezone = null,
    Object? phoneAuth = freezed,
    Object? isPhoneAuthActivated = null,
    Object? studySchedule = null,
    Object? canSendMessage = null,
    Object? isPublicRecord = null,
    Object? caredByStaffId = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
    Object? studentGroupId = freezed,
    Object? tutorInfo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      google: freezed == google
          ? _value.google
          : google // ignore: cast_nullable_to_non_nullable
              as dynamic,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as dynamic,
      apple: freezed == apple
          ? _value.apple
          : apple // ignore: cast_nullable_to_non_nullable
              as dynamic,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requestPassword: null == requestPassword
          ? _value.requestPassword
          : requestPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isActivated: null == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      isPhoneActivated: freezed == isPhoneActivated
          ? _value.isPhoneActivated
          : isPhoneActivated // ignore: cast_nullable_to_non_nullable
              as dynamic,
      requireNote: freezed == requireNote
          ? _value.requireNote
          : requireNote // ignore: cast_nullable_to_non_nullable
              as dynamic,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
      phoneAuth: freezed == phoneAuth
          ? _value.phoneAuth
          : phoneAuth // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isPhoneAuthActivated: null == isPhoneAuthActivated
          ? _value.isPhoneAuthActivated
          : isPhoneAuthActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      studySchedule: null == studySchedule
          ? _value.studySchedule
          : studySchedule // ignore: cast_nullable_to_non_nullable
              as String,
      canSendMessage: null == canSendMessage
          ? _value.canSendMessage
          : canSendMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublicRecord: null == isPublicRecord
          ? _value.isPublicRecord
          : isPublicRecord // ignore: cast_nullable_to_non_nullable
              as bool,
      caredByStaffId: freezed == caredByStaffId
          ? _value.caredByStaffId
          : caredByStaffId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      studentGroupId: freezed == studentGroupId
          ? _value.studentGroupId
          : studentGroupId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tutorInfo: null == tutorInfo
          ? _value.tutorInfo
          : tutorInfo // ignore: cast_nullable_to_non_nullable
              as TutorInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TutorInfoCopyWith<$Res> get tutorInfo {
    return $TutorInfoCopyWith<$Res>(_value.tutorInfo, (value) {
      return _then(_value.copyWith(tutorInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SecondInfoCopyWith<$Res>
    implements $SecondInfoCopyWith<$Res> {
  factory _$$_SecondInfoCopyWith(
          _$_SecondInfo value, $Res Function(_$_SecondInfo) then) =
      __$$_SecondInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String level,
      String email,
      dynamic google,
      dynamic facebook,
      dynamic apple,
      String avatar,
      String name,
      String country,
      String phone,
      String language,
      DateTime birthday,
      bool requestPassword,
      bool isActivated,
      dynamic isPhoneActivated,
      dynamic requireNote,
      int timezone,
      dynamic phoneAuth,
      bool isPhoneAuthActivated,
      String studySchedule,
      bool canSendMessage,
      bool isPublicRecord,
      dynamic caredByStaffId,
      String createdAt,
      String updatedAt,
      dynamic deletedAt,
      dynamic studentGroupId,
      TutorInfo tutorInfo});

  @override
  $TutorInfoCopyWith<$Res> get tutorInfo;
}

/// @nodoc
class __$$_SecondInfoCopyWithImpl<$Res>
    extends _$SecondInfoCopyWithImpl<$Res, _$_SecondInfo>
    implements _$$_SecondInfoCopyWith<$Res> {
  __$$_SecondInfoCopyWithImpl(
      _$_SecondInfo _value, $Res Function(_$_SecondInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? level = null,
    Object? email = null,
    Object? google = freezed,
    Object? facebook = freezed,
    Object? apple = freezed,
    Object? avatar = null,
    Object? name = null,
    Object? country = null,
    Object? phone = null,
    Object? language = null,
    Object? birthday = null,
    Object? requestPassword = null,
    Object? isActivated = null,
    Object? isPhoneActivated = freezed,
    Object? requireNote = freezed,
    Object? timezone = null,
    Object? phoneAuth = freezed,
    Object? isPhoneAuthActivated = null,
    Object? studySchedule = null,
    Object? canSendMessage = null,
    Object? isPublicRecord = null,
    Object? caredByStaffId = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
    Object? studentGroupId = freezed,
    Object? tutorInfo = null,
  }) {
    return _then(_$_SecondInfo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      google: freezed == google
          ? _value.google
          : google // ignore: cast_nullable_to_non_nullable
              as dynamic,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as dynamic,
      apple: freezed == apple
          ? _value.apple
          : apple // ignore: cast_nullable_to_non_nullable
              as dynamic,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requestPassword: null == requestPassword
          ? _value.requestPassword
          : requestPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isActivated: null == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      isPhoneActivated: freezed == isPhoneActivated
          ? _value.isPhoneActivated
          : isPhoneActivated // ignore: cast_nullable_to_non_nullable
              as dynamic,
      requireNote: freezed == requireNote
          ? _value.requireNote
          : requireNote // ignore: cast_nullable_to_non_nullable
              as dynamic,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
      phoneAuth: freezed == phoneAuth
          ? _value.phoneAuth
          : phoneAuth // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isPhoneAuthActivated: null == isPhoneAuthActivated
          ? _value.isPhoneAuthActivated
          : isPhoneAuthActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      studySchedule: null == studySchedule
          ? _value.studySchedule
          : studySchedule // ignore: cast_nullable_to_non_nullable
              as String,
      canSendMessage: null == canSendMessage
          ? _value.canSendMessage
          : canSendMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublicRecord: null == isPublicRecord
          ? _value.isPublicRecord
          : isPublicRecord // ignore: cast_nullable_to_non_nullable
              as bool,
      caredByStaffId: freezed == caredByStaffId
          ? _value.caredByStaffId
          : caredByStaffId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      studentGroupId: freezed == studentGroupId
          ? _value.studentGroupId
          : studentGroupId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tutorInfo: null == tutorInfo
          ? _value.tutorInfo
          : tutorInfo // ignore: cast_nullable_to_non_nullable
              as TutorInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SecondInfo implements _SecondInfo {
  const _$_SecondInfo(
      {required this.id,
      required this.level,
      required this.email,
      required this.google,
      required this.facebook,
      required this.apple,
      required this.avatar,
      required this.name,
      required this.country,
      required this.phone,
      required this.language,
      required this.birthday,
      required this.requestPassword,
      required this.isActivated,
      required this.isPhoneActivated,
      required this.requireNote,
      required this.timezone,
      required this.phoneAuth,
      required this.isPhoneAuthActivated,
      required this.studySchedule,
      required this.canSendMessage,
      required this.isPublicRecord,
      required this.caredByStaffId,
      required this.createdAt,
      required this.updatedAt,
      required this.deletedAt,
      required this.studentGroupId,
      required this.tutorInfo});

  factory _$_SecondInfo.fromJson(Map<String, dynamic> json) =>
      _$$_SecondInfoFromJson(json);

  @override
  final String id;
  @override
  final String level;
  @override
  final String email;
  @override
  final dynamic google;
  @override
  final dynamic facebook;
  @override
  final dynamic apple;
  @override
  final String avatar;
  @override
  final String name;
  @override
  final String country;
  @override
  final String phone;
  @override
  final String language;
  @override
  final DateTime birthday;
  @override
  final bool requestPassword;
  @override
  final bool isActivated;
  @override
  final dynamic isPhoneActivated;
  @override
  final dynamic requireNote;
  @override
  final int timezone;
  @override
  final dynamic phoneAuth;
  @override
  final bool isPhoneAuthActivated;
  @override
  final String studySchedule;
  @override
  final bool canSendMessage;
  @override
  final bool isPublicRecord;
  @override
  final dynamic caredByStaffId;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final dynamic deletedAt;
  @override
  final dynamic studentGroupId;
  @override
  final TutorInfo tutorInfo;

  @override
  String toString() {
    return 'SecondInfo(id: $id, level: $level, email: $email, google: $google, facebook: $facebook, apple: $apple, avatar: $avatar, name: $name, country: $country, phone: $phone, language: $language, birthday: $birthday, requestPassword: $requestPassword, isActivated: $isActivated, isPhoneActivated: $isPhoneActivated, requireNote: $requireNote, timezone: $timezone, phoneAuth: $phoneAuth, isPhoneAuthActivated: $isPhoneAuthActivated, studySchedule: $studySchedule, canSendMessage: $canSendMessage, isPublicRecord: $isPublicRecord, caredByStaffId: $caredByStaffId, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, studentGroupId: $studentGroupId, tutorInfo: $tutorInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SecondInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality().equals(other.google, google) &&
            const DeepCollectionEquality().equals(other.facebook, facebook) &&
            const DeepCollectionEquality().equals(other.apple, apple) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.requestPassword, requestPassword) ||
                other.requestPassword == requestPassword) &&
            (identical(other.isActivated, isActivated) ||
                other.isActivated == isActivated) &&
            const DeepCollectionEquality()
                .equals(other.isPhoneActivated, isPhoneActivated) &&
            const DeepCollectionEquality()
                .equals(other.requireNote, requireNote) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            const DeepCollectionEquality().equals(other.phoneAuth, phoneAuth) &&
            (identical(other.isPhoneAuthActivated, isPhoneAuthActivated) ||
                other.isPhoneAuthActivated == isPhoneAuthActivated) &&
            (identical(other.studySchedule, studySchedule) ||
                other.studySchedule == studySchedule) &&
            (identical(other.canSendMessage, canSendMessage) ||
                other.canSendMessage == canSendMessage) &&
            (identical(other.isPublicRecord, isPublicRecord) ||
                other.isPublicRecord == isPublicRecord) &&
            const DeepCollectionEquality()
                .equals(other.caredByStaffId, caredByStaffId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            const DeepCollectionEquality()
                .equals(other.studentGroupId, studentGroupId) &&
            (identical(other.tutorInfo, tutorInfo) ||
                other.tutorInfo == tutorInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        level,
        email,
        const DeepCollectionEquality().hash(google),
        const DeepCollectionEquality().hash(facebook),
        const DeepCollectionEquality().hash(apple),
        avatar,
        name,
        country,
        phone,
        language,
        birthday,
        requestPassword,
        isActivated,
        const DeepCollectionEquality().hash(isPhoneActivated),
        const DeepCollectionEquality().hash(requireNote),
        timezone,
        const DeepCollectionEquality().hash(phoneAuth),
        isPhoneAuthActivated,
        studySchedule,
        canSendMessage,
        isPublicRecord,
        const DeepCollectionEquality().hash(caredByStaffId),
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(deletedAt),
        const DeepCollectionEquality().hash(studentGroupId),
        tutorInfo
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SecondInfoCopyWith<_$_SecondInfo> get copyWith =>
      __$$_SecondInfoCopyWithImpl<_$_SecondInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SecondInfoToJson(
      this,
    );
  }
}

abstract class _SecondInfo implements SecondInfo {
  const factory _SecondInfo(
      {required final String id,
      required final String level,
      required final String email,
      required final dynamic google,
      required final dynamic facebook,
      required final dynamic apple,
      required final String avatar,
      required final String name,
      required final String country,
      required final String phone,
      required final String language,
      required final DateTime birthday,
      required final bool requestPassword,
      required final bool isActivated,
      required final dynamic isPhoneActivated,
      required final dynamic requireNote,
      required final int timezone,
      required final dynamic phoneAuth,
      required final bool isPhoneAuthActivated,
      required final String studySchedule,
      required final bool canSendMessage,
      required final bool isPublicRecord,
      required final dynamic caredByStaffId,
      required final String createdAt,
      required final String updatedAt,
      required final dynamic deletedAt,
      required final dynamic studentGroupId,
      required final TutorInfo tutorInfo}) = _$_SecondInfo;

  factory _SecondInfo.fromJson(Map<String, dynamic> json) =
      _$_SecondInfo.fromJson;

  @override
  String get id;
  @override
  String get level;
  @override
  String get email;
  @override
  dynamic get google;
  @override
  dynamic get facebook;
  @override
  dynamic get apple;
  @override
  String get avatar;
  @override
  String get name;
  @override
  String get country;
  @override
  String get phone;
  @override
  String get language;
  @override
  DateTime get birthday;
  @override
  bool get requestPassword;
  @override
  bool get isActivated;
  @override
  dynamic get isPhoneActivated;
  @override
  dynamic get requireNote;
  @override
  int get timezone;
  @override
  dynamic get phoneAuth;
  @override
  bool get isPhoneAuthActivated;
  @override
  String get studySchedule;
  @override
  bool get canSendMessage;
  @override
  bool get isPublicRecord;
  @override
  dynamic get caredByStaffId;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  dynamic get deletedAt;
  @override
  dynamic get studentGroupId;
  @override
  TutorInfo get tutorInfo;
  @override
  @JsonKey(ignore: true)
  _$$_SecondInfoCopyWith<_$_SecondInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

TutorInfo _$TutorInfoFromJson(Map<String, dynamic> json) {
  return _TutorInfo.fromJson(json);
}

/// @nodoc
mixin _$TutorInfo {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get video => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  String get education => throw _privateConstructorUsedError;
  String get experience => throw _privateConstructorUsedError;
  String get profession => throw _privateConstructorUsedError;
  dynamic get accent => throw _privateConstructorUsedError;
  String get targetStudent => throw _privateConstructorUsedError;
  String get interests => throw _privateConstructorUsedError;
  String get languages => throw _privateConstructorUsedError;
  String get specialties => throw _privateConstructorUsedError;
  dynamic get resume => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  bool get isActivated => throw _privateConstructorUsedError;
  dynamic get isNative => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TutorInfoCopyWith<TutorInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorInfoCopyWith<$Res> {
  factory $TutorInfoCopyWith(TutorInfo value, $Res Function(TutorInfo) then) =
      _$TutorInfoCopyWithImpl<$Res, TutorInfo>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String video,
      String bio,
      String education,
      String experience,
      String profession,
      dynamic accent,
      String targetStudent,
      String interests,
      String languages,
      String specialties,
      dynamic resume,
      double rating,
      bool isActivated,
      dynamic isNative,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class _$TutorInfoCopyWithImpl<$Res, $Val extends TutorInfo>
    implements $TutorInfoCopyWith<$Res> {
  _$TutorInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? video = null,
    Object? bio = null,
    Object? education = null,
    Object? experience = null,
    Object? profession = null,
    Object? accent = freezed,
    Object? targetStudent = null,
    Object? interests = null,
    Object? languages = null,
    Object? specialties = null,
    Object? resume = freezed,
    Object? rating = null,
    Object? isActivated = null,
    Object? isNative = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      education: null == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String,
      experience: null == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String,
      profession: null == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String,
      accent: freezed == accent
          ? _value.accent
          : accent // ignore: cast_nullable_to_non_nullable
              as dynamic,
      targetStudent: null == targetStudent
          ? _value.targetStudent
          : targetStudent // ignore: cast_nullable_to_non_nullable
              as String,
      interests: null == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as String,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as String,
      specialties: null == specialties
          ? _value.specialties
          : specialties // ignore: cast_nullable_to_non_nullable
              as String,
      resume: freezed == resume
          ? _value.resume
          : resume // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      isActivated: null == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      isNative: freezed == isNative
          ? _value.isNative
          : isNative // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TutorInfoCopyWith<$Res> implements $TutorInfoCopyWith<$Res> {
  factory _$$_TutorInfoCopyWith(
          _$_TutorInfo value, $Res Function(_$_TutorInfo) then) =
      __$$_TutorInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String video,
      String bio,
      String education,
      String experience,
      String profession,
      dynamic accent,
      String targetStudent,
      String interests,
      String languages,
      String specialties,
      dynamic resume,
      double rating,
      bool isActivated,
      dynamic isNative,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class __$$_TutorInfoCopyWithImpl<$Res>
    extends _$TutorInfoCopyWithImpl<$Res, _$_TutorInfo>
    implements _$$_TutorInfoCopyWith<$Res> {
  __$$_TutorInfoCopyWithImpl(
      _$_TutorInfo _value, $Res Function(_$_TutorInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? video = null,
    Object? bio = null,
    Object? education = null,
    Object? experience = null,
    Object? profession = null,
    Object? accent = freezed,
    Object? targetStudent = null,
    Object? interests = null,
    Object? languages = null,
    Object? specialties = null,
    Object? resume = freezed,
    Object? rating = null,
    Object? isActivated = null,
    Object? isNative = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_TutorInfo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      education: null == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String,
      experience: null == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String,
      profession: null == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String,
      accent: freezed == accent
          ? _value.accent
          : accent // ignore: cast_nullable_to_non_nullable
              as dynamic,
      targetStudent: null == targetStudent
          ? _value.targetStudent
          : targetStudent // ignore: cast_nullable_to_non_nullable
              as String,
      interests: null == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as String,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as String,
      specialties: null == specialties
          ? _value.specialties
          : specialties // ignore: cast_nullable_to_non_nullable
              as String,
      resume: freezed == resume
          ? _value.resume
          : resume // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      isActivated: null == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      isNative: freezed == isNative
          ? _value.isNative
          : isNative // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TutorInfo implements _TutorInfo {
  const _$_TutorInfo(
      {required this.id,
      required this.userId,
      required this.video,
      required this.bio,
      required this.education,
      required this.experience,
      required this.profession,
      required this.accent,
      required this.targetStudent,
      required this.interests,
      required this.languages,
      required this.specialties,
      required this.resume,
      required this.rating,
      required this.isActivated,
      required this.isNative,
      required this.createdAt,
      required this.updatedAt});

  factory _$_TutorInfo.fromJson(Map<String, dynamic> json) =>
      _$$_TutorInfoFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String video;
  @override
  final String bio;
  @override
  final String education;
  @override
  final String experience;
  @override
  final String profession;
  @override
  final dynamic accent;
  @override
  final String targetStudent;
  @override
  final String interests;
  @override
  final String languages;
  @override
  final String specialties;
  @override
  final dynamic resume;
  @override
  final double rating;
  @override
  final bool isActivated;
  @override
  final dynamic isNative;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'TutorInfo(id: $id, userId: $userId, video: $video, bio: $bio, education: $education, experience: $experience, profession: $profession, accent: $accent, targetStudent: $targetStudent, interests: $interests, languages: $languages, specialties: $specialties, resume: $resume, rating: $rating, isActivated: $isActivated, isNative: $isNative, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TutorInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.education, education) ||
                other.education == education) &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            (identical(other.profession, profession) ||
                other.profession == profession) &&
            const DeepCollectionEquality().equals(other.accent, accent) &&
            (identical(other.targetStudent, targetStudent) ||
                other.targetStudent == targetStudent) &&
            (identical(other.interests, interests) ||
                other.interests == interests) &&
            (identical(other.languages, languages) ||
                other.languages == languages) &&
            (identical(other.specialties, specialties) ||
                other.specialties == specialties) &&
            const DeepCollectionEquality().equals(other.resume, resume) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.isActivated, isActivated) ||
                other.isActivated == isActivated) &&
            const DeepCollectionEquality().equals(other.isNative, isNative) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      video,
      bio,
      education,
      experience,
      profession,
      const DeepCollectionEquality().hash(accent),
      targetStudent,
      interests,
      languages,
      specialties,
      const DeepCollectionEquality().hash(resume),
      rating,
      isActivated,
      const DeepCollectionEquality().hash(isNative),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TutorInfoCopyWith<_$_TutorInfo> get copyWith =>
      __$$_TutorInfoCopyWithImpl<_$_TutorInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TutorInfoToJson(
      this,
    );
  }
}

abstract class _TutorInfo implements TutorInfo {
  const factory _TutorInfo(
      {required final String id,
      required final String userId,
      required final String video,
      required final String bio,
      required final String education,
      required final String experience,
      required final String profession,
      required final dynamic accent,
      required final String targetStudent,
      required final String interests,
      required final String languages,
      required final String specialties,
      required final dynamic resume,
      required final double rating,
      required final bool isActivated,
      required final dynamic isNative,
      required final String createdAt,
      required final String updatedAt}) = _$_TutorInfo;

  factory _TutorInfo.fromJson(Map<String, dynamic> json) =
      _$_TutorInfo.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get video;
  @override
  String get bio;
  @override
  String get education;
  @override
  String get experience;
  @override
  String get profession;
  @override
  dynamic get accent;
  @override
  String get targetStudent;
  @override
  String get interests;
  @override
  String get languages;
  @override
  String get specialties;
  @override
  dynamic get resume;
  @override
  double get rating;
  @override
  bool get isActivated;
  @override
  dynamic get isNative;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_TutorInfoCopyWith<_$_TutorInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

Tutors _$TutorsFromJson(Map<String, dynamic> json) {
  return _Tutors.fromJson(json);
}

/// @nodoc
mixin _$Tutors {
  int get count => throw _privateConstructorUsedError;
  List<Row> get rows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TutorsCopyWith<Tutors> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorsCopyWith<$Res> {
  factory $TutorsCopyWith(Tutors value, $Res Function(Tutors) then) =
      _$TutorsCopyWithImpl<$Res, Tutors>;
  @useResult
  $Res call({int count, List<Row> rows});
}

/// @nodoc
class _$TutorsCopyWithImpl<$Res, $Val extends Tutors>
    implements $TutorsCopyWith<$Res> {
  _$TutorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? rows = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      rows: null == rows
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<Row>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TutorsCopyWith<$Res> implements $TutorsCopyWith<$Res> {
  factory _$$_TutorsCopyWith(_$_Tutors value, $Res Function(_$_Tutors) then) =
      __$$_TutorsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, List<Row> rows});
}

/// @nodoc
class __$$_TutorsCopyWithImpl<$Res>
    extends _$TutorsCopyWithImpl<$Res, _$_Tutors>
    implements _$$_TutorsCopyWith<$Res> {
  __$$_TutorsCopyWithImpl(_$_Tutors _value, $Res Function(_$_Tutors) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? rows = null,
  }) {
    return _then(_$_Tutors(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      rows: null == rows
          ? _value._rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<Row>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tutors implements _Tutors {
  const _$_Tutors({required this.count, required final List<Row> rows})
      : _rows = rows;

  factory _$_Tutors.fromJson(Map<String, dynamic> json) =>
      _$$_TutorsFromJson(json);

  @override
  final int count;
  final List<Row> _rows;
  @override
  List<Row> get rows {
    if (_rows is EqualUnmodifiableListView) return _rows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rows);
  }

  @override
  String toString() {
    return 'Tutors(count: $count, rows: $rows)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tutors &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._rows, _rows));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_rows));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TutorsCopyWith<_$_Tutors> get copyWith =>
      __$$_TutorsCopyWithImpl<_$_Tutors>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TutorsToJson(
      this,
    );
  }
}

abstract class _Tutors implements Tutors {
  const factory _Tutors(
      {required final int count, required final List<Row> rows}) = _$_Tutors;

  factory _Tutors.fromJson(Map<String, dynamic> json) = _$_Tutors.fromJson;

  @override
  int get count;
  @override
  List<Row> get rows;
  @override
  @JsonKey(ignore: true)
  _$$_TutorsCopyWith<_$_Tutors> get copyWith =>
      throw _privateConstructorUsedError;
}

Row _$RowFromJson(Map<String, dynamic> json) {
  return _Row.fromJson(json);
}

/// @nodoc
mixin _$Row {
  String get level => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  dynamic get google => throw _privateConstructorUsedError;
  dynamic get facebook => throw _privateConstructorUsedError;
  dynamic get apple => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get birthday => throw _privateConstructorUsedError;
  bool get requestPassword => throw _privateConstructorUsedError;
  bool get isActivated => throw _privateConstructorUsedError;
  dynamic get isPhoneActivated => throw _privateConstructorUsedError;
  dynamic get requireNote => throw _privateConstructorUsedError;
  int get timezone => throw _privateConstructorUsedError;
  dynamic get phoneAuth => throw _privateConstructorUsedError;
  bool get isPhoneAuthActivated => throw _privateConstructorUsedError;
  String get studySchedule => throw _privateConstructorUsedError;
  bool get canSendMessage => throw _privateConstructorUsedError;
  bool get isPublicRecord => throw _privateConstructorUsedError;
  dynamic get caredByStaffId => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  dynamic get deletedAt => throw _privateConstructorUsedError;
  dynamic get studentGroupId => throw _privateConstructorUsedError;
  List<Feedback> get feedbacks => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get video => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  String get education => throw _privateConstructorUsedError;
  String get experience => throw _privateConstructorUsedError;
  String get profession => throw _privateConstructorUsedError;
  String get accent => throw _privateConstructorUsedError;
  String get targetStudent => throw _privateConstructorUsedError;
  String get interests => throw _privateConstructorUsedError;
  String get languages => throw _privateConstructorUsedError;
  String get specialties => throw _privateConstructorUsedError;
  String get resume => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  dynamic get isNative => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  bool get isOnline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RowCopyWith<Row> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RowCopyWith<$Res> {
  factory $RowCopyWith(Row value, $Res Function(Row) then) =
      _$RowCopyWithImpl<$Res, Row>;
  @useResult
  $Res call(
      {String level,
      String email,
      dynamic google,
      dynamic facebook,
      dynamic apple,
      String avatar,
      String name,
      String country,
      String phone,
      String language,
      String birthday,
      bool requestPassword,
      bool isActivated,
      dynamic isPhoneActivated,
      dynamic requireNote,
      int timezone,
      dynamic phoneAuth,
      bool isPhoneAuthActivated,
      String studySchedule,
      bool canSendMessage,
      bool isPublicRecord,
      dynamic caredByStaffId,
      String createdAt,
      String updatedAt,
      dynamic deletedAt,
      dynamic studentGroupId,
      List<Feedback> feedbacks,
      String id,
      String userId,
      String video,
      String bio,
      String education,
      String experience,
      String profession,
      String accent,
      String targetStudent,
      String interests,
      String languages,
      String specialties,
      String resume,
      double rating,
      dynamic isNative,
      int price,
      bool isOnline});
}

/// @nodoc
class _$RowCopyWithImpl<$Res, $Val extends Row> implements $RowCopyWith<$Res> {
  _$RowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? email = null,
    Object? google = freezed,
    Object? facebook = freezed,
    Object? apple = freezed,
    Object? avatar = null,
    Object? name = null,
    Object? country = null,
    Object? phone = null,
    Object? language = null,
    Object? birthday = null,
    Object? requestPassword = null,
    Object? isActivated = null,
    Object? isPhoneActivated = freezed,
    Object? requireNote = freezed,
    Object? timezone = null,
    Object? phoneAuth = freezed,
    Object? isPhoneAuthActivated = null,
    Object? studySchedule = null,
    Object? canSendMessage = null,
    Object? isPublicRecord = null,
    Object? caredByStaffId = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
    Object? studentGroupId = freezed,
    Object? feedbacks = null,
    Object? id = null,
    Object? userId = null,
    Object? video = null,
    Object? bio = null,
    Object? education = null,
    Object? experience = null,
    Object? profession = null,
    Object? accent = null,
    Object? targetStudent = null,
    Object? interests = null,
    Object? languages = null,
    Object? specialties = null,
    Object? resume = null,
    Object? rating = null,
    Object? isNative = freezed,
    Object? price = null,
    Object? isOnline = null,
  }) {
    return _then(_value.copyWith(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      google: freezed == google
          ? _value.google
          : google // ignore: cast_nullable_to_non_nullable
              as dynamic,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as dynamic,
      apple: freezed == apple
          ? _value.apple
          : apple // ignore: cast_nullable_to_non_nullable
              as dynamic,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      requestPassword: null == requestPassword
          ? _value.requestPassword
          : requestPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isActivated: null == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      isPhoneActivated: freezed == isPhoneActivated
          ? _value.isPhoneActivated
          : isPhoneActivated // ignore: cast_nullable_to_non_nullable
              as dynamic,
      requireNote: freezed == requireNote
          ? _value.requireNote
          : requireNote // ignore: cast_nullable_to_non_nullable
              as dynamic,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
      phoneAuth: freezed == phoneAuth
          ? _value.phoneAuth
          : phoneAuth // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isPhoneAuthActivated: null == isPhoneAuthActivated
          ? _value.isPhoneAuthActivated
          : isPhoneAuthActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      studySchedule: null == studySchedule
          ? _value.studySchedule
          : studySchedule // ignore: cast_nullable_to_non_nullable
              as String,
      canSendMessage: null == canSendMessage
          ? _value.canSendMessage
          : canSendMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublicRecord: null == isPublicRecord
          ? _value.isPublicRecord
          : isPublicRecord // ignore: cast_nullable_to_non_nullable
              as bool,
      caredByStaffId: freezed == caredByStaffId
          ? _value.caredByStaffId
          : caredByStaffId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      studentGroupId: freezed == studentGroupId
          ? _value.studentGroupId
          : studentGroupId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      feedbacks: null == feedbacks
          ? _value.feedbacks
          : feedbacks // ignore: cast_nullable_to_non_nullable
              as List<Feedback>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      education: null == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String,
      experience: null == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String,
      profession: null == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String,
      accent: null == accent
          ? _value.accent
          : accent // ignore: cast_nullable_to_non_nullable
              as String,
      targetStudent: null == targetStudent
          ? _value.targetStudent
          : targetStudent // ignore: cast_nullable_to_non_nullable
              as String,
      interests: null == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as String,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as String,
      specialties: null == specialties
          ? _value.specialties
          : specialties // ignore: cast_nullable_to_non_nullable
              as String,
      resume: null == resume
          ? _value.resume
          : resume // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      isNative: freezed == isNative
          ? _value.isNative
          : isNative // ignore: cast_nullable_to_non_nullable
              as dynamic,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RowCopyWith<$Res> implements $RowCopyWith<$Res> {
  factory _$$_RowCopyWith(_$_Row value, $Res Function(_$_Row) then) =
      __$$_RowCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String level,
      String email,
      dynamic google,
      dynamic facebook,
      dynamic apple,
      String avatar,
      String name,
      String country,
      String phone,
      String language,
      String birthday,
      bool requestPassword,
      bool isActivated,
      dynamic isPhoneActivated,
      dynamic requireNote,
      int timezone,
      dynamic phoneAuth,
      bool isPhoneAuthActivated,
      String studySchedule,
      bool canSendMessage,
      bool isPublicRecord,
      dynamic caredByStaffId,
      String createdAt,
      String updatedAt,
      dynamic deletedAt,
      dynamic studentGroupId,
      List<Feedback> feedbacks,
      String id,
      String userId,
      String video,
      String bio,
      String education,
      String experience,
      String profession,
      String accent,
      String targetStudent,
      String interests,
      String languages,
      String specialties,
      String resume,
      double rating,
      dynamic isNative,
      int price,
      bool isOnline});
}

/// @nodoc
class __$$_RowCopyWithImpl<$Res> extends _$RowCopyWithImpl<$Res, _$_Row>
    implements _$$_RowCopyWith<$Res> {
  __$$_RowCopyWithImpl(_$_Row _value, $Res Function(_$_Row) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? email = null,
    Object? google = freezed,
    Object? facebook = freezed,
    Object? apple = freezed,
    Object? avatar = null,
    Object? name = null,
    Object? country = null,
    Object? phone = null,
    Object? language = null,
    Object? birthday = null,
    Object? requestPassword = null,
    Object? isActivated = null,
    Object? isPhoneActivated = freezed,
    Object? requireNote = freezed,
    Object? timezone = null,
    Object? phoneAuth = freezed,
    Object? isPhoneAuthActivated = null,
    Object? studySchedule = null,
    Object? canSendMessage = null,
    Object? isPublicRecord = null,
    Object? caredByStaffId = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
    Object? studentGroupId = freezed,
    Object? feedbacks = null,
    Object? id = null,
    Object? userId = null,
    Object? video = null,
    Object? bio = null,
    Object? education = null,
    Object? experience = null,
    Object? profession = null,
    Object? accent = null,
    Object? targetStudent = null,
    Object? interests = null,
    Object? languages = null,
    Object? specialties = null,
    Object? resume = null,
    Object? rating = null,
    Object? isNative = freezed,
    Object? price = null,
    Object? isOnline = null,
  }) {
    return _then(_$_Row(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      google: freezed == google
          ? _value.google
          : google // ignore: cast_nullable_to_non_nullable
              as dynamic,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as dynamic,
      apple: freezed == apple
          ? _value.apple
          : apple // ignore: cast_nullable_to_non_nullable
              as dynamic,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      requestPassword: null == requestPassword
          ? _value.requestPassword
          : requestPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isActivated: null == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      isPhoneActivated: freezed == isPhoneActivated
          ? _value.isPhoneActivated
          : isPhoneActivated // ignore: cast_nullable_to_non_nullable
              as dynamic,
      requireNote: freezed == requireNote
          ? _value.requireNote
          : requireNote // ignore: cast_nullable_to_non_nullable
              as dynamic,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
      phoneAuth: freezed == phoneAuth
          ? _value.phoneAuth
          : phoneAuth // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isPhoneAuthActivated: null == isPhoneAuthActivated
          ? _value.isPhoneAuthActivated
          : isPhoneAuthActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      studySchedule: null == studySchedule
          ? _value.studySchedule
          : studySchedule // ignore: cast_nullable_to_non_nullable
              as String,
      canSendMessage: null == canSendMessage
          ? _value.canSendMessage
          : canSendMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublicRecord: null == isPublicRecord
          ? _value.isPublicRecord
          : isPublicRecord // ignore: cast_nullable_to_non_nullable
              as bool,
      caredByStaffId: freezed == caredByStaffId
          ? _value.caredByStaffId
          : caredByStaffId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      studentGroupId: freezed == studentGroupId
          ? _value.studentGroupId
          : studentGroupId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      feedbacks: null == feedbacks
          ? _value._feedbacks
          : feedbacks // ignore: cast_nullable_to_non_nullable
              as List<Feedback>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      education: null == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String,
      experience: null == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String,
      profession: null == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String,
      accent: null == accent
          ? _value.accent
          : accent // ignore: cast_nullable_to_non_nullable
              as String,
      targetStudent: null == targetStudent
          ? _value.targetStudent
          : targetStudent // ignore: cast_nullable_to_non_nullable
              as String,
      interests: null == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as String,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as String,
      specialties: null == specialties
          ? _value.specialties
          : specialties // ignore: cast_nullable_to_non_nullable
              as String,
      resume: null == resume
          ? _value.resume
          : resume // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      isNative: freezed == isNative
          ? _value.isNative
          : isNative // ignore: cast_nullable_to_non_nullable
              as dynamic,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Row implements _Row {
  const _$_Row(
      {required this.level,
      required this.email,
      required this.google,
      required this.facebook,
      required this.apple,
      required this.avatar,
      required this.name,
      required this.country,
      required this.phone,
      required this.language,
      required this.birthday,
      required this.requestPassword,
      required this.isActivated,
      required this.isPhoneActivated,
      required this.requireNote,
      required this.timezone,
      required this.phoneAuth,
      required this.isPhoneAuthActivated,
      required this.studySchedule,
      required this.canSendMessage,
      required this.isPublicRecord,
      required this.caredByStaffId,
      required this.createdAt,
      required this.updatedAt,
      required this.deletedAt,
      required this.studentGroupId,
      required final List<Feedback> feedbacks,
      required this.id,
      required this.userId,
      required this.video,
      required this.bio,
      required this.education,
      required this.experience,
      required this.profession,
      required this.accent,
      required this.targetStudent,
      required this.interests,
      required this.languages,
      required this.specialties,
      required this.resume,
      required this.rating,
      required this.isNative,
      required this.price,
      required this.isOnline})
      : _feedbacks = feedbacks;

  factory _$_Row.fromJson(Map<String, dynamic> json) => _$$_RowFromJson(json);

  @override
  final String level;
  @override
  final String email;
  @override
  final dynamic google;
  @override
  final dynamic facebook;
  @override
  final dynamic apple;
  @override
  final String avatar;
  @override
  final String name;
  @override
  final String country;
  @override
  final String phone;
  @override
  final String language;
  @override
  final String birthday;
  @override
  final bool requestPassword;
  @override
  final bool isActivated;
  @override
  final dynamic isPhoneActivated;
  @override
  final dynamic requireNote;
  @override
  final int timezone;
  @override
  final dynamic phoneAuth;
  @override
  final bool isPhoneAuthActivated;
  @override
  final String studySchedule;
  @override
  final bool canSendMessage;
  @override
  final bool isPublicRecord;
  @override
  final dynamic caredByStaffId;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final dynamic deletedAt;
  @override
  final dynamic studentGroupId;
  final List<Feedback> _feedbacks;
  @override
  List<Feedback> get feedbacks {
    if (_feedbacks is EqualUnmodifiableListView) return _feedbacks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_feedbacks);
  }

  @override
  final String id;
  @override
  final String userId;
  @override
  final String video;
  @override
  final String bio;
  @override
  final String education;
  @override
  final String experience;
  @override
  final String profession;
  @override
  final String accent;
  @override
  final String targetStudent;
  @override
  final String interests;
  @override
  final String languages;
  @override
  final String specialties;
  @override
  final String resume;
  @override
  final double rating;
  @override
  final dynamic isNative;
  @override
  final int price;
  @override
  final bool isOnline;

  @override
  String toString() {
    return 'Row(level: $level, email: $email, google: $google, facebook: $facebook, apple: $apple, avatar: $avatar, name: $name, country: $country, phone: $phone, language: $language, birthday: $birthday, requestPassword: $requestPassword, isActivated: $isActivated, isPhoneActivated: $isPhoneActivated, requireNote: $requireNote, timezone: $timezone, phoneAuth: $phoneAuth, isPhoneAuthActivated: $isPhoneAuthActivated, studySchedule: $studySchedule, canSendMessage: $canSendMessage, isPublicRecord: $isPublicRecord, caredByStaffId: $caredByStaffId, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, studentGroupId: $studentGroupId, feedbacks: $feedbacks, id: $id, userId: $userId, video: $video, bio: $bio, education: $education, experience: $experience, profession: $profession, accent: $accent, targetStudent: $targetStudent, interests: $interests, languages: $languages, specialties: $specialties, resume: $resume, rating: $rating, isNative: $isNative, price: $price, isOnline: $isOnline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Row &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality().equals(other.google, google) &&
            const DeepCollectionEquality().equals(other.facebook, facebook) &&
            const DeepCollectionEquality().equals(other.apple, apple) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.requestPassword, requestPassword) ||
                other.requestPassword == requestPassword) &&
            (identical(other.isActivated, isActivated) ||
                other.isActivated == isActivated) &&
            const DeepCollectionEquality()
                .equals(other.isPhoneActivated, isPhoneActivated) &&
            const DeepCollectionEquality()
                .equals(other.requireNote, requireNote) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            const DeepCollectionEquality().equals(other.phoneAuth, phoneAuth) &&
            (identical(other.isPhoneAuthActivated, isPhoneAuthActivated) ||
                other.isPhoneAuthActivated == isPhoneAuthActivated) &&
            (identical(other.studySchedule, studySchedule) ||
                other.studySchedule == studySchedule) &&
            (identical(other.canSendMessage, canSendMessage) ||
                other.canSendMessage == canSendMessage) &&
            (identical(other.isPublicRecord, isPublicRecord) ||
                other.isPublicRecord == isPublicRecord) &&
            const DeepCollectionEquality()
                .equals(other.caredByStaffId, caredByStaffId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            const DeepCollectionEquality()
                .equals(other.studentGroupId, studentGroupId) &&
            const DeepCollectionEquality()
                .equals(other._feedbacks, _feedbacks) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.education, education) ||
                other.education == education) &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            (identical(other.profession, profession) ||
                other.profession == profession) &&
            (identical(other.accent, accent) || other.accent == accent) &&
            (identical(other.targetStudent, targetStudent) ||
                other.targetStudent == targetStudent) &&
            (identical(other.interests, interests) ||
                other.interests == interests) &&
            (identical(other.languages, languages) ||
                other.languages == languages) &&
            (identical(other.specialties, specialties) ||
                other.specialties == specialties) &&
            (identical(other.resume, resume) || other.resume == resume) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality().equals(other.isNative, isNative) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        level,
        email,
        const DeepCollectionEquality().hash(google),
        const DeepCollectionEquality().hash(facebook),
        const DeepCollectionEquality().hash(apple),
        avatar,
        name,
        country,
        phone,
        language,
        birthday,
        requestPassword,
        isActivated,
        const DeepCollectionEquality().hash(isPhoneActivated),
        const DeepCollectionEquality().hash(requireNote),
        timezone,
        const DeepCollectionEquality().hash(phoneAuth),
        isPhoneAuthActivated,
        studySchedule,
        canSendMessage,
        isPublicRecord,
        const DeepCollectionEquality().hash(caredByStaffId),
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(deletedAt),
        const DeepCollectionEquality().hash(studentGroupId),
        const DeepCollectionEquality().hash(_feedbacks),
        id,
        userId,
        video,
        bio,
        education,
        experience,
        profession,
        accent,
        targetStudent,
        interests,
        languages,
        specialties,
        resume,
        rating,
        const DeepCollectionEquality().hash(isNative),
        price,
        isOnline
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RowCopyWith<_$_Row> get copyWith =>
      __$$_RowCopyWithImpl<_$_Row>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RowToJson(
      this,
    );
  }
}

abstract class _Row implements Row {
  const factory _Row(
      {required final String level,
      required final String email,
      required final dynamic google,
      required final dynamic facebook,
      required final dynamic apple,
      required final String avatar,
      required final String name,
      required final String country,
      required final String phone,
      required final String language,
      required final String birthday,
      required final bool requestPassword,
      required final bool isActivated,
      required final dynamic isPhoneActivated,
      required final dynamic requireNote,
      required final int timezone,
      required final dynamic phoneAuth,
      required final bool isPhoneAuthActivated,
      required final String studySchedule,
      required final bool canSendMessage,
      required final bool isPublicRecord,
      required final dynamic caredByStaffId,
      required final String createdAt,
      required final String updatedAt,
      required final dynamic deletedAt,
      required final dynamic studentGroupId,
      required final List<Feedback> feedbacks,
      required final String id,
      required final String userId,
      required final String video,
      required final String bio,
      required final String education,
      required final String experience,
      required final String profession,
      required final String accent,
      required final String targetStudent,
      required final String interests,
      required final String languages,
      required final String specialties,
      required final String resume,
      required final double rating,
      required final dynamic isNative,
      required final int price,
      required final bool isOnline}) = _$_Row;

  factory _Row.fromJson(Map<String, dynamic> json) = _$_Row.fromJson;

  @override
  String get level;
  @override
  String get email;
  @override
  dynamic get google;
  @override
  dynamic get facebook;
  @override
  dynamic get apple;
  @override
  String get avatar;
  @override
  String get name;
  @override
  String get country;
  @override
  String get phone;
  @override
  String get language;
  @override
  String get birthday;
  @override
  bool get requestPassword;
  @override
  bool get isActivated;
  @override
  dynamic get isPhoneActivated;
  @override
  dynamic get requireNote;
  @override
  int get timezone;
  @override
  dynamic get phoneAuth;
  @override
  bool get isPhoneAuthActivated;
  @override
  String get studySchedule;
  @override
  bool get canSendMessage;
  @override
  bool get isPublicRecord;
  @override
  dynamic get caredByStaffId;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  dynamic get deletedAt;
  @override
  dynamic get studentGroupId;
  @override
  List<Feedback> get feedbacks;
  @override
  String get id;
  @override
  String get userId;
  @override
  String get video;
  @override
  String get bio;
  @override
  String get education;
  @override
  String get experience;
  @override
  String get profession;
  @override
  String get accent;
  @override
  String get targetStudent;
  @override
  String get interests;
  @override
  String get languages;
  @override
  String get specialties;
  @override
  String get resume;
  @override
  double get rating;
  @override
  dynamic get isNative;
  @override
  int get price;
  @override
  bool get isOnline;
  @override
  @JsonKey(ignore: true)
  _$$_RowCopyWith<_$_Row> get copyWith => throw _privateConstructorUsedError;
}

Feedback _$FeedbackFromJson(Map<String, dynamic> json) {
  return _Feedback.fromJson(json);
}

/// @nodoc
mixin _$Feedback {
  String get id => throw _privateConstructorUsedError;
  String get bookingId => throw _privateConstructorUsedError;
  String get firstId => throw _privateConstructorUsedError;
  String get secondId => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  FirstInfo get firstInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedbackCopyWith<Feedback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackCopyWith<$Res> {
  factory $FeedbackCopyWith(Feedback value, $Res Function(Feedback) then) =
      _$FeedbackCopyWithImpl<$Res, Feedback>;
  @useResult
  $Res call(
      {String id,
      String bookingId,
      String firstId,
      String secondId,
      int rating,
      String content,
      String createdAt,
      String updatedAt,
      FirstInfo firstInfo});

  $FirstInfoCopyWith<$Res> get firstInfo;
}

/// @nodoc
class _$FeedbackCopyWithImpl<$Res, $Val extends Feedback>
    implements $FeedbackCopyWith<$Res> {
  _$FeedbackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookingId = null,
    Object? firstId = null,
    Object? secondId = null,
    Object? rating = null,
    Object? content = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? firstInfo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
      firstId: null == firstId
          ? _value.firstId
          : firstId // ignore: cast_nullable_to_non_nullable
              as String,
      secondId: null == secondId
          ? _value.secondId
          : secondId // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      firstInfo: null == firstInfo
          ? _value.firstInfo
          : firstInfo // ignore: cast_nullable_to_non_nullable
              as FirstInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FirstInfoCopyWith<$Res> get firstInfo {
    return $FirstInfoCopyWith<$Res>(_value.firstInfo, (value) {
      return _then(_value.copyWith(firstInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FeedbackCopyWith<$Res> implements $FeedbackCopyWith<$Res> {
  factory _$$_FeedbackCopyWith(
          _$_Feedback value, $Res Function(_$_Feedback) then) =
      __$$_FeedbackCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String bookingId,
      String firstId,
      String secondId,
      int rating,
      String content,
      String createdAt,
      String updatedAt,
      FirstInfo firstInfo});

  @override
  $FirstInfoCopyWith<$Res> get firstInfo;
}

/// @nodoc
class __$$_FeedbackCopyWithImpl<$Res>
    extends _$FeedbackCopyWithImpl<$Res, _$_Feedback>
    implements _$$_FeedbackCopyWith<$Res> {
  __$$_FeedbackCopyWithImpl(
      _$_Feedback _value, $Res Function(_$_Feedback) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookingId = null,
    Object? firstId = null,
    Object? secondId = null,
    Object? rating = null,
    Object? content = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? firstInfo = null,
  }) {
    return _then(_$_Feedback(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
      firstId: null == firstId
          ? _value.firstId
          : firstId // ignore: cast_nullable_to_non_nullable
              as String,
      secondId: null == secondId
          ? _value.secondId
          : secondId // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      firstInfo: null == firstInfo
          ? _value.firstInfo
          : firstInfo // ignore: cast_nullable_to_non_nullable
              as FirstInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Feedback implements _Feedback {
  const _$_Feedback(
      {required this.id,
      required this.bookingId,
      required this.firstId,
      required this.secondId,
      required this.rating,
      required this.content,
      required this.createdAt,
      required this.updatedAt,
      required this.firstInfo});

  factory _$_Feedback.fromJson(Map<String, dynamic> json) =>
      _$$_FeedbackFromJson(json);

  @override
  final String id;
  @override
  final String bookingId;
  @override
  final String firstId;
  @override
  final String secondId;
  @override
  final int rating;
  @override
  final String content;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final FirstInfo firstInfo;

  @override
  String toString() {
    return 'Feedback(id: $id, bookingId: $bookingId, firstId: $firstId, secondId: $secondId, rating: $rating, content: $content, createdAt: $createdAt, updatedAt: $updatedAt, firstInfo: $firstInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Feedback &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.firstId, firstId) || other.firstId == firstId) &&
            (identical(other.secondId, secondId) ||
                other.secondId == secondId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.firstInfo, firstInfo) ||
                other.firstInfo == firstInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, bookingId, firstId, secondId,
      rating, content, createdAt, updatedAt, firstInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeedbackCopyWith<_$_Feedback> get copyWith =>
      __$$_FeedbackCopyWithImpl<_$_Feedback>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedbackToJson(
      this,
    );
  }
}

abstract class _Feedback implements Feedback {
  const factory _Feedback(
      {required final String id,
      required final String bookingId,
      required final String firstId,
      required final String secondId,
      required final int rating,
      required final String content,
      required final String createdAt,
      required final String updatedAt,
      required final FirstInfo firstInfo}) = _$_Feedback;

  factory _Feedback.fromJson(Map<String, dynamic> json) = _$_Feedback.fromJson;

  @override
  String get id;
  @override
  String get bookingId;
  @override
  String get firstId;
  @override
  String get secondId;
  @override
  int get rating;
  @override
  String get content;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  FirstInfo get firstInfo;
  @override
  @JsonKey(ignore: true)
  _$$_FeedbackCopyWith<_$_Feedback> get copyWith =>
      throw _privateConstructorUsedError;
}

FirstInfo _$FirstInfoFromJson(Map<String, dynamic> json) {
  return _FirstInfo.fromJson(json);
}

/// @nodoc
mixin _$FirstInfo {
  String get level => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get google => throw _privateConstructorUsedError;
  String get facebook => throw _privateConstructorUsedError;
  dynamic get apple => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get birthday => throw _privateConstructorUsedError;
  bool get requestPassword => throw _privateConstructorUsedError;
  bool get isActivated => throw _privateConstructorUsedError;
  bool get isPhoneActivated => throw _privateConstructorUsedError;
  String get requireNote => throw _privateConstructorUsedError;
  int get timezone => throw _privateConstructorUsedError;
  dynamic get phoneAuth => throw _privateConstructorUsedError;
  bool get isPhoneAuthActivated => throw _privateConstructorUsedError;
  String get studySchedule => throw _privateConstructorUsedError;
  bool get canSendMessage => throw _privateConstructorUsedError;
  bool get isPublicRecord => throw _privateConstructorUsedError;
  dynamic get caredByStaffId => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  dynamic get deletedAt => throw _privateConstructorUsedError;
  dynamic get studentGroupId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirstInfoCopyWith<FirstInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirstInfoCopyWith<$Res> {
  factory $FirstInfoCopyWith(FirstInfo value, $Res Function(FirstInfo) then) =
      _$FirstInfoCopyWithImpl<$Res, FirstInfo>;
  @useResult
  $Res call(
      {String level,
      String email,
      String google,
      String facebook,
      dynamic apple,
      String avatar,
      String name,
      String country,
      String phone,
      String language,
      String birthday,
      bool requestPassword,
      bool isActivated,
      bool isPhoneActivated,
      String requireNote,
      int timezone,
      dynamic phoneAuth,
      bool isPhoneAuthActivated,
      String studySchedule,
      bool canSendMessage,
      bool isPublicRecord,
      dynamic caredByStaffId,
      String createdAt,
      String updatedAt,
      dynamic deletedAt,
      dynamic studentGroupId});
}

/// @nodoc
class _$FirstInfoCopyWithImpl<$Res, $Val extends FirstInfo>
    implements $FirstInfoCopyWith<$Res> {
  _$FirstInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? email = null,
    Object? google = null,
    Object? facebook = null,
    Object? apple = freezed,
    Object? avatar = null,
    Object? name = null,
    Object? country = null,
    Object? phone = null,
    Object? language = null,
    Object? birthday = null,
    Object? requestPassword = null,
    Object? isActivated = null,
    Object? isPhoneActivated = null,
    Object? requireNote = null,
    Object? timezone = null,
    Object? phoneAuth = freezed,
    Object? isPhoneAuthActivated = null,
    Object? studySchedule = null,
    Object? canSendMessage = null,
    Object? isPublicRecord = null,
    Object? caredByStaffId = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
    Object? studentGroupId = freezed,
  }) {
    return _then(_value.copyWith(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      google: null == google
          ? _value.google
          : google // ignore: cast_nullable_to_non_nullable
              as String,
      facebook: null == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String,
      apple: freezed == apple
          ? _value.apple
          : apple // ignore: cast_nullable_to_non_nullable
              as dynamic,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      requestPassword: null == requestPassword
          ? _value.requestPassword
          : requestPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isActivated: null == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      isPhoneActivated: null == isPhoneActivated
          ? _value.isPhoneActivated
          : isPhoneActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      requireNote: null == requireNote
          ? _value.requireNote
          : requireNote // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
      phoneAuth: freezed == phoneAuth
          ? _value.phoneAuth
          : phoneAuth // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isPhoneAuthActivated: null == isPhoneAuthActivated
          ? _value.isPhoneAuthActivated
          : isPhoneAuthActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      studySchedule: null == studySchedule
          ? _value.studySchedule
          : studySchedule // ignore: cast_nullable_to_non_nullable
              as String,
      canSendMessage: null == canSendMessage
          ? _value.canSendMessage
          : canSendMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublicRecord: null == isPublicRecord
          ? _value.isPublicRecord
          : isPublicRecord // ignore: cast_nullable_to_non_nullable
              as bool,
      caredByStaffId: freezed == caredByStaffId
          ? _value.caredByStaffId
          : caredByStaffId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      studentGroupId: freezed == studentGroupId
          ? _value.studentGroupId
          : studentGroupId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FirstInfoCopyWith<$Res> implements $FirstInfoCopyWith<$Res> {
  factory _$$_FirstInfoCopyWith(
          _$_FirstInfo value, $Res Function(_$_FirstInfo) then) =
      __$$_FirstInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String level,
      String email,
      String google,
      String facebook,
      dynamic apple,
      String avatar,
      String name,
      String country,
      String phone,
      String language,
      String birthday,
      bool requestPassword,
      bool isActivated,
      bool isPhoneActivated,
      String requireNote,
      int timezone,
      dynamic phoneAuth,
      bool isPhoneAuthActivated,
      String studySchedule,
      bool canSendMessage,
      bool isPublicRecord,
      dynamic caredByStaffId,
      String createdAt,
      String updatedAt,
      dynamic deletedAt,
      dynamic studentGroupId});
}

/// @nodoc
class __$$_FirstInfoCopyWithImpl<$Res>
    extends _$FirstInfoCopyWithImpl<$Res, _$_FirstInfo>
    implements _$$_FirstInfoCopyWith<$Res> {
  __$$_FirstInfoCopyWithImpl(
      _$_FirstInfo _value, $Res Function(_$_FirstInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? email = null,
    Object? google = null,
    Object? facebook = null,
    Object? apple = freezed,
    Object? avatar = null,
    Object? name = null,
    Object? country = null,
    Object? phone = null,
    Object? language = null,
    Object? birthday = null,
    Object? requestPassword = null,
    Object? isActivated = null,
    Object? isPhoneActivated = null,
    Object? requireNote = null,
    Object? timezone = null,
    Object? phoneAuth = freezed,
    Object? isPhoneAuthActivated = null,
    Object? studySchedule = null,
    Object? canSendMessage = null,
    Object? isPublicRecord = null,
    Object? caredByStaffId = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
    Object? studentGroupId = freezed,
  }) {
    return _then(_$_FirstInfo(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      google: null == google
          ? _value.google
          : google // ignore: cast_nullable_to_non_nullable
              as String,
      facebook: null == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String,
      apple: freezed == apple
          ? _value.apple
          : apple // ignore: cast_nullable_to_non_nullable
              as dynamic,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      requestPassword: null == requestPassword
          ? _value.requestPassword
          : requestPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isActivated: null == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      isPhoneActivated: null == isPhoneActivated
          ? _value.isPhoneActivated
          : isPhoneActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      requireNote: null == requireNote
          ? _value.requireNote
          : requireNote // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
      phoneAuth: freezed == phoneAuth
          ? _value.phoneAuth
          : phoneAuth // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isPhoneAuthActivated: null == isPhoneAuthActivated
          ? _value.isPhoneAuthActivated
          : isPhoneAuthActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      studySchedule: null == studySchedule
          ? _value.studySchedule
          : studySchedule // ignore: cast_nullable_to_non_nullable
              as String,
      canSendMessage: null == canSendMessage
          ? _value.canSendMessage
          : canSendMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublicRecord: null == isPublicRecord
          ? _value.isPublicRecord
          : isPublicRecord // ignore: cast_nullable_to_non_nullable
              as bool,
      caredByStaffId: freezed == caredByStaffId
          ? _value.caredByStaffId
          : caredByStaffId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      studentGroupId: freezed == studentGroupId
          ? _value.studentGroupId
          : studentGroupId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FirstInfo implements _FirstInfo {
  const _$_FirstInfo(
      {required this.level,
      required this.email,
      required this.google,
      required this.facebook,
      required this.apple,
      required this.avatar,
      required this.name,
      required this.country,
      required this.phone,
      required this.language,
      required this.birthday,
      required this.requestPassword,
      required this.isActivated,
      required this.isPhoneActivated,
      required this.requireNote,
      required this.timezone,
      required this.phoneAuth,
      required this.isPhoneAuthActivated,
      required this.studySchedule,
      required this.canSendMessage,
      required this.isPublicRecord,
      required this.caredByStaffId,
      required this.createdAt,
      required this.updatedAt,
      required this.deletedAt,
      required this.studentGroupId});

  factory _$_FirstInfo.fromJson(Map<String, dynamic> json) =>
      _$$_FirstInfoFromJson(json);

  @override
  final String level;
  @override
  final String email;
  @override
  final String google;
  @override
  final String facebook;
  @override
  final dynamic apple;
  @override
  final String avatar;
  @override
  final String name;
  @override
  final String country;
  @override
  final String phone;
  @override
  final String language;
  @override
  final String birthday;
  @override
  final bool requestPassword;
  @override
  final bool isActivated;
  @override
  final bool isPhoneActivated;
  @override
  final String requireNote;
  @override
  final int timezone;
  @override
  final dynamic phoneAuth;
  @override
  final bool isPhoneAuthActivated;
  @override
  final String studySchedule;
  @override
  final bool canSendMessage;
  @override
  final bool isPublicRecord;
  @override
  final dynamic caredByStaffId;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final dynamic deletedAt;
  @override
  final dynamic studentGroupId;

  @override
  String toString() {
    return 'FirstInfo(level: $level, email: $email, google: $google, facebook: $facebook, apple: $apple, avatar: $avatar, name: $name, country: $country, phone: $phone, language: $language, birthday: $birthday, requestPassword: $requestPassword, isActivated: $isActivated, isPhoneActivated: $isPhoneActivated, requireNote: $requireNote, timezone: $timezone, phoneAuth: $phoneAuth, isPhoneAuthActivated: $isPhoneAuthActivated, studySchedule: $studySchedule, canSendMessage: $canSendMessage, isPublicRecord: $isPublicRecord, caredByStaffId: $caredByStaffId, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, studentGroupId: $studentGroupId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirstInfo &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.google, google) || other.google == google) &&
            (identical(other.facebook, facebook) ||
                other.facebook == facebook) &&
            const DeepCollectionEquality().equals(other.apple, apple) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.requestPassword, requestPassword) ||
                other.requestPassword == requestPassword) &&
            (identical(other.isActivated, isActivated) ||
                other.isActivated == isActivated) &&
            (identical(other.isPhoneActivated, isPhoneActivated) ||
                other.isPhoneActivated == isPhoneActivated) &&
            (identical(other.requireNote, requireNote) ||
                other.requireNote == requireNote) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            const DeepCollectionEquality().equals(other.phoneAuth, phoneAuth) &&
            (identical(other.isPhoneAuthActivated, isPhoneAuthActivated) ||
                other.isPhoneAuthActivated == isPhoneAuthActivated) &&
            (identical(other.studySchedule, studySchedule) ||
                other.studySchedule == studySchedule) &&
            (identical(other.canSendMessage, canSendMessage) ||
                other.canSendMessage == canSendMessage) &&
            (identical(other.isPublicRecord, isPublicRecord) ||
                other.isPublicRecord == isPublicRecord) &&
            const DeepCollectionEquality()
                .equals(other.caredByStaffId, caredByStaffId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            const DeepCollectionEquality()
                .equals(other.studentGroupId, studentGroupId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        level,
        email,
        google,
        facebook,
        const DeepCollectionEquality().hash(apple),
        avatar,
        name,
        country,
        phone,
        language,
        birthday,
        requestPassword,
        isActivated,
        isPhoneActivated,
        requireNote,
        timezone,
        const DeepCollectionEquality().hash(phoneAuth),
        isPhoneAuthActivated,
        studySchedule,
        canSendMessage,
        isPublicRecord,
        const DeepCollectionEquality().hash(caredByStaffId),
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(deletedAt),
        const DeepCollectionEquality().hash(studentGroupId)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FirstInfoCopyWith<_$_FirstInfo> get copyWith =>
      __$$_FirstInfoCopyWithImpl<_$_FirstInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FirstInfoToJson(
      this,
    );
  }
}

abstract class _FirstInfo implements FirstInfo {
  const factory _FirstInfo(
      {required final String level,
      required final String email,
      required final String google,
      required final String facebook,
      required final dynamic apple,
      required final String avatar,
      required final String name,
      required final String country,
      required final String phone,
      required final String language,
      required final String birthday,
      required final bool requestPassword,
      required final bool isActivated,
      required final bool isPhoneActivated,
      required final String requireNote,
      required final int timezone,
      required final dynamic phoneAuth,
      required final bool isPhoneAuthActivated,
      required final String studySchedule,
      required final bool canSendMessage,
      required final bool isPublicRecord,
      required final dynamic caredByStaffId,
      required final String createdAt,
      required final String updatedAt,
      required final dynamic deletedAt,
      required final dynamic studentGroupId}) = _$_FirstInfo;

  factory _FirstInfo.fromJson(Map<String, dynamic> json) =
      _$_FirstInfo.fromJson;

  @override
  String get level;
  @override
  String get email;
  @override
  String get google;
  @override
  String get facebook;
  @override
  dynamic get apple;
  @override
  String get avatar;
  @override
  String get name;
  @override
  String get country;
  @override
  String get phone;
  @override
  String get language;
  @override
  String get birthday;
  @override
  bool get requestPassword;
  @override
  bool get isActivated;
  @override
  bool get isPhoneActivated;
  @override
  String get requireNote;
  @override
  int get timezone;
  @override
  dynamic get phoneAuth;
  @override
  bool get isPhoneAuthActivated;
  @override
  String get studySchedule;
  @override
  bool get canSendMessage;
  @override
  bool get isPublicRecord;
  @override
  dynamic get caredByStaffId;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  dynamic get deletedAt;
  @override
  dynamic get studentGroupId;
  @override
  @JsonKey(ignore: true)
  _$$_FirstInfoCopyWith<_$_FirstInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
