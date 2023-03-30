// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleListModel _$ScheduleListModelFromJson(Map<String, dynamic> json) {
  return _ScheduleListModel.fromJson(json);
}

/// @nodoc
mixin _$ScheduleListModel {
  String? get message => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleListModelCopyWith<ScheduleListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleListModelCopyWith<$Res> {
  factory $ScheduleListModelCopyWith(
          ScheduleListModel value, $Res Function(ScheduleListModel) then) =
      _$ScheduleListModelCopyWithImpl<$Res, ScheduleListModel>;
  @useResult
  $Res call({String? message, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ScheduleListModelCopyWithImpl<$Res, $Val extends ScheduleListModel>
    implements $ScheduleListModelCopyWith<$Res> {
  _$ScheduleListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ScheduleListModelCopyWith<$Res>
    implements $ScheduleListModelCopyWith<$Res> {
  factory _$$_ScheduleListModelCopyWith(_$_ScheduleListModel value,
          $Res Function(_$_ScheduleListModel) then) =
      __$$_ScheduleListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_ScheduleListModelCopyWithImpl<$Res>
    extends _$ScheduleListModelCopyWithImpl<$Res, _$_ScheduleListModel>
    implements _$$_ScheduleListModelCopyWith<$Res> {
  __$$_ScheduleListModelCopyWithImpl(
      _$_ScheduleListModel _value, $Res Function(_$_ScheduleListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ScheduleListModel(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleListModel implements _ScheduleListModel {
  const _$_ScheduleListModel({this.message, this.data});

  factory _$_ScheduleListModel.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleListModelFromJson(json);

  @override
  final String? message;
  @override
  final Data? data;

  @override
  String toString() {
    return 'ScheduleListModel(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleListModel &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleListModelCopyWith<_$_ScheduleListModel> get copyWith =>
      __$$_ScheduleListModelCopyWithImpl<_$_ScheduleListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleListModelToJson(
      this,
    );
  }
}

abstract class _ScheduleListModel implements ScheduleListModel {
  const factory _ScheduleListModel({final String? message, final Data? data}) =
      _$_ScheduleListModel;

  factory _ScheduleListModel.fromJson(Map<String, dynamic> json) =
      _$_ScheduleListModel.fromJson;

  @override
  String? get message;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleListModelCopyWith<_$_ScheduleListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  int? get count => throw _privateConstructorUsedError;
  List<ScheduleModel>? get rows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({int? count, List<ScheduleModel>? rows});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? rows = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      rows: freezed == rows
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<ScheduleModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count, List<ScheduleModel>? rows});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? rows = freezed,
  }) {
    return _then(_$_Data(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      rows: freezed == rows
          ? _value._rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<ScheduleModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data({this.count, final List<ScheduleModel>? rows}) : _rows = rows;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final int? count;
  final List<ScheduleModel>? _rows;
  @override
  List<ScheduleModel>? get rows {
    final value = _rows;
    if (value == null) return null;
    if (_rows is EqualUnmodifiableListView) return _rows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(count: $count, rows: $rows)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
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
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data({final int? count, final List<ScheduleModel>? rows}) =
      _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  int? get count;
  @override
  List<ScheduleModel>? get rows;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

ScheduleModel _$ScheduleModelFromJson(Map<String, dynamic> json) {
  return _ScheduleModel.fromJson(json);
}

/// @nodoc
mixin _$ScheduleModel {
  int? get createdAtTimeStamp => throw _privateConstructorUsedError;
  int? get updatedAtTimeStamp => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get scheduleDetailId => throw _privateConstructorUsedError;
  String? get tutorMeetingLink => throw _privateConstructorUsedError;
  String? get studentMeetingLink => throw _privateConstructorUsedError;
  String? get studentRequest => throw _privateConstructorUsedError;
  String? get tutorReview => throw _privateConstructorUsedError;
  int? get scoreByTutor => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get recordUrl => throw _privateConstructorUsedError;
  String? get cancelReasonId => throw _privateConstructorUsedError;
  String? get lessonPlanId => throw _privateConstructorUsedError;
  String? get cancelNote => throw _privateConstructorUsedError;
  String? get calendarId => throw _privateConstructorUsedError;
  bool? get isDeleted => throw _privateConstructorUsedError;
  ScheduleDetailInfo? get scheduleDetailInfo =>
      throw _privateConstructorUsedError;
  String? get classReview => throw _privateConstructorUsedError;
  bool? get showRecordUrl => throw _privateConstructorUsedError;
  List<String>? get studentMaterials => throw _privateConstructorUsedError;
  List<Feedback>? get feedbacks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleModelCopyWith<ScheduleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleModelCopyWith<$Res> {
  factory $ScheduleModelCopyWith(
          ScheduleModel value, $Res Function(ScheduleModel) then) =
      _$ScheduleModelCopyWithImpl<$Res, ScheduleModel>;
  @useResult
  $Res call(
      {int? createdAtTimeStamp,
      int? updatedAtTimeStamp,
      String? id,
      String? userId,
      String? scheduleDetailId,
      String? tutorMeetingLink,
      String? studentMeetingLink,
      String? studentRequest,
      String? tutorReview,
      int? scoreByTutor,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? recordUrl,
      String? cancelReasonId,
      String? lessonPlanId,
      String? cancelNote,
      String? calendarId,
      bool? isDeleted,
      ScheduleDetailInfo? scheduleDetailInfo,
      String? classReview,
      bool? showRecordUrl,
      List<String>? studentMaterials,
      List<Feedback>? feedbacks});

  $ScheduleDetailInfoCopyWith<$Res>? get scheduleDetailInfo;
}

/// @nodoc
class _$ScheduleModelCopyWithImpl<$Res, $Val extends ScheduleModel>
    implements $ScheduleModelCopyWith<$Res> {
  _$ScheduleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAtTimeStamp = freezed,
    Object? updatedAtTimeStamp = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? scheduleDetailId = freezed,
    Object? tutorMeetingLink = freezed,
    Object? studentMeetingLink = freezed,
    Object? studentRequest = freezed,
    Object? tutorReview = freezed,
    Object? scoreByTutor = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? recordUrl = freezed,
    Object? cancelReasonId = freezed,
    Object? lessonPlanId = freezed,
    Object? cancelNote = freezed,
    Object? calendarId = freezed,
    Object? isDeleted = freezed,
    Object? scheduleDetailInfo = freezed,
    Object? classReview = freezed,
    Object? showRecordUrl = freezed,
    Object? studentMaterials = freezed,
    Object? feedbacks = freezed,
  }) {
    return _then(_value.copyWith(
      createdAtTimeStamp: freezed == createdAtTimeStamp
          ? _value.createdAtTimeStamp
          : createdAtTimeStamp // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAtTimeStamp: freezed == updatedAtTimeStamp
          ? _value.updatedAtTimeStamp
          : updatedAtTimeStamp // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduleDetailId: freezed == scheduleDetailId
          ? _value.scheduleDetailId
          : scheduleDetailId // ignore: cast_nullable_to_non_nullable
              as String?,
      tutorMeetingLink: freezed == tutorMeetingLink
          ? _value.tutorMeetingLink
          : tutorMeetingLink // ignore: cast_nullable_to_non_nullable
              as String?,
      studentMeetingLink: freezed == studentMeetingLink
          ? _value.studentMeetingLink
          : studentMeetingLink // ignore: cast_nullable_to_non_nullable
              as String?,
      studentRequest: freezed == studentRequest
          ? _value.studentRequest
          : studentRequest // ignore: cast_nullable_to_non_nullable
              as String?,
      tutorReview: freezed == tutorReview
          ? _value.tutorReview
          : tutorReview // ignore: cast_nullable_to_non_nullable
              as String?,
      scoreByTutor: freezed == scoreByTutor
          ? _value.scoreByTutor
          : scoreByTutor // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      recordUrl: freezed == recordUrl
          ? _value.recordUrl
          : recordUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelReasonId: freezed == cancelReasonId
          ? _value.cancelReasonId
          : cancelReasonId // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonPlanId: freezed == lessonPlanId
          ? _value.lessonPlanId
          : lessonPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelNote: freezed == cancelNote
          ? _value.cancelNote
          : cancelNote // ignore: cast_nullable_to_non_nullable
              as String?,
      calendarId: freezed == calendarId
          ? _value.calendarId
          : calendarId // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      scheduleDetailInfo: freezed == scheduleDetailInfo
          ? _value.scheduleDetailInfo
          : scheduleDetailInfo // ignore: cast_nullable_to_non_nullable
              as ScheduleDetailInfo?,
      classReview: freezed == classReview
          ? _value.classReview
          : classReview // ignore: cast_nullable_to_non_nullable
              as String?,
      showRecordUrl: freezed == showRecordUrl
          ? _value.showRecordUrl
          : showRecordUrl // ignore: cast_nullable_to_non_nullable
              as bool?,
      studentMaterials: freezed == studentMaterials
          ? _value.studentMaterials
          : studentMaterials // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      feedbacks: freezed == feedbacks
          ? _value.feedbacks
          : feedbacks // ignore: cast_nullable_to_non_nullable
              as List<Feedback>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ScheduleDetailInfoCopyWith<$Res>? get scheduleDetailInfo {
    if (_value.scheduleDetailInfo == null) {
      return null;
    }

    return $ScheduleDetailInfoCopyWith<$Res>(_value.scheduleDetailInfo!,
        (value) {
      return _then(_value.copyWith(scheduleDetailInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ScheduleModelCopyWith<$Res>
    implements $ScheduleModelCopyWith<$Res> {
  factory _$$_ScheduleModelCopyWith(
          _$_ScheduleModel value, $Res Function(_$_ScheduleModel) then) =
      __$$_ScheduleModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? createdAtTimeStamp,
      int? updatedAtTimeStamp,
      String? id,
      String? userId,
      String? scheduleDetailId,
      String? tutorMeetingLink,
      String? studentMeetingLink,
      String? studentRequest,
      String? tutorReview,
      int? scoreByTutor,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? recordUrl,
      String? cancelReasonId,
      String? lessonPlanId,
      String? cancelNote,
      String? calendarId,
      bool? isDeleted,
      ScheduleDetailInfo? scheduleDetailInfo,
      String? classReview,
      bool? showRecordUrl,
      List<String>? studentMaterials,
      List<Feedback>? feedbacks});

  @override
  $ScheduleDetailInfoCopyWith<$Res>? get scheduleDetailInfo;
}

/// @nodoc
class __$$_ScheduleModelCopyWithImpl<$Res>
    extends _$ScheduleModelCopyWithImpl<$Res, _$_ScheduleModel>
    implements _$$_ScheduleModelCopyWith<$Res> {
  __$$_ScheduleModelCopyWithImpl(
      _$_ScheduleModel _value, $Res Function(_$_ScheduleModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAtTimeStamp = freezed,
    Object? updatedAtTimeStamp = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? scheduleDetailId = freezed,
    Object? tutorMeetingLink = freezed,
    Object? studentMeetingLink = freezed,
    Object? studentRequest = freezed,
    Object? tutorReview = freezed,
    Object? scoreByTutor = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? recordUrl = freezed,
    Object? cancelReasonId = freezed,
    Object? lessonPlanId = freezed,
    Object? cancelNote = freezed,
    Object? calendarId = freezed,
    Object? isDeleted = freezed,
    Object? scheduleDetailInfo = freezed,
    Object? classReview = freezed,
    Object? showRecordUrl = freezed,
    Object? studentMaterials = freezed,
    Object? feedbacks = freezed,
  }) {
    return _then(_$_ScheduleModel(
      createdAtTimeStamp: freezed == createdAtTimeStamp
          ? _value.createdAtTimeStamp
          : createdAtTimeStamp // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAtTimeStamp: freezed == updatedAtTimeStamp
          ? _value.updatedAtTimeStamp
          : updatedAtTimeStamp // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduleDetailId: freezed == scheduleDetailId
          ? _value.scheduleDetailId
          : scheduleDetailId // ignore: cast_nullable_to_non_nullable
              as String?,
      tutorMeetingLink: freezed == tutorMeetingLink
          ? _value.tutorMeetingLink
          : tutorMeetingLink // ignore: cast_nullable_to_non_nullable
              as String?,
      studentMeetingLink: freezed == studentMeetingLink
          ? _value.studentMeetingLink
          : studentMeetingLink // ignore: cast_nullable_to_non_nullable
              as String?,
      studentRequest: freezed == studentRequest
          ? _value.studentRequest
          : studentRequest // ignore: cast_nullable_to_non_nullable
              as String?,
      tutorReview: freezed == tutorReview
          ? _value.tutorReview
          : tutorReview // ignore: cast_nullable_to_non_nullable
              as String?,
      scoreByTutor: freezed == scoreByTutor
          ? _value.scoreByTutor
          : scoreByTutor // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      recordUrl: freezed == recordUrl
          ? _value.recordUrl
          : recordUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelReasonId: freezed == cancelReasonId
          ? _value.cancelReasonId
          : cancelReasonId // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonPlanId: freezed == lessonPlanId
          ? _value.lessonPlanId
          : lessonPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelNote: freezed == cancelNote
          ? _value.cancelNote
          : cancelNote // ignore: cast_nullable_to_non_nullable
              as String?,
      calendarId: freezed == calendarId
          ? _value.calendarId
          : calendarId // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      scheduleDetailInfo: freezed == scheduleDetailInfo
          ? _value.scheduleDetailInfo
          : scheduleDetailInfo // ignore: cast_nullable_to_non_nullable
              as ScheduleDetailInfo?,
      classReview: freezed == classReview
          ? _value.classReview
          : classReview // ignore: cast_nullable_to_non_nullable
              as String?,
      showRecordUrl: freezed == showRecordUrl
          ? _value.showRecordUrl
          : showRecordUrl // ignore: cast_nullable_to_non_nullable
              as bool?,
      studentMaterials: freezed == studentMaterials
          ? _value._studentMaterials
          : studentMaterials // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      feedbacks: freezed == feedbacks
          ? _value._feedbacks
          : feedbacks // ignore: cast_nullable_to_non_nullable
              as List<Feedback>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleModel implements _ScheduleModel {
  const _$_ScheduleModel(
      {this.createdAtTimeStamp,
      this.updatedAtTimeStamp,
      this.id,
      this.userId,
      this.scheduleDetailId,
      this.tutorMeetingLink,
      this.studentMeetingLink,
      this.studentRequest,
      this.tutorReview,
      this.scoreByTutor,
      this.createdAt,
      this.updatedAt,
      this.recordUrl,
      this.cancelReasonId,
      this.lessonPlanId,
      this.cancelNote,
      this.calendarId,
      this.isDeleted,
      this.scheduleDetailInfo,
      this.classReview,
      this.showRecordUrl,
      final List<String>? studentMaterials,
      final List<Feedback>? feedbacks})
      : _studentMaterials = studentMaterials,
        _feedbacks = feedbacks;

  factory _$_ScheduleModel.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleModelFromJson(json);

  @override
  final int? createdAtTimeStamp;
  @override
  final int? updatedAtTimeStamp;
  @override
  final String? id;
  @override
  final String? userId;
  @override
  final String? scheduleDetailId;
  @override
  final String? tutorMeetingLink;
  @override
  final String? studentMeetingLink;
  @override
  final String? studentRequest;
  @override
  final String? tutorReview;
  @override
  final int? scoreByTutor;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? recordUrl;
  @override
  final String? cancelReasonId;
  @override
  final String? lessonPlanId;
  @override
  final String? cancelNote;
  @override
  final String? calendarId;
  @override
  final bool? isDeleted;
  @override
  final ScheduleDetailInfo? scheduleDetailInfo;
  @override
  final String? classReview;
  @override
  final bool? showRecordUrl;
  final List<String>? _studentMaterials;
  @override
  List<String>? get studentMaterials {
    final value = _studentMaterials;
    if (value == null) return null;
    if (_studentMaterials is EqualUnmodifiableListView)
      return _studentMaterials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Feedback>? _feedbacks;
  @override
  List<Feedback>? get feedbacks {
    final value = _feedbacks;
    if (value == null) return null;
    if (_feedbacks is EqualUnmodifiableListView) return _feedbacks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ScheduleModel(createdAtTimeStamp: $createdAtTimeStamp, updatedAtTimeStamp: $updatedAtTimeStamp, id: $id, userId: $userId, scheduleDetailId: $scheduleDetailId, tutorMeetingLink: $tutorMeetingLink, studentMeetingLink: $studentMeetingLink, studentRequest: $studentRequest, tutorReview: $tutorReview, scoreByTutor: $scoreByTutor, createdAt: $createdAt, updatedAt: $updatedAt, recordUrl: $recordUrl, cancelReasonId: $cancelReasonId, lessonPlanId: $lessonPlanId, cancelNote: $cancelNote, calendarId: $calendarId, isDeleted: $isDeleted, scheduleDetailInfo: $scheduleDetailInfo, classReview: $classReview, showRecordUrl: $showRecordUrl, studentMaterials: $studentMaterials, feedbacks: $feedbacks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleModel &&
            (identical(other.createdAtTimeStamp, createdAtTimeStamp) ||
                other.createdAtTimeStamp == createdAtTimeStamp) &&
            (identical(other.updatedAtTimeStamp, updatedAtTimeStamp) ||
                other.updatedAtTimeStamp == updatedAtTimeStamp) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.scheduleDetailId, scheduleDetailId) ||
                other.scheduleDetailId == scheduleDetailId) &&
            (identical(other.tutorMeetingLink, tutorMeetingLink) ||
                other.tutorMeetingLink == tutorMeetingLink) &&
            (identical(other.studentMeetingLink, studentMeetingLink) ||
                other.studentMeetingLink == studentMeetingLink) &&
            (identical(other.studentRequest, studentRequest) ||
                other.studentRequest == studentRequest) &&
            (identical(other.tutorReview, tutorReview) ||
                other.tutorReview == tutorReview) &&
            (identical(other.scoreByTutor, scoreByTutor) ||
                other.scoreByTutor == scoreByTutor) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.recordUrl, recordUrl) ||
                other.recordUrl == recordUrl) &&
            (identical(other.cancelReasonId, cancelReasonId) ||
                other.cancelReasonId == cancelReasonId) &&
            (identical(other.lessonPlanId, lessonPlanId) ||
                other.lessonPlanId == lessonPlanId) &&
            (identical(other.cancelNote, cancelNote) ||
                other.cancelNote == cancelNote) &&
            (identical(other.calendarId, calendarId) ||
                other.calendarId == calendarId) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.scheduleDetailInfo, scheduleDetailInfo) ||
                other.scheduleDetailInfo == scheduleDetailInfo) &&
            (identical(other.classReview, classReview) ||
                other.classReview == classReview) &&
            (identical(other.showRecordUrl, showRecordUrl) ||
                other.showRecordUrl == showRecordUrl) &&
            const DeepCollectionEquality()
                .equals(other._studentMaterials, _studentMaterials) &&
            const DeepCollectionEquality()
                .equals(other._feedbacks, _feedbacks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        createdAtTimeStamp,
        updatedAtTimeStamp,
        id,
        userId,
        scheduleDetailId,
        tutorMeetingLink,
        studentMeetingLink,
        studentRequest,
        tutorReview,
        scoreByTutor,
        createdAt,
        updatedAt,
        recordUrl,
        cancelReasonId,
        lessonPlanId,
        cancelNote,
        calendarId,
        isDeleted,
        scheduleDetailInfo,
        classReview,
        showRecordUrl,
        const DeepCollectionEquality().hash(_studentMaterials),
        const DeepCollectionEquality().hash(_feedbacks)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleModelCopyWith<_$_ScheduleModel> get copyWith =>
      __$$_ScheduleModelCopyWithImpl<_$_ScheduleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleModelToJson(
      this,
    );
  }
}

abstract class _ScheduleModel implements ScheduleModel {
  const factory _ScheduleModel(
      {final int? createdAtTimeStamp,
      final int? updatedAtTimeStamp,
      final String? id,
      final String? userId,
      final String? scheduleDetailId,
      final String? tutorMeetingLink,
      final String? studentMeetingLink,
      final String? studentRequest,
      final String? tutorReview,
      final int? scoreByTutor,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final String? recordUrl,
      final String? cancelReasonId,
      final String? lessonPlanId,
      final String? cancelNote,
      final String? calendarId,
      final bool? isDeleted,
      final ScheduleDetailInfo? scheduleDetailInfo,
      final String? classReview,
      final bool? showRecordUrl,
      final List<String>? studentMaterials,
      final List<Feedback>? feedbacks}) = _$_ScheduleModel;

  factory _ScheduleModel.fromJson(Map<String, dynamic> json) =
      _$_ScheduleModel.fromJson;

  @override
  int? get createdAtTimeStamp;
  @override
  int? get updatedAtTimeStamp;
  @override
  String? get id;
  @override
  String? get userId;
  @override
  String? get scheduleDetailId;
  @override
  String? get tutorMeetingLink;
  @override
  String? get studentMeetingLink;
  @override
  String? get studentRequest;
  @override
  String? get tutorReview;
  @override
  int? get scoreByTutor;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  String? get recordUrl;
  @override
  String? get cancelReasonId;
  @override
  String? get lessonPlanId;
  @override
  String? get cancelNote;
  @override
  String? get calendarId;
  @override
  bool? get isDeleted;
  @override
  ScheduleDetailInfo? get scheduleDetailInfo;
  @override
  String? get classReview;
  @override
  bool? get showRecordUrl;
  @override
  List<String>? get studentMaterials;
  @override
  List<Feedback>? get feedbacks;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleModelCopyWith<_$_ScheduleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Feedback _$FeedbackFromJson(Map<String, dynamic> json) {
  return _Feedback.fromJson(json);
}

/// @nodoc
mixin _$Feedback {
  String? get id => throw _privateConstructorUsedError;
  String? get bookingId => throw _privateConstructorUsedError;
  String? get firstId => throw _privateConstructorUsedError;
  String? get secondId => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

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
      {String? id,
      String? bookingId,
      String? firstId,
      String? secondId,
      int? rating,
      String? content,
      DateTime? createdAt,
      DateTime? updatedAt});
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
    Object? id = freezed,
    Object? bookingId = freezed,
    Object? firstId = freezed,
    Object? secondId = freezed,
    Object? rating = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
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
      {String? id,
      String? bookingId,
      String? firstId,
      String? secondId,
      int? rating,
      String? content,
      DateTime? createdAt,
      DateTime? updatedAt});
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
    Object? id = freezed,
    Object? bookingId = freezed,
    Object? firstId = freezed,
    Object? secondId = freezed,
    Object? rating = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Feedback(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Feedback implements _Feedback {
  const _$_Feedback(
      {this.id,
      this.bookingId,
      this.firstId,
      this.secondId,
      this.rating,
      this.content,
      this.createdAt,
      this.updatedAt});

  factory _$_Feedback.fromJson(Map<String, dynamic> json) =>
      _$$_FeedbackFromJson(json);

  @override
  final String? id;
  @override
  final String? bookingId;
  @override
  final String? firstId;
  @override
  final String? secondId;
  @override
  final int? rating;
  @override
  final String? content;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Feedback(id: $id, bookingId: $bookingId, firstId: $firstId, secondId: $secondId, rating: $rating, content: $content, createdAt: $createdAt, updatedAt: $updatedAt)';
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
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, bookingId, firstId, secondId,
      rating, content, createdAt, updatedAt);

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
      {final String? id,
      final String? bookingId,
      final String? firstId,
      final String? secondId,
      final int? rating,
      final String? content,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_Feedback;

  factory _Feedback.fromJson(Map<String, dynamic> json) = _$_Feedback.fromJson;

  @override
  String? get id;
  @override
  String? get bookingId;
  @override
  String? get firstId;
  @override
  String? get secondId;
  @override
  int? get rating;
  @override
  String? get content;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_FeedbackCopyWith<_$_Feedback> get copyWith =>
      throw _privateConstructorUsedError;
}

ScheduleDetailInfo _$ScheduleDetailInfoFromJson(Map<String, dynamic> json) {
  return _ScheduleDetailInfo.fromJson(json);
}

/// @nodoc
mixin _$ScheduleDetailInfo {
  int? get startPeriodTimestamp => throw _privateConstructorUsedError;
  int? get endPeriodTimestamp => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get scheduleId => throw _privateConstructorUsedError;
  String? get startPeriod => throw _privateConstructorUsedError;
  String? get endPeriod => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  ScheduleInfo? get scheduleInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleDetailInfoCopyWith<ScheduleDetailInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleDetailInfoCopyWith<$Res> {
  factory $ScheduleDetailInfoCopyWith(
          ScheduleDetailInfo value, $Res Function(ScheduleDetailInfo) then) =
      _$ScheduleDetailInfoCopyWithImpl<$Res, ScheduleDetailInfo>;
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
      ScheduleInfo? scheduleInfo});

  $ScheduleInfoCopyWith<$Res>? get scheduleInfo;
}

/// @nodoc
class _$ScheduleDetailInfoCopyWithImpl<$Res, $Val extends ScheduleDetailInfo>
    implements $ScheduleDetailInfoCopyWith<$Res> {
  _$ScheduleDetailInfoCopyWithImpl(this._value, this._then);

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
    Object? scheduleInfo = freezed,
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
      scheduleInfo: freezed == scheduleInfo
          ? _value.scheduleInfo
          : scheduleInfo // ignore: cast_nullable_to_non_nullable
              as ScheduleInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ScheduleInfoCopyWith<$Res>? get scheduleInfo {
    if (_value.scheduleInfo == null) {
      return null;
    }

    return $ScheduleInfoCopyWith<$Res>(_value.scheduleInfo!, (value) {
      return _then(_value.copyWith(scheduleInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ScheduleDetailInfoCopyWith<$Res>
    implements $ScheduleDetailInfoCopyWith<$Res> {
  factory _$$_ScheduleDetailInfoCopyWith(_$_ScheduleDetailInfo value,
          $Res Function(_$_ScheduleDetailInfo) then) =
      __$$_ScheduleDetailInfoCopyWithImpl<$Res>;
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
      ScheduleInfo? scheduleInfo});

  @override
  $ScheduleInfoCopyWith<$Res>? get scheduleInfo;
}

/// @nodoc
class __$$_ScheduleDetailInfoCopyWithImpl<$Res>
    extends _$ScheduleDetailInfoCopyWithImpl<$Res, _$_ScheduleDetailInfo>
    implements _$$_ScheduleDetailInfoCopyWith<$Res> {
  __$$_ScheduleDetailInfoCopyWithImpl(
      _$_ScheduleDetailInfo _value, $Res Function(_$_ScheduleDetailInfo) _then)
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
    Object? scheduleInfo = freezed,
  }) {
    return _then(_$_ScheduleDetailInfo(
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
      scheduleInfo: freezed == scheduleInfo
          ? _value.scheduleInfo
          : scheduleInfo // ignore: cast_nullable_to_non_nullable
              as ScheduleInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleDetailInfo implements _ScheduleDetailInfo {
  const _$_ScheduleDetailInfo(
      {this.startPeriodTimestamp,
      this.endPeriodTimestamp,
      this.id,
      this.scheduleId,
      this.startPeriod,
      this.endPeriod,
      this.createdAt,
      this.updatedAt,
      this.scheduleInfo});

  factory _$_ScheduleDetailInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleDetailInfoFromJson(json);

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
  @override
  final ScheduleInfo? scheduleInfo;

  @override
  String toString() {
    return 'ScheduleDetailInfo(startPeriodTimestamp: $startPeriodTimestamp, endPeriodTimestamp: $endPeriodTimestamp, id: $id, scheduleId: $scheduleId, startPeriod: $startPeriod, endPeriod: $endPeriod, createdAt: $createdAt, updatedAt: $updatedAt, scheduleInfo: $scheduleInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleDetailInfo &&
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
            (identical(other.scheduleInfo, scheduleInfo) ||
                other.scheduleInfo == scheduleInfo));
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
      scheduleInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleDetailInfoCopyWith<_$_ScheduleDetailInfo> get copyWith =>
      __$$_ScheduleDetailInfoCopyWithImpl<_$_ScheduleDetailInfo>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleDetailInfoToJson(
      this,
    );
  }
}

abstract class _ScheduleDetailInfo implements ScheduleDetailInfo {
  const factory _ScheduleDetailInfo(
      {final int? startPeriodTimestamp,
      final int? endPeriodTimestamp,
      final String? id,
      final String? scheduleId,
      final String? startPeriod,
      final String? endPeriod,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final ScheduleInfo? scheduleInfo}) = _$_ScheduleDetailInfo;

  factory _ScheduleDetailInfo.fromJson(Map<String, dynamic> json) =
      _$_ScheduleDetailInfo.fromJson;

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
  ScheduleInfo? get scheduleInfo;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleDetailInfoCopyWith<_$_ScheduleDetailInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

ScheduleInfo _$ScheduleInfoFromJson(Map<String, dynamic> json) {
  return _ScheduleInfo.fromJson(json);
}

/// @nodoc
mixin _$ScheduleInfo {
  DateTime? get date => throw _privateConstructorUsedError;
  int? get startTimestamp => throw _privateConstructorUsedError;
  int? get endTimestamp => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get tutorId => throw _privateConstructorUsedError;
  String? get startTime => throw _privateConstructorUsedError;
  String? get endTime => throw _privateConstructorUsedError;
  bool? get isDeleted => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  TutorInfo? get tutorInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleInfoCopyWith<ScheduleInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleInfoCopyWith<$Res> {
  factory $ScheduleInfoCopyWith(
          ScheduleInfo value, $Res Function(ScheduleInfo) then) =
      _$ScheduleInfoCopyWithImpl<$Res, ScheduleInfo>;
  @useResult
  $Res call(
      {DateTime? date,
      int? startTimestamp,
      int? endTimestamp,
      String? id,
      String? tutorId,
      String? startTime,
      String? endTime,
      bool? isDeleted,
      DateTime? createdAt,
      DateTime? updatedAt,
      TutorInfo? tutorInfo});

  $TutorInfoCopyWith<$Res>? get tutorInfo;
}

/// @nodoc
class _$ScheduleInfoCopyWithImpl<$Res, $Val extends ScheduleInfo>
    implements $ScheduleInfoCopyWith<$Res> {
  _$ScheduleInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? startTimestamp = freezed,
    Object? endTimestamp = freezed,
    Object? id = freezed,
    Object? tutorId = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? tutorInfo = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startTimestamp: freezed == startTimestamp
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      endTimestamp: freezed == endTimestamp
          ? _value.endTimestamp
          : endTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
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
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tutorInfo: freezed == tutorInfo
          ? _value.tutorInfo
          : tutorInfo // ignore: cast_nullable_to_non_nullable
              as TutorInfo?,
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
}

/// @nodoc
abstract class _$$_ScheduleInfoCopyWith<$Res>
    implements $ScheduleInfoCopyWith<$Res> {
  factory _$$_ScheduleInfoCopyWith(
          _$_ScheduleInfo value, $Res Function(_$_ScheduleInfo) then) =
      __$$_ScheduleInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? date,
      int? startTimestamp,
      int? endTimestamp,
      String? id,
      String? tutorId,
      String? startTime,
      String? endTime,
      bool? isDeleted,
      DateTime? createdAt,
      DateTime? updatedAt,
      TutorInfo? tutorInfo});

  @override
  $TutorInfoCopyWith<$Res>? get tutorInfo;
}

/// @nodoc
class __$$_ScheduleInfoCopyWithImpl<$Res>
    extends _$ScheduleInfoCopyWithImpl<$Res, _$_ScheduleInfo>
    implements _$$_ScheduleInfoCopyWith<$Res> {
  __$$_ScheduleInfoCopyWithImpl(
      _$_ScheduleInfo _value, $Res Function(_$_ScheduleInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? startTimestamp = freezed,
    Object? endTimestamp = freezed,
    Object? id = freezed,
    Object? tutorId = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? tutorInfo = freezed,
  }) {
    return _then(_$_ScheduleInfo(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startTimestamp: freezed == startTimestamp
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      endTimestamp: freezed == endTimestamp
          ? _value.endTimestamp
          : endTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
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
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tutorInfo: freezed == tutorInfo
          ? _value.tutorInfo
          : tutorInfo // ignore: cast_nullable_to_non_nullable
              as TutorInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleInfo implements _ScheduleInfo {
  const _$_ScheduleInfo(
      {this.date,
      this.startTimestamp,
      this.endTimestamp,
      this.id,
      this.tutorId,
      this.startTime,
      this.endTime,
      this.isDeleted,
      this.createdAt,
      this.updatedAt,
      this.tutorInfo});

  factory _$_ScheduleInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleInfoFromJson(json);

  @override
  final DateTime? date;
  @override
  final int? startTimestamp;
  @override
  final int? endTimestamp;
  @override
  final String? id;
  @override
  final String? tutorId;
  @override
  final String? startTime;
  @override
  final String? endTime;
  @override
  final bool? isDeleted;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final TutorInfo? tutorInfo;

  @override
  String toString() {
    return 'ScheduleInfo(date: $date, startTimestamp: $startTimestamp, endTimestamp: $endTimestamp, id: $id, tutorId: $tutorId, startTime: $startTime, endTime: $endTime, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, tutorInfo: $tutorInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleInfo &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTimestamp, startTimestamp) ||
                other.startTimestamp == startTimestamp) &&
            (identical(other.endTimestamp, endTimestamp) ||
                other.endTimestamp == endTimestamp) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tutorId, tutorId) || other.tutorId == tutorId) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.tutorInfo, tutorInfo) ||
                other.tutorInfo == tutorInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      date,
      startTimestamp,
      endTimestamp,
      id,
      tutorId,
      startTime,
      endTime,
      isDeleted,
      createdAt,
      updatedAt,
      tutorInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleInfoCopyWith<_$_ScheduleInfo> get copyWith =>
      __$$_ScheduleInfoCopyWithImpl<_$_ScheduleInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleInfoToJson(
      this,
    );
  }
}

abstract class _ScheduleInfo implements ScheduleInfo {
  const factory _ScheduleInfo(
      {final DateTime? date,
      final int? startTimestamp,
      final int? endTimestamp,
      final String? id,
      final String? tutorId,
      final String? startTime,
      final String? endTime,
      final bool? isDeleted,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final TutorInfo? tutorInfo}) = _$_ScheduleInfo;

  factory _ScheduleInfo.fromJson(Map<String, dynamic> json) =
      _$_ScheduleInfo.fromJson;

  @override
  DateTime? get date;
  @override
  int? get startTimestamp;
  @override
  int? get endTimestamp;
  @override
  String? get id;
  @override
  String? get tutorId;
  @override
  String? get startTime;
  @override
  String? get endTime;
  @override
  bool? get isDeleted;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  TutorInfo? get tutorInfo;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleInfoCopyWith<_$_ScheduleInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

TutorInfo _$TutorInfoFromJson(Map<String, dynamic> json) {
  return _TutorInfo.fromJson(json);
}

/// @nodoc
mixin _$TutorInfo {
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
  DateTime? get birthday => throw _privateConstructorUsedError;
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
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  String? get studentGroupId => throw _privateConstructorUsedError;

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
      DateTime? birthday,
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
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt,
      String? studentGroupId});
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
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      studentGroupId: freezed == studentGroupId
          ? _value.studentGroupId
          : studentGroupId // ignore: cast_nullable_to_non_nullable
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
      DateTime? birthday,
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
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt,
      String? studentGroupId});
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
    return _then(_$_TutorInfo(
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
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      studentGroupId: freezed == studentGroupId
          ? _value.studentGroupId
          : studentGroupId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TutorInfo implements _TutorInfo {
  const _$_TutorInfo(
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

  factory _$_TutorInfo.fromJson(Map<String, dynamic> json) =>
      _$$_TutorInfoFromJson(json);

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
  final DateTime? birthday;
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
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;
  @override
  final String? studentGroupId;

  @override
  String toString() {
    return 'TutorInfo(id: $id, level: $level, email: $email, google: $google, facebook: $facebook, apple: $apple, avatar: $avatar, name: $name, country: $country, phone: $phone, language: $language, birthday: $birthday, requestPassword: $requestPassword, isActivated: $isActivated, isPhoneActivated: $isPhoneActivated, requireNote: $requireNote, timezone: $timezone, phoneAuth: $phoneAuth, isPhoneAuthActivated: $isPhoneAuthActivated, studySchedule: $studySchedule, canSendMessage: $canSendMessage, isPublicRecord: $isPublicRecord, caredByStaffId: $caredByStaffId, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, studentGroupId: $studentGroupId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TutorInfo &&
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
                other.studentGroupId == studentGroupId));
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
        studentGroupId
      ]);

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
      final DateTime? birthday,
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
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final DateTime? deletedAt,
      final String? studentGroupId}) = _$_TutorInfo;

  factory _TutorInfo.fromJson(Map<String, dynamic> json) =
      _$_TutorInfo.fromJson;

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
  DateTime? get birthday;
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
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get deletedAt;
  @override
  String? get studentGroupId;
  @override
  @JsonKey(ignore: true)
  _$$_TutorInfoCopyWith<_$_TutorInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
