// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_schedule_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TeacherScheduleResult _$TeacherScheduleResultFromJson(
    Map<String, dynamic> json) {
  return _TeacherScheduleResult.fromJson(json);
}

/// @nodoc
mixin _$TeacherScheduleResult {
  String? get message => throw _privateConstructorUsedError;
  List<ScheduleOfTutor>? get scheduleOfTutor =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeacherScheduleResultCopyWith<TeacherScheduleResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherScheduleResultCopyWith<$Res> {
  factory $TeacherScheduleResultCopyWith(TeacherScheduleResult value,
          $Res Function(TeacherScheduleResult) then) =
      _$TeacherScheduleResultCopyWithImpl<$Res, TeacherScheduleResult>;
  @useResult
  $Res call({String? message, List<ScheduleOfTutor>? scheduleOfTutor});
}

/// @nodoc
class _$TeacherScheduleResultCopyWithImpl<$Res,
        $Val extends TeacherScheduleResult>
    implements $TeacherScheduleResultCopyWith<$Res> {
  _$TeacherScheduleResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? scheduleOfTutor = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduleOfTutor: freezed == scheduleOfTutor
          ? _value.scheduleOfTutor
          : scheduleOfTutor // ignore: cast_nullable_to_non_nullable
              as List<ScheduleOfTutor>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TeacherScheduleResultCopyWith<$Res>
    implements $TeacherScheduleResultCopyWith<$Res> {
  factory _$$_TeacherScheduleResultCopyWith(_$_TeacherScheduleResult value,
          $Res Function(_$_TeacherScheduleResult) then) =
      __$$_TeacherScheduleResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, List<ScheduleOfTutor>? scheduleOfTutor});
}

/// @nodoc
class __$$_TeacherScheduleResultCopyWithImpl<$Res>
    extends _$TeacherScheduleResultCopyWithImpl<$Res, _$_TeacherScheduleResult>
    implements _$$_TeacherScheduleResultCopyWith<$Res> {
  __$$_TeacherScheduleResultCopyWithImpl(_$_TeacherScheduleResult _value,
      $Res Function(_$_TeacherScheduleResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? scheduleOfTutor = freezed,
  }) {
    return _then(_$_TeacherScheduleResult(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduleOfTutor: freezed == scheduleOfTutor
          ? _value._scheduleOfTutor
          : scheduleOfTutor // ignore: cast_nullable_to_non_nullable
              as List<ScheduleOfTutor>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TeacherScheduleResult implements _TeacherScheduleResult {
  const _$_TeacherScheduleResult(
      {this.message, final List<ScheduleOfTutor>? scheduleOfTutor})
      : _scheduleOfTutor = scheduleOfTutor;

  factory _$_TeacherScheduleResult.fromJson(Map<String, dynamic> json) =>
      _$$_TeacherScheduleResultFromJson(json);

  @override
  final String? message;
  final List<ScheduleOfTutor>? _scheduleOfTutor;
  @override
  List<ScheduleOfTutor>? get scheduleOfTutor {
    final value = _scheduleOfTutor;
    if (value == null) return null;
    if (_scheduleOfTutor is EqualUnmodifiableListView) return _scheduleOfTutor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TeacherScheduleResult(message: $message, scheduleOfTutor: $scheduleOfTutor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TeacherScheduleResult &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._scheduleOfTutor, _scheduleOfTutor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message,
      const DeepCollectionEquality().hash(_scheduleOfTutor));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TeacherScheduleResultCopyWith<_$_TeacherScheduleResult> get copyWith =>
      __$$_TeacherScheduleResultCopyWithImpl<_$_TeacherScheduleResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeacherScheduleResultToJson(
      this,
    );
  }
}

abstract class _TeacherScheduleResult implements TeacherScheduleResult {
  const factory _TeacherScheduleResult(
      {final String? message,
      final List<ScheduleOfTutor>? scheduleOfTutor}) = _$_TeacherScheduleResult;

  factory _TeacherScheduleResult.fromJson(Map<String, dynamic> json) =
      _$_TeacherScheduleResult.fromJson;

  @override
  String? get message;
  @override
  List<ScheduleOfTutor>? get scheduleOfTutor;
  @override
  @JsonKey(ignore: true)
  _$$_TeacherScheduleResultCopyWith<_$_TeacherScheduleResult> get copyWith =>
      throw _privateConstructorUsedError;
}

ScheduleOfTutor _$ScheduleOfTutorFromJson(Map<String, dynamic> json) {
  return _ScheduleOfTutor.fromJson(json);
}

/// @nodoc
mixin _$ScheduleOfTutor {
  String? get id => throw _privateConstructorUsedError;
  String? get tutorId => throw _privateConstructorUsedError;
  String? get startTime => throw _privateConstructorUsedError;
  String? get endTime => throw _privateConstructorUsedError;
  int? get startTimestamp => throw _privateConstructorUsedError;
  int? get endTimestamp => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  bool? get isBooked => throw _privateConstructorUsedError;
  List<ScheduleDetail>? get scheduleDetails =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleOfTutorCopyWith<ScheduleOfTutor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleOfTutorCopyWith<$Res> {
  factory $ScheduleOfTutorCopyWith(
          ScheduleOfTutor value, $Res Function(ScheduleOfTutor) then) =
      _$ScheduleOfTutorCopyWithImpl<$Res, ScheduleOfTutor>;
  @useResult
  $Res call(
      {String? id,
      String? tutorId,
      String? startTime,
      String? endTime,
      int? startTimestamp,
      int? endTimestamp,
      DateTime? createdAt,
      bool? isBooked,
      List<ScheduleDetail>? scheduleDetails});
}

/// @nodoc
class _$ScheduleOfTutorCopyWithImpl<$Res, $Val extends ScheduleOfTutor>
    implements $ScheduleOfTutorCopyWith<$Res> {
  _$ScheduleOfTutorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tutorId = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? startTimestamp = freezed,
    Object? endTimestamp = freezed,
    Object? createdAt = freezed,
    Object? isBooked = freezed,
    Object? scheduleDetails = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      tutorId: freezed == tutorId
          ? _value.tutorId
          : tutorId // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      startTimestamp: freezed == startTimestamp
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      endTimestamp: freezed == endTimestamp
          ? _value.endTimestamp
          : endTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isBooked: freezed == isBooked
          ? _value.isBooked
          : isBooked // ignore: cast_nullable_to_non_nullable
              as bool?,
      scheduleDetails: freezed == scheduleDetails
          ? _value.scheduleDetails
          : scheduleDetails // ignore: cast_nullable_to_non_nullable
              as List<ScheduleDetail>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScheduleOfTutorCopyWith<$Res>
    implements $ScheduleOfTutorCopyWith<$Res> {
  factory _$$_ScheduleOfTutorCopyWith(
          _$_ScheduleOfTutor value, $Res Function(_$_ScheduleOfTutor) then) =
      __$$_ScheduleOfTutorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? tutorId,
      String? startTime,
      String? endTime,
      int? startTimestamp,
      int? endTimestamp,
      DateTime? createdAt,
      bool? isBooked,
      List<ScheduleDetail>? scheduleDetails});
}

/// @nodoc
class __$$_ScheduleOfTutorCopyWithImpl<$Res>
    extends _$ScheduleOfTutorCopyWithImpl<$Res, _$_ScheduleOfTutor>
    implements _$$_ScheduleOfTutorCopyWith<$Res> {
  __$$_ScheduleOfTutorCopyWithImpl(
      _$_ScheduleOfTutor _value, $Res Function(_$_ScheduleOfTutor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tutorId = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? startTimestamp = freezed,
    Object? endTimestamp = freezed,
    Object? createdAt = freezed,
    Object? isBooked = freezed,
    Object? scheduleDetails = freezed,
  }) {
    return _then(_$_ScheduleOfTutor(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      tutorId: freezed == tutorId
          ? _value.tutorId
          : tutorId // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      startTimestamp: freezed == startTimestamp
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      endTimestamp: freezed == endTimestamp
          ? _value.endTimestamp
          : endTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isBooked: freezed == isBooked
          ? _value.isBooked
          : isBooked // ignore: cast_nullable_to_non_nullable
              as bool?,
      scheduleDetails: freezed == scheduleDetails
          ? _value._scheduleDetails
          : scheduleDetails // ignore: cast_nullable_to_non_nullable
              as List<ScheduleDetail>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleOfTutor implements _ScheduleOfTutor {
  const _$_ScheduleOfTutor(
      {this.id,
      this.tutorId,
      this.startTime,
      this.endTime,
      this.startTimestamp,
      this.endTimestamp,
      this.createdAt,
      this.isBooked,
      final List<ScheduleDetail>? scheduleDetails})
      : _scheduleDetails = scheduleDetails;

  factory _$_ScheduleOfTutor.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleOfTutorFromJson(json);

  @override
  final String? id;
  @override
  final String? tutorId;
  @override
  final String? startTime;
  @override
  final String? endTime;
  @override
  final int? startTimestamp;
  @override
  final int? endTimestamp;
  @override
  final DateTime? createdAt;
  @override
  final bool? isBooked;
  final List<ScheduleDetail>? _scheduleDetails;
  @override
  List<ScheduleDetail>? get scheduleDetails {
    final value = _scheduleDetails;
    if (value == null) return null;
    if (_scheduleDetails is EqualUnmodifiableListView) return _scheduleDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ScheduleOfTutor(id: $id, tutorId: $tutorId, startTime: $startTime, endTime: $endTime, startTimestamp: $startTimestamp, endTimestamp: $endTimestamp, createdAt: $createdAt, isBooked: $isBooked, scheduleDetails: $scheduleDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleOfTutor &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tutorId, tutorId) || other.tutorId == tutorId) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.startTimestamp, startTimestamp) ||
                other.startTimestamp == startTimestamp) &&
            (identical(other.endTimestamp, endTimestamp) ||
                other.endTimestamp == endTimestamp) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isBooked, isBooked) ||
                other.isBooked == isBooked) &&
            const DeepCollectionEquality()
                .equals(other._scheduleDetails, _scheduleDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      tutorId,
      startTime,
      endTime,
      startTimestamp,
      endTimestamp,
      createdAt,
      isBooked,
      const DeepCollectionEquality().hash(_scheduleDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleOfTutorCopyWith<_$_ScheduleOfTutor> get copyWith =>
      __$$_ScheduleOfTutorCopyWithImpl<_$_ScheduleOfTutor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleOfTutorToJson(
      this,
    );
  }
}

abstract class _ScheduleOfTutor implements ScheduleOfTutor {
  const factory _ScheduleOfTutor(
      {final String? id,
      final String? tutorId,
      final String? startTime,
      final String? endTime,
      final int? startTimestamp,
      final int? endTimestamp,
      final DateTime? createdAt,
      final bool? isBooked,
      final List<ScheduleDetail>? scheduleDetails}) = _$_ScheduleOfTutor;

  factory _ScheduleOfTutor.fromJson(Map<String, dynamic> json) =
      _$_ScheduleOfTutor.fromJson;

  @override
  String? get id;
  @override
  String? get tutorId;
  @override
  String? get startTime;
  @override
  String? get endTime;
  @override
  int? get startTimestamp;
  @override
  int? get endTimestamp;
  @override
  DateTime? get createdAt;
  @override
  bool? get isBooked;
  @override
  List<ScheduleDetail>? get scheduleDetails;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleOfTutorCopyWith<_$_ScheduleOfTutor> get copyWith =>
      throw _privateConstructorUsedError;
}

ScheduleDetail _$ScheduleDetailFromJson(Map<String, dynamic> json) {
  return _ScheduleDetail.fromJson(json);
}

/// @nodoc
mixin _$ScheduleDetail {
  int? get startPeriodTimestamp => throw _privateConstructorUsedError;
  int? get endPeriodTimestamp => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get scheduleId => throw _privateConstructorUsedError;
  String? get startPeriod => throw _privateConstructorUsedError;
  String? get endPeriod => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  List<dynamic>? get bookingInfo => throw _privateConstructorUsedError;
  bool? get isBooked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleDetailCopyWith<ScheduleDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleDetailCopyWith<$Res> {
  factory $ScheduleDetailCopyWith(
          ScheduleDetail value, $Res Function(ScheduleDetail) then) =
      _$ScheduleDetailCopyWithImpl<$Res, ScheduleDetail>;
  @useResult
  $Res call(
      {int? startPeriodTimestamp,
      int? endPeriodTimestamp,
      String? id,
      String? scheduleId,
      String? startPeriod,
      String? endPeriod,
      DateTime? createdAt,
      DateTime? updatedAt,
      List<dynamic>? bookingInfo,
      bool? isBooked});
}

/// @nodoc
class _$ScheduleDetailCopyWithImpl<$Res, $Val extends ScheduleDetail>
    implements $ScheduleDetailCopyWith<$Res> {
  _$ScheduleDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startPeriodTimestamp = freezed,
    Object? endPeriodTimestamp = freezed,
    Object? id = freezed,
    Object? scheduleId = freezed,
    Object? startPeriod = freezed,
    Object? endPeriod = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? bookingInfo = freezed,
    Object? isBooked = freezed,
  }) {
    return _then(_value.copyWith(
      startPeriodTimestamp: freezed == startPeriodTimestamp
          ? _value.startPeriodTimestamp
          : startPeriodTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      endPeriodTimestamp: freezed == endPeriodTimestamp
          ? _value.endPeriodTimestamp
          : endPeriodTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduleId: freezed == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as String?,
      startPeriod: freezed == startPeriod
          ? _value.startPeriod
          : startPeriod // ignore: cast_nullable_to_non_nullable
              as String?,
      endPeriod: freezed == endPeriod
          ? _value.endPeriod
          : endPeriod // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bookingInfo: freezed == bookingInfo
          ? _value.bookingInfo
          : bookingInfo // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      isBooked: freezed == isBooked
          ? _value.isBooked
          : isBooked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScheduleDetailCopyWith<$Res>
    implements $ScheduleDetailCopyWith<$Res> {
  factory _$$_ScheduleDetailCopyWith(
          _$_ScheduleDetail value, $Res Function(_$_ScheduleDetail) then) =
      __$$_ScheduleDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? startPeriodTimestamp,
      int? endPeriodTimestamp,
      String? id,
      String? scheduleId,
      String? startPeriod,
      String? endPeriod,
      DateTime? createdAt,
      DateTime? updatedAt,
      List<dynamic>? bookingInfo,
      bool? isBooked});
}

/// @nodoc
class __$$_ScheduleDetailCopyWithImpl<$Res>
    extends _$ScheduleDetailCopyWithImpl<$Res, _$_ScheduleDetail>
    implements _$$_ScheduleDetailCopyWith<$Res> {
  __$$_ScheduleDetailCopyWithImpl(
      _$_ScheduleDetail _value, $Res Function(_$_ScheduleDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startPeriodTimestamp = freezed,
    Object? endPeriodTimestamp = freezed,
    Object? id = freezed,
    Object? scheduleId = freezed,
    Object? startPeriod = freezed,
    Object? endPeriod = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? bookingInfo = freezed,
    Object? isBooked = freezed,
  }) {
    return _then(_$_ScheduleDetail(
      startPeriodTimestamp: freezed == startPeriodTimestamp
          ? _value.startPeriodTimestamp
          : startPeriodTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      endPeriodTimestamp: freezed == endPeriodTimestamp
          ? _value.endPeriodTimestamp
          : endPeriodTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduleId: freezed == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as String?,
      startPeriod: freezed == startPeriod
          ? _value.startPeriod
          : startPeriod // ignore: cast_nullable_to_non_nullable
              as String?,
      endPeriod: freezed == endPeriod
          ? _value.endPeriod
          : endPeriod // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bookingInfo: freezed == bookingInfo
          ? _value._bookingInfo
          : bookingInfo // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      isBooked: freezed == isBooked
          ? _value.isBooked
          : isBooked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleDetail implements _ScheduleDetail {
  const _$_ScheduleDetail(
      {this.startPeriodTimestamp,
      this.endPeriodTimestamp,
      this.id,
      this.scheduleId,
      this.startPeriod,
      this.endPeriod,
      this.createdAt,
      this.updatedAt,
      final List<dynamic>? bookingInfo,
      this.isBooked})
      : _bookingInfo = bookingInfo;

  factory _$_ScheduleDetail.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleDetailFromJson(json);

  @override
  final int? startPeriodTimestamp;
  @override
  final int? endPeriodTimestamp;
  @override
  final String? id;
  @override
  final String? scheduleId;
  @override
  final String? startPeriod;
  @override
  final String? endPeriod;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  final List<dynamic>? _bookingInfo;
  @override
  List<dynamic>? get bookingInfo {
    final value = _bookingInfo;
    if (value == null) return null;
    if (_bookingInfo is EqualUnmodifiableListView) return _bookingInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isBooked;

  @override
  String toString() {
    return 'ScheduleDetail(startPeriodTimestamp: $startPeriodTimestamp, endPeriodTimestamp: $endPeriodTimestamp, id: $id, scheduleId: $scheduleId, startPeriod: $startPeriod, endPeriod: $endPeriod, createdAt: $createdAt, updatedAt: $updatedAt, bookingInfo: $bookingInfo, isBooked: $isBooked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleDetail &&
            (identical(other.startPeriodTimestamp, startPeriodTimestamp) ||
                other.startPeriodTimestamp == startPeriodTimestamp) &&
            (identical(other.endPeriodTimestamp, endPeriodTimestamp) ||
                other.endPeriodTimestamp == endPeriodTimestamp) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.scheduleId, scheduleId) ||
                other.scheduleId == scheduleId) &&
            (identical(other.startPeriod, startPeriod) ||
                other.startPeriod == startPeriod) &&
            (identical(other.endPeriod, endPeriod) ||
                other.endPeriod == endPeriod) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._bookingInfo, _bookingInfo) &&
            (identical(other.isBooked, isBooked) ||
                other.isBooked == isBooked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      startPeriodTimestamp,
      endPeriodTimestamp,
      id,
      scheduleId,
      startPeriod,
      endPeriod,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_bookingInfo),
      isBooked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleDetailCopyWith<_$_ScheduleDetail> get copyWith =>
      __$$_ScheduleDetailCopyWithImpl<_$_ScheduleDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleDetailToJson(
      this,
    );
  }
}

abstract class _ScheduleDetail implements ScheduleDetail {
  const factory _ScheduleDetail(
      {final int? startPeriodTimestamp,
      final int? endPeriodTimestamp,
      final String? id,
      final String? scheduleId,
      final String? startPeriod,
      final String? endPeriod,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final List<dynamic>? bookingInfo,
      final bool? isBooked}) = _$_ScheduleDetail;

  factory _ScheduleDetail.fromJson(Map<String, dynamic> json) =
      _$_ScheduleDetail.fromJson;

  @override
  int? get startPeriodTimestamp;
  @override
  int? get endPeriodTimestamp;
  @override
  String? get id;
  @override
  String? get scheduleId;
  @override
  String? get startPeriod;
  @override
  String? get endPeriod;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  List<dynamic>? get bookingInfo;
  @override
  bool? get isBooked;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleDetailCopyWith<_$_ScheduleDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
