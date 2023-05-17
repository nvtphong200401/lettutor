// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListCategoryResult _$ListCategoryResultFromJson(Map<String, dynamic> json) {
  return _ListCategoryResult.fromJson(json);
}

/// @nodoc
mixin _$ListCategoryResult {
  int? get count => throw _privateConstructorUsedError;
  List<Category>? get rows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListCategoryResultCopyWith<ListCategoryResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListCategoryResultCopyWith<$Res> {
  factory $ListCategoryResultCopyWith(
          ListCategoryResult value, $Res Function(ListCategoryResult) then) =
      _$ListCategoryResultCopyWithImpl<$Res, ListCategoryResult>;
  @useResult
  $Res call({int? count, List<Category>? rows});
}

/// @nodoc
class _$ListCategoryResultCopyWithImpl<$Res, $Val extends ListCategoryResult>
    implements $ListCategoryResultCopyWith<$Res> {
  _$ListCategoryResultCopyWithImpl(this._value, this._then);

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
              as List<Category>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListCategoryResultCopyWith<$Res>
    implements $ListCategoryResultCopyWith<$Res> {
  factory _$$_ListCategoryResultCopyWith(_$_ListCategoryResult value,
          $Res Function(_$_ListCategoryResult) then) =
      __$$_ListCategoryResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count, List<Category>? rows});
}

/// @nodoc
class __$$_ListCategoryResultCopyWithImpl<$Res>
    extends _$ListCategoryResultCopyWithImpl<$Res, _$_ListCategoryResult>
    implements _$$_ListCategoryResultCopyWith<$Res> {
  __$$_ListCategoryResultCopyWithImpl(
      _$_ListCategoryResult _value, $Res Function(_$_ListCategoryResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? rows = freezed,
  }) {
    return _then(_$_ListCategoryResult(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      rows: freezed == rows
          ? _value._rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListCategoryResult extends _ListCategoryResult {
  const _$_ListCategoryResult({this.count, final List<Category>? rows})
      : _rows = rows,
        super._();

  factory _$_ListCategoryResult.fromJson(Map<String, dynamic> json) =>
      _$$_ListCategoryResultFromJson(json);

  @override
  final int? count;
  final List<Category>? _rows;
  @override
  List<Category>? get rows {
    final value = _rows;
    if (value == null) return null;
    if (_rows is EqualUnmodifiableListView) return _rows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ListCategoryResult(count: $count, rows: $rows)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListCategoryResult &&
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
  _$$_ListCategoryResultCopyWith<_$_ListCategoryResult> get copyWith =>
      __$$_ListCategoryResultCopyWithImpl<_$_ListCategoryResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListCategoryResultToJson(
      this,
    );
  }
}

abstract class _ListCategoryResult extends ListCategoryResult {
  const factory _ListCategoryResult(
      {final int? count, final List<Category>? rows}) = _$_ListCategoryResult;
  const _ListCategoryResult._() : super._();

  factory _ListCategoryResult.fromJson(Map<String, dynamic> json) =
      _$_ListCategoryResult.fromJson;

  @override
  int? get count;
  @override
  List<Category>? get rows;
  @override
  @JsonKey(ignore: true)
  _$$_ListCategoryResultCopyWith<_$_ListCategoryResult> get copyWith =>
      throw _privateConstructorUsedError;
}
