// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_feedback_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListFeedbackResult _$ListFeedbackResultFromJson(Map<String, dynamic> json) {
  return _ListFeedbackResult.fromJson(json);
}

/// @nodoc
mixin _$ListFeedbackResult {
  String? get message => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListFeedbackResultCopyWith<ListFeedbackResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListFeedbackResultCopyWith<$Res> {
  factory $ListFeedbackResultCopyWith(
          ListFeedbackResult value, $Res Function(ListFeedbackResult) then) =
      _$ListFeedbackResultCopyWithImpl<$Res, ListFeedbackResult>;
  @useResult
  $Res call({String? message, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ListFeedbackResultCopyWithImpl<$Res, $Val extends ListFeedbackResult>
    implements $ListFeedbackResultCopyWith<$Res> {
  _$ListFeedbackResultCopyWithImpl(this._value, this._then);

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
abstract class _$$_ListFeedbackResultCopyWith<$Res>
    implements $ListFeedbackResultCopyWith<$Res> {
  factory _$$_ListFeedbackResultCopyWith(_$_ListFeedbackResult value,
          $Res Function(_$_ListFeedbackResult) then) =
      __$$_ListFeedbackResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_ListFeedbackResultCopyWithImpl<$Res>
    extends _$ListFeedbackResultCopyWithImpl<$Res, _$_ListFeedbackResult>
    implements _$$_ListFeedbackResultCopyWith<$Res> {
  __$$_ListFeedbackResultCopyWithImpl(
      _$_ListFeedbackResult _value, $Res Function(_$_ListFeedbackResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ListFeedbackResult(
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
class _$_ListFeedbackResult implements _ListFeedbackResult {
  const _$_ListFeedbackResult({this.message, this.data});

  factory _$_ListFeedbackResult.fromJson(Map<String, dynamic> json) =>
      _$$_ListFeedbackResultFromJson(json);

  @override
  final String? message;
  @override
  final Data? data;

  @override
  String toString() {
    return 'ListFeedbackResult(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListFeedbackResult &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListFeedbackResultCopyWith<_$_ListFeedbackResult> get copyWith =>
      __$$_ListFeedbackResultCopyWithImpl<_$_ListFeedbackResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListFeedbackResultToJson(
      this,
    );
  }
}

abstract class _ListFeedbackResult implements ListFeedbackResult {
  const factory _ListFeedbackResult({final String? message, final Data? data}) =
      _$_ListFeedbackResult;

  factory _ListFeedbackResult.fromJson(Map<String, dynamic> json) =
      _$_ListFeedbackResult.fromJson;

  @override
  String? get message;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ListFeedbackResultCopyWith<_$_ListFeedbackResult> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  int? get count => throw _privateConstructorUsedError;
  List<FeedbackModel>? get rows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({int? count, List<FeedbackModel>? rows});
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
              as List<FeedbackModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count, List<FeedbackModel>? rows});
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
              as List<FeedbackModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data({this.count, final List<FeedbackModel>? rows}) : _rows = rows;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final int? count;
  final List<FeedbackModel>? _rows;
  @override
  List<FeedbackModel>? get rows {
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
  const factory _Data({final int? count, final List<FeedbackModel>? rows}) =
      _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  int? get count;
  @override
  List<FeedbackModel>? get rows;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
