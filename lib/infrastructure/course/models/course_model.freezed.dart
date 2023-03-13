// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseModel _$CourseModelFromJson(Map<String, dynamic> json) {
  return _CourseModel.fromJson(json);
}

/// @nodoc
mixin _$CourseModel {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseModelCopyWith<CourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseModelCopyWith<$Res> {
  factory $CourseModelCopyWith(
          CourseModel value, $Res Function(CourseModel) then) =
      _$CourseModelCopyWithImpl<$Res, CourseModel>;
  @useResult
  $Res call({String name, String description, String imageUrl, String level});
}

/// @nodoc
class _$CourseModelCopyWithImpl<$Res, $Val extends CourseModel>
    implements $CourseModelCopyWith<$Res> {
  _$CourseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? level = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CourseModelCopyWith<$Res>
    implements $CourseModelCopyWith<$Res> {
  factory _$$_CourseModelCopyWith(
          _$_CourseModel value, $Res Function(_$_CourseModel) then) =
      __$$_CourseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description, String imageUrl, String level});
}

/// @nodoc
class __$$_CourseModelCopyWithImpl<$Res>
    extends _$CourseModelCopyWithImpl<$Res, _$_CourseModel>
    implements _$$_CourseModelCopyWith<$Res> {
  __$$_CourseModelCopyWithImpl(
      _$_CourseModel _value, $Res Function(_$_CourseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? level = null,
  }) {
    return _then(_$_CourseModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourseModel extends _CourseModel {
  const _$_CourseModel(
      {this.name = '',
      this.description = '',
      this.imageUrl =
          'https://sbcf.fr/wp-content/uploads/2018/03/sbcf-default-avatar.png',
      this.level = ''})
      : super._();

  factory _$_CourseModel.fromJson(Map<String, dynamic> json) =>
      _$$_CourseModelFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String imageUrl;
  @override
  @JsonKey()
  final String level;

  @override
  String toString() {
    return 'CourseModel(name: $name, description: $description, imageUrl: $imageUrl, level: $level)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CourseModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.level, level) || other.level == level));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, imageUrl, level);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CourseModelCopyWith<_$_CourseModel> get copyWith =>
      __$$_CourseModelCopyWithImpl<_$_CourseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseModelToJson(
      this,
    );
  }
}

abstract class _CourseModel extends CourseModel {
  const factory _CourseModel(
      {final String name,
      final String description,
      final String imageUrl,
      final String level}) = _$_CourseModel;
  const _CourseModel._() : super._();

  factory _CourseModel.fromJson(Map<String, dynamic> json) =
      _$_CourseModel.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get imageUrl;
  @override
  String get level;
  @override
  @JsonKey(ignore: true)
  _$$_CourseModelCopyWith<_$_CourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
