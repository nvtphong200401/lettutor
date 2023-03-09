// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TeacherModel _$TeacherModelFromJson(Map<String, dynamic> json) {
  return _TeacherModel.fromJson(json);
}

/// @nodoc
mixin _$TeacherModel {
  String? get name => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  String? get video => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;

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
  $Res call({String? name, String avatar, String? video, String? bio});
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
    Object? name = freezed,
    Object? avatar = null,
    Object? video = freezed,
    Object? bio = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call({String? name, String avatar, String? video, String? bio});
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
    Object? name = freezed,
    Object? avatar = null,
    Object? video = freezed,
    Object? bio = freezed,
  }) {
    return _then(_$_TeacherModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TeacherModel extends _TeacherModel {
  const _$_TeacherModel(
      {this.name,
      this.avatar =
          'https://i0.wp.com/sbcf.fr/wp-content/uploads/2018/03/sbcf-default-avatar.png',
      this.video,
      this.bio})
      : super._();

  factory _$_TeacherModel.fromJson(Map<String, dynamic> json) =>
      _$$_TeacherModelFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey()
  final String avatar;
  @override
  final String? video;
  @override
  final String? bio;

  @override
  String toString() {
    return 'TeacherModel(name: $name, avatar: $avatar, video: $video, bio: $bio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TeacherModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.bio, bio) || other.bio == bio));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, avatar, video, bio);

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

abstract class _TeacherModel extends TeacherModel {
  const factory _TeacherModel(
      {final String? name,
      final String avatar,
      final String? video,
      final String? bio}) = _$_TeacherModel;
  const _TeacherModel._() : super._();

  factory _TeacherModel.fromJson(Map<String, dynamic> json) =
      _$_TeacherModel.fromJson;

  @override
  String? get name;
  @override
  String get avatar;
  @override
  String? get video;
  @override
  String? get bio;
  @override
  @JsonKey(ignore: true)
  _$$_TeacherModelCopyWith<_$_TeacherModel> get copyWith =>
      throw _privateConstructorUsedError;
}
