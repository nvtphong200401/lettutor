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
  String? get firstId => throw _privateConstructorUsedError;
  String? get secondId => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  SecondInfo? get secondInfo => throw _privateConstructorUsedError;

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
      String? firstId,
      String? secondId,
      String createdAt,
      String updatedAt,
      SecondInfo? secondInfo});

  $SecondInfoCopyWith<$Res>? get secondInfo;
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
    Object? firstId = freezed,
    Object? secondId = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? secondInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstId: freezed == firstId
          ? _value.firstId
          : firstId // ignore: cast_nullable_to_non_nullable
              as String?,
      secondId: freezed == secondId
          ? _value.secondId
          : secondId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      secondInfo: freezed == secondInfo
          ? _value.secondInfo
          : secondInfo // ignore: cast_nullable_to_non_nullable
              as SecondInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SecondInfoCopyWith<$Res>? get secondInfo {
    if (_value.secondInfo == null) {
      return null;
    }

    return $SecondInfoCopyWith<$Res>(_value.secondInfo!, (value) {
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
      String? firstId,
      String? secondId,
      String createdAt,
      String updatedAt,
      SecondInfo? secondInfo});

  @override
  $SecondInfoCopyWith<$Res>? get secondInfo;
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
    Object? firstId = freezed,
    Object? secondId = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? secondInfo = freezed,
  }) {
    return _then(_$_FavoriteTutor(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstId: freezed == firstId
          ? _value.firstId
          : firstId // ignore: cast_nullable_to_non_nullable
              as String?,
      secondId: freezed == secondId
          ? _value.secondId
          : secondId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      secondInfo: freezed == secondInfo
          ? _value.secondInfo
          : secondInfo // ignore: cast_nullable_to_non_nullable
              as SecondInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavoriteTutor implements _FavoriteTutor {
  const _$_FavoriteTutor(
      {required this.id,
      this.firstId,
      this.secondId,
      required this.createdAt,
      required this.updatedAt,
      this.secondInfo});

  factory _$_FavoriteTutor.fromJson(Map<String, dynamic> json) =>
      _$$_FavoriteTutorFromJson(json);

  @override
  final String id;
  @override
  final String? firstId;
  @override
  final String? secondId;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final SecondInfo? secondInfo;

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
      final String? firstId,
      final String? secondId,
      required final String createdAt,
      required final String updatedAt,
      final SecondInfo? secondInfo}) = _$_FavoriteTutor;

  factory _FavoriteTutor.fromJson(Map<String, dynamic> json) =
      _$_FavoriteTutor.fromJson;

  @override
  String get id;
  @override
  String? get firstId;
  @override
  String? get secondId;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  SecondInfo? get secondInfo;
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
  String? get id => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get google => throw _privateConstructorUsedError;
  String? get facebook => throw _privateConstructorUsedError;
  String? get apple => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  DateTime get birthday => throw _privateConstructorUsedError;
  bool? get requestPassword => throw _privateConstructorUsedError;
  bool? get isActivated => throw _privateConstructorUsedError;
  String? get isPhoneActivated => throw _privateConstructorUsedError;
  String? get requireNote => throw _privateConstructorUsedError;
  int get timezone => throw _privateConstructorUsedError;
  String? get phoneAuth => throw _privateConstructorUsedError;
  bool? get isPhoneAuthActivated => throw _privateConstructorUsedError;
  String? get studySchedule => throw _privateConstructorUsedError;
  bool? get canSendMessage => throw _privateConstructorUsedError;
  bool? get isPublicRecord => throw _privateConstructorUsedError;
  String? get caredByStaffId => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get deletedAt => throw _privateConstructorUsedError;
  String? get studentGroupId => throw _privateConstructorUsedError;
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
      {String? id,
      String? level,
      String? email,
      String? google,
      String? facebook,
      String? apple,
      String? avatar,
      String? name,
      String? country,
      String? phone,
      String? language,
      DateTime birthday,
      bool? requestPassword,
      bool? isActivated,
      String? isPhoneActivated,
      String? requireNote,
      int timezone,
      String? phoneAuth,
      bool? isPhoneAuthActivated,
      String? studySchedule,
      bool? canSendMessage,
      bool? isPublicRecord,
      String? caredByStaffId,
      String? createdAt,
      String? updatedAt,
      String? deletedAt,
      String? studentGroupId,
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
    Object? id = freezed,
    Object? level = freezed,
    Object? email = freezed,
    Object? google = freezed,
    Object? facebook = freezed,
    Object? apple = freezed,
    Object? avatar = freezed,
    Object? name = freezed,
    Object? country = freezed,
    Object? phone = freezed,
    Object? language = freezed,
    Object? birthday = null,
    Object? requestPassword = freezed,
    Object? isActivated = freezed,
    Object? isPhoneActivated = freezed,
    Object? requireNote = freezed,
    Object? timezone = null,
    Object? phoneAuth = freezed,
    Object? isPhoneAuthActivated = freezed,
    Object? studySchedule = freezed,
    Object? canSendMessage = freezed,
    Object? isPublicRecord = freezed,
    Object? caredByStaffId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? studentGroupId = freezed,
    Object? tutorInfo = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      google: freezed == google
          ? _value.google
          : google // ignore: cast_nullable_to_non_nullable
              as String?,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      apple: freezed == apple
          ? _value.apple
          : apple // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requestPassword: freezed == requestPassword
          ? _value.requestPassword
          : requestPassword // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActivated: freezed == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPhoneActivated: freezed == isPhoneActivated
          ? _value.isPhoneActivated
          : isPhoneActivated // ignore: cast_nullable_to_non_nullable
              as String?,
      requireNote: freezed == requireNote
          ? _value.requireNote
          : requireNote // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
      phoneAuth: freezed == phoneAuth
          ? _value.phoneAuth
          : phoneAuth // ignore: cast_nullable_to_non_nullable
              as String?,
      isPhoneAuthActivated: freezed == isPhoneAuthActivated
          ? _value.isPhoneAuthActivated
          : isPhoneAuthActivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      studySchedule: freezed == studySchedule
          ? _value.studySchedule
          : studySchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      canSendMessage: freezed == canSendMessage
          ? _value.canSendMessage
          : canSendMessage // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPublicRecord: freezed == isPublicRecord
          ? _value.isPublicRecord
          : isPublicRecord // ignore: cast_nullable_to_non_nullable
              as bool?,
      caredByStaffId: freezed == caredByStaffId
          ? _value.caredByStaffId
          : caredByStaffId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      studentGroupId: freezed == studentGroupId
          ? _value.studentGroupId
          : studentGroupId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {String? id,
      String? level,
      String? email,
      String? google,
      String? facebook,
      String? apple,
      String? avatar,
      String? name,
      String? country,
      String? phone,
      String? language,
      DateTime birthday,
      bool? requestPassword,
      bool? isActivated,
      String? isPhoneActivated,
      String? requireNote,
      int timezone,
      String? phoneAuth,
      bool? isPhoneAuthActivated,
      String? studySchedule,
      bool? canSendMessage,
      bool? isPublicRecord,
      String? caredByStaffId,
      String? createdAt,
      String? updatedAt,
      String? deletedAt,
      String? studentGroupId,
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
    Object? id = freezed,
    Object? level = freezed,
    Object? email = freezed,
    Object? google = freezed,
    Object? facebook = freezed,
    Object? apple = freezed,
    Object? avatar = freezed,
    Object? name = freezed,
    Object? country = freezed,
    Object? phone = freezed,
    Object? language = freezed,
    Object? birthday = null,
    Object? requestPassword = freezed,
    Object? isActivated = freezed,
    Object? isPhoneActivated = freezed,
    Object? requireNote = freezed,
    Object? timezone = null,
    Object? phoneAuth = freezed,
    Object? isPhoneAuthActivated = freezed,
    Object? studySchedule = freezed,
    Object? canSendMessage = freezed,
    Object? isPublicRecord = freezed,
    Object? caredByStaffId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? studentGroupId = freezed,
    Object? tutorInfo = null,
  }) {
    return _then(_$_SecondInfo(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      google: freezed == google
          ? _value.google
          : google // ignore: cast_nullable_to_non_nullable
              as String?,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      apple: freezed == apple
          ? _value.apple
          : apple // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requestPassword: freezed == requestPassword
          ? _value.requestPassword
          : requestPassword // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActivated: freezed == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPhoneActivated: freezed == isPhoneActivated
          ? _value.isPhoneActivated
          : isPhoneActivated // ignore: cast_nullable_to_non_nullable
              as String?,
      requireNote: freezed == requireNote
          ? _value.requireNote
          : requireNote // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
      phoneAuth: freezed == phoneAuth
          ? _value.phoneAuth
          : phoneAuth // ignore: cast_nullable_to_non_nullable
              as String?,
      isPhoneAuthActivated: freezed == isPhoneAuthActivated
          ? _value.isPhoneAuthActivated
          : isPhoneAuthActivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      studySchedule: freezed == studySchedule
          ? _value.studySchedule
          : studySchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      canSendMessage: freezed == canSendMessage
          ? _value.canSendMessage
          : canSendMessage // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPublicRecord: freezed == isPublicRecord
          ? _value.isPublicRecord
          : isPublicRecord // ignore: cast_nullable_to_non_nullable
              as bool?,
      caredByStaffId: freezed == caredByStaffId
          ? _value.caredByStaffId
          : caredByStaffId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      studentGroupId: freezed == studentGroupId
          ? _value.studentGroupId
          : studentGroupId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {this.id,
      this.level,
      this.email,
      this.google,
      this.facebook,
      this.apple,
      this.avatar,
      this.name,
      this.country,
      this.phone,
      this.language,
      required this.birthday,
      this.requestPassword,
      this.isActivated,
      this.isPhoneActivated,
      this.requireNote,
      required this.timezone,
      this.phoneAuth,
      this.isPhoneAuthActivated,
      this.studySchedule,
      this.canSendMessage,
      this.isPublicRecord,
      this.caredByStaffId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.studentGroupId,
      required this.tutorInfo});

  factory _$_SecondInfo.fromJson(Map<String, dynamic> json) =>
      _$$_SecondInfoFromJson(json);

  @override
  final String? id;
  @override
  final String? level;
  @override
  final String? email;
  @override
  final String? google;
  @override
  final String? facebook;
  @override
  final String? apple;
  @override
  final String? avatar;
  @override
  final String? name;
  @override
  final String? country;
  @override
  final String? phone;
  @override
  final String? language;
  @override
  final DateTime birthday;
  @override
  final bool? requestPassword;
  @override
  final bool? isActivated;
  @override
  final String? isPhoneActivated;
  @override
  final String? requireNote;
  @override
  final int timezone;
  @override
  final String? phoneAuth;
  @override
  final bool? isPhoneAuthActivated;
  @override
  final String? studySchedule;
  @override
  final bool? canSendMessage;
  @override
  final bool? isPublicRecord;
  @override
  final String? caredByStaffId;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? deletedAt;
  @override
  final String? studentGroupId;
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
            (identical(other.google, google) || other.google == google) &&
            (identical(other.facebook, facebook) ||
                other.facebook == facebook) &&
            (identical(other.apple, apple) || other.apple == apple) &&
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
            (identical(other.phoneAuth, phoneAuth) ||
                other.phoneAuth == phoneAuth) &&
            (identical(other.isPhoneAuthActivated, isPhoneAuthActivated) ||
                other.isPhoneAuthActivated == isPhoneAuthActivated) &&
            (identical(other.studySchedule, studySchedule) ||
                other.studySchedule == studySchedule) &&
            (identical(other.canSendMessage, canSendMessage) ||
                other.canSendMessage == canSendMessage) &&
            (identical(other.isPublicRecord, isPublicRecord) ||
                other.isPublicRecord == isPublicRecord) &&
            (identical(other.caredByStaffId, caredByStaffId) ||
                other.caredByStaffId == caredByStaffId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.studentGroupId, studentGroupId) ||
                other.studentGroupId == studentGroupId) &&
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
        google,
        facebook,
        apple,
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
        phoneAuth,
        isPhoneAuthActivated,
        studySchedule,
        canSendMessage,
        isPublicRecord,
        caredByStaffId,
        createdAt,
        updatedAt,
        deletedAt,
        studentGroupId,
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
      {final String? id,
      final String? level,
      final String? email,
      final String? google,
      final String? facebook,
      final String? apple,
      final String? avatar,
      final String? name,
      final String? country,
      final String? phone,
      final String? language,
      required final DateTime birthday,
      final bool? requestPassword,
      final bool? isActivated,
      final String? isPhoneActivated,
      final String? requireNote,
      required final int timezone,
      final String? phoneAuth,
      final bool? isPhoneAuthActivated,
      final String? studySchedule,
      final bool? canSendMessage,
      final bool? isPublicRecord,
      final String? caredByStaffId,
      final String? createdAt,
      final String? updatedAt,
      final String? deletedAt,
      final String? studentGroupId,
      required final TutorInfo tutorInfo}) = _$_SecondInfo;

  factory _SecondInfo.fromJson(Map<String, dynamic> json) =
      _$_SecondInfo.fromJson;

  @override
  String? get id;
  @override
  String? get level;
  @override
  String? get email;
  @override
  String? get google;
  @override
  String? get facebook;
  @override
  String? get apple;
  @override
  String? get avatar;
  @override
  String? get name;
  @override
  String? get country;
  @override
  String? get phone;
  @override
  String? get language;
  @override
  DateTime get birthday;
  @override
  bool? get requestPassword;
  @override
  bool? get isActivated;
  @override
  String? get isPhoneActivated;
  @override
  String? get requireNote;
  @override
  int get timezone;
  @override
  String? get phoneAuth;
  @override
  bool? get isPhoneAuthActivated;
  @override
  String? get studySchedule;
  @override
  bool? get canSendMessage;
  @override
  bool? get isPublicRecord;
  @override
  String? get caredByStaffId;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  String? get deletedAt;
  @override
  String? get studentGroupId;
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
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get video => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get education => throw _privateConstructorUsedError;
  String? get experience => throw _privateConstructorUsedError;
  String? get profession => throw _privateConstructorUsedError;
  String? get accent => throw _privateConstructorUsedError;
  String? get targetStudent => throw _privateConstructorUsedError;
  String? get interests => throw _privateConstructorUsedError;
  String? get languages => throw _privateConstructorUsedError;
  String? get specialties => throw _privateConstructorUsedError;
  String? get resume => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  bool? get isActivated => throw _privateConstructorUsedError;
  bool? get isNative => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

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
      {String? id,
      String? userId,
      String? video,
      String? bio,
      String? education,
      String? experience,
      String? profession,
      String? accent,
      String? targetStudent,
      String? interests,
      String? languages,
      String? specialties,
      String? resume,
      double? rating,
      bool? isActivated,
      bool? isNative,
      String? createdAt,
      String? updatedAt});
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
    Object? id = freezed,
    Object? userId = freezed,
    Object? video = freezed,
    Object? bio = freezed,
    Object? education = freezed,
    Object? experience = freezed,
    Object? profession = freezed,
    Object? accent = freezed,
    Object? targetStudent = freezed,
    Object? interests = freezed,
    Object? languages = freezed,
    Object? specialties = freezed,
    Object? resume = freezed,
    Object? rating = freezed,
    Object? isActivated = freezed,
    Object? isNative = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String?,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String?,
      accent: freezed == accent
          ? _value.accent
          : accent // ignore: cast_nullable_to_non_nullable
              as String?,
      targetStudent: freezed == targetStudent
          ? _value.targetStudent
          : targetStudent // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as String?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as String?,
      specialties: freezed == specialties
          ? _value.specialties
          : specialties // ignore: cast_nullable_to_non_nullable
              as String?,
      resume: freezed == resume
          ? _value.resume
          : resume // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      isActivated: freezed == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      isNative: freezed == isNative
          ? _value.isNative
          : isNative // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {String? id,
      String? userId,
      String? video,
      String? bio,
      String? education,
      String? experience,
      String? profession,
      String? accent,
      String? targetStudent,
      String? interests,
      String? languages,
      String? specialties,
      String? resume,
      double? rating,
      bool? isActivated,
      bool? isNative,
      String? createdAt,
      String? updatedAt});
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
    Object? id = freezed,
    Object? userId = freezed,
    Object? video = freezed,
    Object? bio = freezed,
    Object? education = freezed,
    Object? experience = freezed,
    Object? profession = freezed,
    Object? accent = freezed,
    Object? targetStudent = freezed,
    Object? interests = freezed,
    Object? languages = freezed,
    Object? specialties = freezed,
    Object? resume = freezed,
    Object? rating = freezed,
    Object? isActivated = freezed,
    Object? isNative = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_TutorInfo(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String?,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String?,
      accent: freezed == accent
          ? _value.accent
          : accent // ignore: cast_nullable_to_non_nullable
              as String?,
      targetStudent: freezed == targetStudent
          ? _value.targetStudent
          : targetStudent // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as String?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as String?,
      specialties: freezed == specialties
          ? _value.specialties
          : specialties // ignore: cast_nullable_to_non_nullable
              as String?,
      resume: freezed == resume
          ? _value.resume
          : resume // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      isActivated: freezed == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      isNative: freezed == isNative
          ? _value.isNative
          : isNative // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TutorInfo implements _TutorInfo {
  const _$_TutorInfo(
      {this.id,
      this.userId,
      this.video,
      this.bio,
      this.education,
      this.experience,
      this.profession,
      this.accent,
      this.targetStudent,
      this.interests,
      this.languages,
      this.specialties,
      this.resume,
      this.rating,
      this.isActivated,
      this.isNative,
      this.createdAt,
      this.updatedAt});

  factory _$_TutorInfo.fromJson(Map<String, dynamic> json) =>
      _$$_TutorInfoFromJson(json);

  @override
  final String? id;
  @override
  final String? userId;
  @override
  final String? video;
  @override
  final String? bio;
  @override
  final String? education;
  @override
  final String? experience;
  @override
  final String? profession;
  @override
  final String? accent;
  @override
  final String? targetStudent;
  @override
  final String? interests;
  @override
  final String? languages;
  @override
  final String? specialties;
  @override
  final String? resume;
  @override
  final double? rating;
  @override
  final bool? isActivated;
  @override
  final bool? isNative;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

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
            (identical(other.isActivated, isActivated) ||
                other.isActivated == isActivated) &&
            (identical(other.isNative, isNative) ||
                other.isNative == isNative) &&
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
      accent,
      targetStudent,
      interests,
      languages,
      specialties,
      resume,
      rating,
      isActivated,
      isNative,
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
      {final String? id,
      final String? userId,
      final String? video,
      final String? bio,
      final String? education,
      final String? experience,
      final String? profession,
      final String? accent,
      final String? targetStudent,
      final String? interests,
      final String? languages,
      final String? specialties,
      final String? resume,
      final double? rating,
      final bool? isActivated,
      final bool? isNative,
      final String? createdAt,
      final String? updatedAt}) = _$_TutorInfo;

  factory _TutorInfo.fromJson(Map<String, dynamic> json) =
      _$_TutorInfo.fromJson;

  @override
  String? get id;
  @override
  String? get userId;
  @override
  String? get video;
  @override
  String? get bio;
  @override
  String? get education;
  @override
  String? get experience;
  @override
  String? get profession;
  @override
  String? get accent;
  @override
  String? get targetStudent;
  @override
  String? get interests;
  @override
  String? get languages;
  @override
  String? get specialties;
  @override
  String? get resume;
  @override
  double? get rating;
  @override
  bool? get isActivated;
  @override
  bool? get isNative;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
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
  List<TeacherModel> get rows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TutorsCopyWith<Tutors> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorsCopyWith<$Res> {
  factory $TutorsCopyWith(Tutors value, $Res Function(Tutors) then) =
      _$TutorsCopyWithImpl<$Res, Tutors>;
  @useResult
  $Res call({int count, List<TeacherModel> rows});
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
              as List<TeacherModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TutorsCopyWith<$Res> implements $TutorsCopyWith<$Res> {
  factory _$$_TutorsCopyWith(_$_Tutors value, $Res Function(_$_Tutors) then) =
      __$$_TutorsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, List<TeacherModel> rows});
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
              as List<TeacherModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tutors implements _Tutors {
  const _$_Tutors({required this.count, required final List<TeacherModel> rows})
      : _rows = rows;

  factory _$_Tutors.fromJson(Map<String, dynamic> json) =>
      _$$_TutorsFromJson(json);

  @override
  final int count;
  final List<TeacherModel> _rows;
  @override
  List<TeacherModel> get rows {
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
      {required final int count,
      required final List<TeacherModel> rows}) = _$_Tutors;

  factory _Tutors.fromJson(Map<String, dynamic> json) = _$_Tutors.fromJson;

  @override
  int get count;
  @override
  List<TeacherModel> get rows;
  @override
  @JsonKey(ignore: true)
  _$$_TutorsCopyWith<_$_Tutors> get copyWith =>
      throw _privateConstructorUsedError;
}

TeacherModel _$TeacherModelFromJson(Map<String, dynamic> json) {
  return _TeacherModel.fromJson(json);
}

/// @nodoc
mixin _$TeacherModel {
  String? get level => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get google => throw _privateConstructorUsedError;
  String? get facebook => throw _privateConstructorUsedError;
  String? get apple => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get birthday => throw _privateConstructorUsedError;
  bool? get requestPassword => throw _privateConstructorUsedError;
  bool? get isActivated => throw _privateConstructorUsedError;
  String? get isPhoneActivated => throw _privateConstructorUsedError;
  String? get requireNote => throw _privateConstructorUsedError;
  int? get timezone => throw _privateConstructorUsedError;
  String? get phoneAuth => throw _privateConstructorUsedError;
  bool? get isPhoneAuthActivated => throw _privateConstructorUsedError;
  String? get studySchedule => throw _privateConstructorUsedError;
  bool? get canSendMessage => throw _privateConstructorUsedError;
  bool? get isPublicRecord => throw _privateConstructorUsedError;
  String? get caredByStaffId => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get deletedAt => throw _privateConstructorUsedError;
  String? get studentGroupId => throw _privateConstructorUsedError;
  List<Feedback> get feedbacks => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get video => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get education => throw _privateConstructorUsedError;
  String? get experience => throw _privateConstructorUsedError;
  String? get profession => throw _privateConstructorUsedError;
  String? get accent => throw _privateConstructorUsedError;
  String? get targetStudent => throw _privateConstructorUsedError;
  String? get interests => throw _privateConstructorUsedError;
  String? get languages => throw _privateConstructorUsedError;
  String? get specialties => throw _privateConstructorUsedError;
  String? get resume => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  bool? get isNative => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  bool? get isOnline => throw _privateConstructorUsedError;
  bool? get isFavorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeacherModelCopyWith<TeacherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherModelCopyWith<$Res> {
  factory $TeacherModelCopyWith(
          TeacherModel value, $Res Function(TeacherModel) then) =
      _$TeacherModelCopyWithImpl<$Res, TeacherModel>;
  @useResult
  $Res call(
      {String? level,
      String? email,
      String? google,
      String? facebook,
      String? apple,
      String avatar,
      String? name,
      String? country,
      String? phone,
      String? language,
      String? birthday,
      bool? requestPassword,
      bool? isActivated,
      String? isPhoneActivated,
      String? requireNote,
      int? timezone,
      String? phoneAuth,
      bool? isPhoneAuthActivated,
      String? studySchedule,
      bool? canSendMessage,
      bool? isPublicRecord,
      String? caredByStaffId,
      String? createdAt,
      String? updatedAt,
      String? deletedAt,
      String? studentGroupId,
      List<Feedback> feedbacks,
      String? id,
      String? userId,
      String? video,
      String? bio,
      String? education,
      String? experience,
      String? profession,
      String? accent,
      String? targetStudent,
      String? interests,
      String? languages,
      String? specialties,
      String? resume,
      double? rating,
      bool? isNative,
      int? price,
      bool? isOnline,
      bool? isFavorite});
}

/// @nodoc
class _$TeacherModelCopyWithImpl<$Res, $Val extends TeacherModel>
    implements $TeacherModelCopyWith<$Res> {
  _$TeacherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = freezed,
    Object? email = freezed,
    Object? google = freezed,
    Object? facebook = freezed,
    Object? apple = freezed,
    Object? avatar = null,
    Object? name = freezed,
    Object? country = freezed,
    Object? phone = freezed,
    Object? language = freezed,
    Object? birthday = freezed,
    Object? requestPassword = freezed,
    Object? isActivated = freezed,
    Object? isPhoneActivated = freezed,
    Object? requireNote = freezed,
    Object? timezone = freezed,
    Object? phoneAuth = freezed,
    Object? isPhoneAuthActivated = freezed,
    Object? studySchedule = freezed,
    Object? canSendMessage = freezed,
    Object? isPublicRecord = freezed,
    Object? caredByStaffId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? studentGroupId = freezed,
    Object? feedbacks = null,
    Object? id = freezed,
    Object? userId = freezed,
    Object? video = freezed,
    Object? bio = freezed,
    Object? education = freezed,
    Object? experience = freezed,
    Object? profession = freezed,
    Object? accent = freezed,
    Object? targetStudent = freezed,
    Object? interests = freezed,
    Object? languages = freezed,
    Object? specialties = freezed,
    Object? resume = freezed,
    Object? rating = freezed,
    Object? isNative = freezed,
    Object? price = freezed,
    Object? isOnline = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_value.copyWith(
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      google: freezed == google
          ? _value.google
          : google // ignore: cast_nullable_to_non_nullable
              as String?,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      apple: freezed == apple
          ? _value.apple
          : apple // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      requestPassword: freezed == requestPassword
          ? _value.requestPassword
          : requestPassword // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActivated: freezed == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPhoneActivated: freezed == isPhoneActivated
          ? _value.isPhoneActivated
          : isPhoneActivated // ignore: cast_nullable_to_non_nullable
              as String?,
      requireNote: freezed == requireNote
          ? _value.requireNote
          : requireNote // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int?,
      phoneAuth: freezed == phoneAuth
          ? _value.phoneAuth
          : phoneAuth // ignore: cast_nullable_to_non_nullable
              as String?,
      isPhoneAuthActivated: freezed == isPhoneAuthActivated
          ? _value.isPhoneAuthActivated
          : isPhoneAuthActivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      studySchedule: freezed == studySchedule
          ? _value.studySchedule
          : studySchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      canSendMessage: freezed == canSendMessage
          ? _value.canSendMessage
          : canSendMessage // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPublicRecord: freezed == isPublicRecord
          ? _value.isPublicRecord
          : isPublicRecord // ignore: cast_nullable_to_non_nullable
              as bool?,
      caredByStaffId: freezed == caredByStaffId
          ? _value.caredByStaffId
          : caredByStaffId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      studentGroupId: freezed == studentGroupId
          ? _value.studentGroupId
          : studentGroupId // ignore: cast_nullable_to_non_nullable
              as String?,
      feedbacks: null == feedbacks
          ? _value.feedbacks
          : feedbacks // ignore: cast_nullable_to_non_nullable
              as List<Feedback>,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String?,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String?,
      accent: freezed == accent
          ? _value.accent
          : accent // ignore: cast_nullable_to_non_nullable
              as String?,
      targetStudent: freezed == targetStudent
          ? _value.targetStudent
          : targetStudent // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as String?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as String?,
      specialties: freezed == specialties
          ? _value.specialties
          : specialties // ignore: cast_nullable_to_non_nullable
              as String?,
      resume: freezed == resume
          ? _value.resume
          : resume // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      isNative: freezed == isNative
          ? _value.isNative
          : isNative // ignore: cast_nullable_to_non_nullable
              as bool?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      isOnline: freezed == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TeacherModelCopyWith<$Res>
    implements $TeacherModelCopyWith<$Res> {
  factory _$$_TeacherModelCopyWith(
          _$_TeacherModel value, $Res Function(_$_TeacherModel) then) =
      __$$_TeacherModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? level,
      String? email,
      String? google,
      String? facebook,
      String? apple,
      String avatar,
      String? name,
      String? country,
      String? phone,
      String? language,
      String? birthday,
      bool? requestPassword,
      bool? isActivated,
      String? isPhoneActivated,
      String? requireNote,
      int? timezone,
      String? phoneAuth,
      bool? isPhoneAuthActivated,
      String? studySchedule,
      bool? canSendMessage,
      bool? isPublicRecord,
      String? caredByStaffId,
      String? createdAt,
      String? updatedAt,
      String? deletedAt,
      String? studentGroupId,
      List<Feedback> feedbacks,
      String? id,
      String? userId,
      String? video,
      String? bio,
      String? education,
      String? experience,
      String? profession,
      String? accent,
      String? targetStudent,
      String? interests,
      String? languages,
      String? specialties,
      String? resume,
      double? rating,
      bool? isNative,
      int? price,
      bool? isOnline,
      bool? isFavorite});
}

/// @nodoc
class __$$_TeacherModelCopyWithImpl<$Res>
    extends _$TeacherModelCopyWithImpl<$Res, _$_TeacherModel>
    implements _$$_TeacherModelCopyWith<$Res> {
  __$$_TeacherModelCopyWithImpl(
      _$_TeacherModel _value, $Res Function(_$_TeacherModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = freezed,
    Object? email = freezed,
    Object? google = freezed,
    Object? facebook = freezed,
    Object? apple = freezed,
    Object? avatar = null,
    Object? name = freezed,
    Object? country = freezed,
    Object? phone = freezed,
    Object? language = freezed,
    Object? birthday = freezed,
    Object? requestPassword = freezed,
    Object? isActivated = freezed,
    Object? isPhoneActivated = freezed,
    Object? requireNote = freezed,
    Object? timezone = freezed,
    Object? phoneAuth = freezed,
    Object? isPhoneAuthActivated = freezed,
    Object? studySchedule = freezed,
    Object? canSendMessage = freezed,
    Object? isPublicRecord = freezed,
    Object? caredByStaffId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? studentGroupId = freezed,
    Object? feedbacks = null,
    Object? id = freezed,
    Object? userId = freezed,
    Object? video = freezed,
    Object? bio = freezed,
    Object? education = freezed,
    Object? experience = freezed,
    Object? profession = freezed,
    Object? accent = freezed,
    Object? targetStudent = freezed,
    Object? interests = freezed,
    Object? languages = freezed,
    Object? specialties = freezed,
    Object? resume = freezed,
    Object? rating = freezed,
    Object? isNative = freezed,
    Object? price = freezed,
    Object? isOnline = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_$_TeacherModel(
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      google: freezed == google
          ? _value.google
          : google // ignore: cast_nullable_to_non_nullable
              as String?,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      apple: freezed == apple
          ? _value.apple
          : apple // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      requestPassword: freezed == requestPassword
          ? _value.requestPassword
          : requestPassword // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActivated: freezed == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPhoneActivated: freezed == isPhoneActivated
          ? _value.isPhoneActivated
          : isPhoneActivated // ignore: cast_nullable_to_non_nullable
              as String?,
      requireNote: freezed == requireNote
          ? _value.requireNote
          : requireNote // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int?,
      phoneAuth: freezed == phoneAuth
          ? _value.phoneAuth
          : phoneAuth // ignore: cast_nullable_to_non_nullable
              as String?,
      isPhoneAuthActivated: freezed == isPhoneAuthActivated
          ? _value.isPhoneAuthActivated
          : isPhoneAuthActivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      studySchedule: freezed == studySchedule
          ? _value.studySchedule
          : studySchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      canSendMessage: freezed == canSendMessage
          ? _value.canSendMessage
          : canSendMessage // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPublicRecord: freezed == isPublicRecord
          ? _value.isPublicRecord
          : isPublicRecord // ignore: cast_nullable_to_non_nullable
              as bool?,
      caredByStaffId: freezed == caredByStaffId
          ? _value.caredByStaffId
          : caredByStaffId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      studentGroupId: freezed == studentGroupId
          ? _value.studentGroupId
          : studentGroupId // ignore: cast_nullable_to_non_nullable
              as String?,
      feedbacks: null == feedbacks
          ? _value._feedbacks
          : feedbacks // ignore: cast_nullable_to_non_nullable
              as List<Feedback>,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String?,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String?,
      accent: freezed == accent
          ? _value.accent
          : accent // ignore: cast_nullable_to_non_nullable
              as String?,
      targetStudent: freezed == targetStudent
          ? _value.targetStudent
          : targetStudent // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as String?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as String?,
      specialties: freezed == specialties
          ? _value.specialties
          : specialties // ignore: cast_nullable_to_non_nullable
              as String?,
      resume: freezed == resume
          ? _value.resume
          : resume // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      isNative: freezed == isNative
          ? _value.isNative
          : isNative // ignore: cast_nullable_to_non_nullable
              as bool?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      isOnline: freezed == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TeacherModel implements _TeacherModel {
  const _$_TeacherModel(
      {this.level,
      this.email,
      this.google,
      this.facebook,
      this.apple,
      this.avatar =
          'https://thumbs.dreamstime.com/z/default-avatar-profile-vector-user-profile-default-avatar-profile-vector-user-profile-profile-179376714.jpg',
      this.name,
      this.country,
      this.phone,
      this.language,
      this.birthday,
      this.requestPassword,
      this.isActivated,
      this.isPhoneActivated,
      this.requireNote,
      this.timezone,
      this.phoneAuth,
      this.isPhoneAuthActivated,
      this.studySchedule,
      this.canSendMessage,
      this.isPublicRecord,
      this.caredByStaffId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.studentGroupId,
      required final List<Feedback> feedbacks,
      this.id,
      this.userId,
      this.video,
      this.bio,
      this.education,
      this.experience,
      this.profession,
      this.accent,
      this.targetStudent,
      this.interests,
      this.languages,
      this.specialties,
      this.resume,
      this.rating,
      this.isNative,
      this.price,
      this.isOnline,
      this.isFavorite})
      : _feedbacks = feedbacks;

  factory _$_TeacherModel.fromJson(Map<String, dynamic> json) =>
      _$$_TeacherModelFromJson(json);

  @override
  final String? level;
  @override
  final String? email;
  @override
  final String? google;
  @override
  final String? facebook;
  @override
  final String? apple;
  @override
  @JsonKey()
  final String avatar;
  @override
  final String? name;
  @override
  final String? country;
  @override
  final String? phone;
  @override
  final String? language;
  @override
  final String? birthday;
  @override
  final bool? requestPassword;
  @override
  final bool? isActivated;
  @override
  final String? isPhoneActivated;
  @override
  final String? requireNote;
  @override
  final int? timezone;
  @override
  final String? phoneAuth;
  @override
  final bool? isPhoneAuthActivated;
  @override
  final String? studySchedule;
  @override
  final bool? canSendMessage;
  @override
  final bool? isPublicRecord;
  @override
  final String? caredByStaffId;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? deletedAt;
  @override
  final String? studentGroupId;
  final List<Feedback> _feedbacks;
  @override
  List<Feedback> get feedbacks {
    if (_feedbacks is EqualUnmodifiableListView) return _feedbacks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_feedbacks);
  }

  @override
  final String? id;
  @override
  final String? userId;
  @override
  final String? video;
  @override
  final String? bio;
  @override
  final String? education;
  @override
  final String? experience;
  @override
  final String? profession;
  @override
  final String? accent;
  @override
  final String? targetStudent;
  @override
  final String? interests;
  @override
  final String? languages;
  @override
  final String? specialties;
  @override
  final String? resume;
  @override
  final double? rating;
  @override
  final bool? isNative;
  @override
  final int? price;
  @override
  final bool? isOnline;
  @override
  final bool? isFavorite;

  @override
  String toString() {
    return 'TeacherModel(level: $level, email: $email, google: $google, facebook: $facebook, apple: $apple, avatar: $avatar, name: $name, country: $country, phone: $phone, language: $language, birthday: $birthday, requestPassword: $requestPassword, isActivated: $isActivated, isPhoneActivated: $isPhoneActivated, requireNote: $requireNote, timezone: $timezone, phoneAuth: $phoneAuth, isPhoneAuthActivated: $isPhoneAuthActivated, studySchedule: $studySchedule, canSendMessage: $canSendMessage, isPublicRecord: $isPublicRecord, caredByStaffId: $caredByStaffId, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, studentGroupId: $studentGroupId, feedbacks: $feedbacks, id: $id, userId: $userId, video: $video, bio: $bio, education: $education, experience: $experience, profession: $profession, accent: $accent, targetStudent: $targetStudent, interests: $interests, languages: $languages, specialties: $specialties, resume: $resume, rating: $rating, isNative: $isNative, price: $price, isOnline: $isOnline, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TeacherModel &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.google, google) || other.google == google) &&
            (identical(other.facebook, facebook) ||
                other.facebook == facebook) &&
            (identical(other.apple, apple) || other.apple == apple) &&
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
            (identical(other.phoneAuth, phoneAuth) ||
                other.phoneAuth == phoneAuth) &&
            (identical(other.isPhoneAuthActivated, isPhoneAuthActivated) ||
                other.isPhoneAuthActivated == isPhoneAuthActivated) &&
            (identical(other.studySchedule, studySchedule) ||
                other.studySchedule == studySchedule) &&
            (identical(other.canSendMessage, canSendMessage) ||
                other.canSendMessage == canSendMessage) &&
            (identical(other.isPublicRecord, isPublicRecord) ||
                other.isPublicRecord == isPublicRecord) &&
            (identical(other.caredByStaffId, caredByStaffId) ||
                other.caredByStaffId == caredByStaffId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.studentGroupId, studentGroupId) ||
                other.studentGroupId == studentGroupId) &&
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
            (identical(other.isNative, isNative) ||
                other.isNative == isNative) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        level,
        email,
        google,
        facebook,
        apple,
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
        phoneAuth,
        isPhoneAuthActivated,
        studySchedule,
        canSendMessage,
        isPublicRecord,
        caredByStaffId,
        createdAt,
        updatedAt,
        deletedAt,
        studentGroupId,
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
        isNative,
        price,
        isOnline,
        isFavorite
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TeacherModelCopyWith<_$_TeacherModel> get copyWith =>
      __$$_TeacherModelCopyWithImpl<_$_TeacherModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeacherModelToJson(
      this,
    );
  }
}

abstract class _TeacherModel implements TeacherModel {
  const factory _TeacherModel(
      {final String? level,
      final String? email,
      final String? google,
      final String? facebook,
      final String? apple,
      final String avatar,
      final String? name,
      final String? country,
      final String? phone,
      final String? language,
      final String? birthday,
      final bool? requestPassword,
      final bool? isActivated,
      final String? isPhoneActivated,
      final String? requireNote,
      final int? timezone,
      final String? phoneAuth,
      final bool? isPhoneAuthActivated,
      final String? studySchedule,
      final bool? canSendMessage,
      final bool? isPublicRecord,
      final String? caredByStaffId,
      final String? createdAt,
      final String? updatedAt,
      final String? deletedAt,
      final String? studentGroupId,
      required final List<Feedback> feedbacks,
      final String? id,
      final String? userId,
      final String? video,
      final String? bio,
      final String? education,
      final String? experience,
      final String? profession,
      final String? accent,
      final String? targetStudent,
      final String? interests,
      final String? languages,
      final String? specialties,
      final String? resume,
      final double? rating,
      final bool? isNative,
      final int? price,
      final bool? isOnline,
      final bool? isFavorite}) = _$_TeacherModel;

  factory _TeacherModel.fromJson(Map<String, dynamic> json) =
      _$_TeacherModel.fromJson;

  @override
  String? get level;
  @override
  String? get email;
  @override
  String? get google;
  @override
  String? get facebook;
  @override
  String? get apple;
  @override
  String get avatar;
  @override
  String? get name;
  @override
  String? get country;
  @override
  String? get phone;
  @override
  String? get language;
  @override
  String? get birthday;
  @override
  bool? get requestPassword;
  @override
  bool? get isActivated;
  @override
  String? get isPhoneActivated;
  @override
  String? get requireNote;
  @override
  int? get timezone;
  @override
  String? get phoneAuth;
  @override
  bool? get isPhoneAuthActivated;
  @override
  String? get studySchedule;
  @override
  bool? get canSendMessage;
  @override
  bool? get isPublicRecord;
  @override
  String? get caredByStaffId;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  String? get deletedAt;
  @override
  String? get studentGroupId;
  @override
  List<Feedback> get feedbacks;
  @override
  String? get id;
  @override
  String? get userId;
  @override
  String? get video;
  @override
  String? get bio;
  @override
  String? get education;
  @override
  String? get experience;
  @override
  String? get profession;
  @override
  String? get accent;
  @override
  String? get targetStudent;
  @override
  String? get interests;
  @override
  String? get languages;
  @override
  String? get specialties;
  @override
  String? get resume;
  @override
  double? get rating;
  @override
  bool? get isNative;
  @override
  int? get price;
  @override
  bool? get isOnline;
  @override
  bool? get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$$_TeacherModelCopyWith<_$_TeacherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Feedback _$FeedbackFromJson(Map<String, dynamic> json) {
  return _Feedback.fromJson(json);
}

/// @nodoc
mixin _$Feedback {
  String get id => throw _privateConstructorUsedError;
  String? get bookingId => throw _privateConstructorUsedError;
  String? get firstId => throw _privateConstructorUsedError;
  String? get secondId => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  FirstInfo? get firstInfo => throw _privateConstructorUsedError;

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
      String? bookingId,
      String? firstId,
      String? secondId,
      int rating,
      String? content,
      String? createdAt,
      String? updatedAt,
      FirstInfo? firstInfo});

  $FirstInfoCopyWith<$Res>? get firstInfo;
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
    Object? bookingId = freezed,
    Object? firstId = freezed,
    Object? secondId = freezed,
    Object? rating = null,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? firstInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      bookingId: freezed == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstId: freezed == firstId
          ? _value.firstId
          : firstId // ignore: cast_nullable_to_non_nullable
              as String?,
      secondId: freezed == secondId
          ? _value.secondId
          : secondId // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      firstInfo: freezed == firstInfo
          ? _value.firstInfo
          : firstInfo // ignore: cast_nullable_to_non_nullable
              as FirstInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FirstInfoCopyWith<$Res>? get firstInfo {
    if (_value.firstInfo == null) {
      return null;
    }

    return $FirstInfoCopyWith<$Res>(_value.firstInfo!, (value) {
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
      String? bookingId,
      String? firstId,
      String? secondId,
      int rating,
      String? content,
      String? createdAt,
      String? updatedAt,
      FirstInfo? firstInfo});

  @override
  $FirstInfoCopyWith<$Res>? get firstInfo;
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
    Object? bookingId = freezed,
    Object? firstId = freezed,
    Object? secondId = freezed,
    Object? rating = null,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? firstInfo = freezed,
  }) {
    return _then(_$_Feedback(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      bookingId: freezed == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstId: freezed == firstId
          ? _value.firstId
          : firstId // ignore: cast_nullable_to_non_nullable
              as String?,
      secondId: freezed == secondId
          ? _value.secondId
          : secondId // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      firstInfo: freezed == firstInfo
          ? _value.firstInfo
          : firstInfo // ignore: cast_nullable_to_non_nullable
              as FirstInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Feedback implements _Feedback {
  const _$_Feedback(
      {required this.id,
      this.bookingId,
      this.firstId,
      this.secondId,
      required this.rating,
      this.content,
      this.createdAt,
      this.updatedAt,
      this.firstInfo});

  factory _$_Feedback.fromJson(Map<String, dynamic> json) =>
      _$$_FeedbackFromJson(json);

  @override
  final String id;
  @override
  final String? bookingId;
  @override
  final String? firstId;
  @override
  final String? secondId;
  @override
  final int rating;
  @override
  final String? content;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final FirstInfo? firstInfo;

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
      final String? bookingId,
      final String? firstId,
      final String? secondId,
      required final int rating,
      final String? content,
      final String? createdAt,
      final String? updatedAt,
      final FirstInfo? firstInfo}) = _$_Feedback;

  factory _Feedback.fromJson(Map<String, dynamic> json) = _$_Feedback.fromJson;

  @override
  String get id;
  @override
  String? get bookingId;
  @override
  String? get firstId;
  @override
  String? get secondId;
  @override
  int get rating;
  @override
  String? get content;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  FirstInfo? get firstInfo;
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
  String? get level => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get google => throw _privateConstructorUsedError;
  String? get facebook => throw _privateConstructorUsedError;
  String? get apple => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get birthday => throw _privateConstructorUsedError;
  bool? get requestPassword => throw _privateConstructorUsedError;
  bool? get isActivated => throw _privateConstructorUsedError;
  bool? get isPhoneActivated => throw _privateConstructorUsedError;
  String? get requireNote => throw _privateConstructorUsedError;
  int? get timezone => throw _privateConstructorUsedError;
  String? get phoneAuth => throw _privateConstructorUsedError;
  bool? get isPhoneAuthActivated => throw _privateConstructorUsedError;
  String? get studySchedule => throw _privateConstructorUsedError;
  bool? get canSendMessage => throw _privateConstructorUsedError;
  bool? get isPublicRecord => throw _privateConstructorUsedError;
  String? get caredByStaffId => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get deletedAt => throw _privateConstructorUsedError;
  String? get studentGroupId => throw _privateConstructorUsedError;

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
      {String? level,
      String? email,
      String? google,
      String? facebook,
      String? apple,
      String? avatar,
      String? name,
      String? country,
      String? phone,
      String? language,
      String? birthday,
      bool? requestPassword,
      bool? isActivated,
      bool? isPhoneActivated,
      String? requireNote,
      int? timezone,
      String? phoneAuth,
      bool? isPhoneAuthActivated,
      String? studySchedule,
      bool? canSendMessage,
      bool? isPublicRecord,
      String? caredByStaffId,
      String? createdAt,
      String? updatedAt,
      String? deletedAt,
      String? studentGroupId});
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
    Object? level = freezed,
    Object? email = freezed,
    Object? google = freezed,
    Object? facebook = freezed,
    Object? apple = freezed,
    Object? avatar = freezed,
    Object? name = freezed,
    Object? country = freezed,
    Object? phone = freezed,
    Object? language = freezed,
    Object? birthday = freezed,
    Object? requestPassword = freezed,
    Object? isActivated = freezed,
    Object? isPhoneActivated = freezed,
    Object? requireNote = freezed,
    Object? timezone = freezed,
    Object? phoneAuth = freezed,
    Object? isPhoneAuthActivated = freezed,
    Object? studySchedule = freezed,
    Object? canSendMessage = freezed,
    Object? isPublicRecord = freezed,
    Object? caredByStaffId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? studentGroupId = freezed,
  }) {
    return _then(_value.copyWith(
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      google: freezed == google
          ? _value.google
          : google // ignore: cast_nullable_to_non_nullable
              as String?,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      apple: freezed == apple
          ? _value.apple
          : apple // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      requestPassword: freezed == requestPassword
          ? _value.requestPassword
          : requestPassword // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActivated: freezed == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPhoneActivated: freezed == isPhoneActivated
          ? _value.isPhoneActivated
          : isPhoneActivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      requireNote: freezed == requireNote
          ? _value.requireNote
          : requireNote // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int?,
      phoneAuth: freezed == phoneAuth
          ? _value.phoneAuth
          : phoneAuth // ignore: cast_nullable_to_non_nullable
              as String?,
      isPhoneAuthActivated: freezed == isPhoneAuthActivated
          ? _value.isPhoneAuthActivated
          : isPhoneAuthActivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      studySchedule: freezed == studySchedule
          ? _value.studySchedule
          : studySchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      canSendMessage: freezed == canSendMessage
          ? _value.canSendMessage
          : canSendMessage // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPublicRecord: freezed == isPublicRecord
          ? _value.isPublicRecord
          : isPublicRecord // ignore: cast_nullable_to_non_nullable
              as bool?,
      caredByStaffId: freezed == caredByStaffId
          ? _value.caredByStaffId
          : caredByStaffId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      studentGroupId: freezed == studentGroupId
          ? _value.studentGroupId
          : studentGroupId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {String? level,
      String? email,
      String? google,
      String? facebook,
      String? apple,
      String? avatar,
      String? name,
      String? country,
      String? phone,
      String? language,
      String? birthday,
      bool? requestPassword,
      bool? isActivated,
      bool? isPhoneActivated,
      String? requireNote,
      int? timezone,
      String? phoneAuth,
      bool? isPhoneAuthActivated,
      String? studySchedule,
      bool? canSendMessage,
      bool? isPublicRecord,
      String? caredByStaffId,
      String? createdAt,
      String? updatedAt,
      String? deletedAt,
      String? studentGroupId});
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
    Object? level = freezed,
    Object? email = freezed,
    Object? google = freezed,
    Object? facebook = freezed,
    Object? apple = freezed,
    Object? avatar = freezed,
    Object? name = freezed,
    Object? country = freezed,
    Object? phone = freezed,
    Object? language = freezed,
    Object? birthday = freezed,
    Object? requestPassword = freezed,
    Object? isActivated = freezed,
    Object? isPhoneActivated = freezed,
    Object? requireNote = freezed,
    Object? timezone = freezed,
    Object? phoneAuth = freezed,
    Object? isPhoneAuthActivated = freezed,
    Object? studySchedule = freezed,
    Object? canSendMessage = freezed,
    Object? isPublicRecord = freezed,
    Object? caredByStaffId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? studentGroupId = freezed,
  }) {
    return _then(_$_FirstInfo(
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      google: freezed == google
          ? _value.google
          : google // ignore: cast_nullable_to_non_nullable
              as String?,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      apple: freezed == apple
          ? _value.apple
          : apple // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      requestPassword: freezed == requestPassword
          ? _value.requestPassword
          : requestPassword // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActivated: freezed == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPhoneActivated: freezed == isPhoneActivated
          ? _value.isPhoneActivated
          : isPhoneActivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      requireNote: freezed == requireNote
          ? _value.requireNote
          : requireNote // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int?,
      phoneAuth: freezed == phoneAuth
          ? _value.phoneAuth
          : phoneAuth // ignore: cast_nullable_to_non_nullable
              as String?,
      isPhoneAuthActivated: freezed == isPhoneAuthActivated
          ? _value.isPhoneAuthActivated
          : isPhoneAuthActivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      studySchedule: freezed == studySchedule
          ? _value.studySchedule
          : studySchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      canSendMessage: freezed == canSendMessage
          ? _value.canSendMessage
          : canSendMessage // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPublicRecord: freezed == isPublicRecord
          ? _value.isPublicRecord
          : isPublicRecord // ignore: cast_nullable_to_non_nullable
              as bool?,
      caredByStaffId: freezed == caredByStaffId
          ? _value.caredByStaffId
          : caredByStaffId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      studentGroupId: freezed == studentGroupId
          ? _value.studentGroupId
          : studentGroupId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FirstInfo implements _FirstInfo {
  const _$_FirstInfo(
      {this.level,
      this.email,
      this.google,
      this.facebook,
      this.apple,
      this.avatar,
      this.name,
      this.country,
      this.phone,
      this.language,
      this.birthday,
      this.requestPassword,
      this.isActivated,
      this.isPhoneActivated,
      this.requireNote,
      this.timezone,
      this.phoneAuth,
      this.isPhoneAuthActivated,
      this.studySchedule,
      this.canSendMessage,
      this.isPublicRecord,
      this.caredByStaffId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.studentGroupId});

  factory _$_FirstInfo.fromJson(Map<String, dynamic> json) =>
      _$$_FirstInfoFromJson(json);

  @override
  final String? level;
  @override
  final String? email;
  @override
  final String? google;
  @override
  final String? facebook;
  @override
  final String? apple;
  @override
  final String? avatar;
  @override
  final String? name;
  @override
  final String? country;
  @override
  final String? phone;
  @override
  final String? language;
  @override
  final String? birthday;
  @override
  final bool? requestPassword;
  @override
  final bool? isActivated;
  @override
  final bool? isPhoneActivated;
  @override
  final String? requireNote;
  @override
  final int? timezone;
  @override
  final String? phoneAuth;
  @override
  final bool? isPhoneAuthActivated;
  @override
  final String? studySchedule;
  @override
  final bool? canSendMessage;
  @override
  final bool? isPublicRecord;
  @override
  final String? caredByStaffId;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? deletedAt;
  @override
  final String? studentGroupId;

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
            (identical(other.apple, apple) || other.apple == apple) &&
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
            (identical(other.phoneAuth, phoneAuth) ||
                other.phoneAuth == phoneAuth) &&
            (identical(other.isPhoneAuthActivated, isPhoneAuthActivated) ||
                other.isPhoneAuthActivated == isPhoneAuthActivated) &&
            (identical(other.studySchedule, studySchedule) ||
                other.studySchedule == studySchedule) &&
            (identical(other.canSendMessage, canSendMessage) ||
                other.canSendMessage == canSendMessage) &&
            (identical(other.isPublicRecord, isPublicRecord) ||
                other.isPublicRecord == isPublicRecord) &&
            (identical(other.caredByStaffId, caredByStaffId) ||
                other.caredByStaffId == caredByStaffId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.studentGroupId, studentGroupId) ||
                other.studentGroupId == studentGroupId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        level,
        email,
        google,
        facebook,
        apple,
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
        phoneAuth,
        isPhoneAuthActivated,
        studySchedule,
        canSendMessage,
        isPublicRecord,
        caredByStaffId,
        createdAt,
        updatedAt,
        deletedAt,
        studentGroupId
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
      {final String? level,
      final String? email,
      final String? google,
      final String? facebook,
      final String? apple,
      final String? avatar,
      final String? name,
      final String? country,
      final String? phone,
      final String? language,
      final String? birthday,
      final bool? requestPassword,
      final bool? isActivated,
      final bool? isPhoneActivated,
      final String? requireNote,
      final int? timezone,
      final String? phoneAuth,
      final bool? isPhoneAuthActivated,
      final String? studySchedule,
      final bool? canSendMessage,
      final bool? isPublicRecord,
      final String? caredByStaffId,
      final String? createdAt,
      final String? updatedAt,
      final String? deletedAt,
      final String? studentGroupId}) = _$_FirstInfo;

  factory _FirstInfo.fromJson(Map<String, dynamic> json) =
      _$_FirstInfo.fromJson;

  @override
  String? get level;
  @override
  String? get email;
  @override
  String? get google;
  @override
  String? get facebook;
  @override
  String? get apple;
  @override
  String? get avatar;
  @override
  String? get name;
  @override
  String? get country;
  @override
  String? get phone;
  @override
  String? get language;
  @override
  String? get birthday;
  @override
  bool? get requestPassword;
  @override
  bool? get isActivated;
  @override
  bool? get isPhoneActivated;
  @override
  String? get requireNote;
  @override
  int? get timezone;
  @override
  String? get phoneAuth;
  @override
  bool? get isPhoneAuthActivated;
  @override
  String? get studySchedule;
  @override
  bool? get canSendMessage;
  @override
  bool? get isPublicRecord;
  @override
  String? get caredByStaffId;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  String? get deletedAt;
  @override
  String? get studentGroupId;
  @override
  @JsonKey(ignore: true)
  _$$_FirstInfoCopyWith<_$_FirstInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
