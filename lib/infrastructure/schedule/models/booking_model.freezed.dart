// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookingModel _$BookingModelFromJson(Map<String, dynamic> json) {
  return _BookingModel.fromJson(json);
}

/// @nodoc
mixin _$BookingModel {
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  TutorDetail? get tutorInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingModelCopyWith<BookingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingModelCopyWith<$Res> {
  factory $BookingModelCopyWith(
          BookingModel value, $Res Function(BookingModel) then) =
      _$BookingModelCopyWithImpl<$Res, BookingModel>;
  @useResult
  $Res call({String startTime, String endTime, TutorDetail? tutorInfo});

  $TutorDetailCopyWith<$Res>? get tutorInfo;
}

/// @nodoc
class _$BookingModelCopyWithImpl<$Res, $Val extends BookingModel>
    implements $BookingModelCopyWith<$Res> {
  _$BookingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? tutorInfo = freezed,
  }) {
    return _then(_value.copyWith(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      tutorInfo: freezed == tutorInfo
          ? _value.tutorInfo
          : tutorInfo // ignore: cast_nullable_to_non_nullable
              as TutorDetail?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TutorDetailCopyWith<$Res>? get tutorInfo {
    if (_value.tutorInfo == null) {
      return null;
    }

    return $TutorDetailCopyWith<$Res>(_value.tutorInfo!, (value) {
      return _then(_value.copyWith(tutorInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BookingModelCopyWith<$Res>
    implements $BookingModelCopyWith<$Res> {
  factory _$$_BookingModelCopyWith(
          _$_BookingModel value, $Res Function(_$_BookingModel) then) =
      __$$_BookingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String startTime, String endTime, TutorDetail? tutorInfo});

  @override
  $TutorDetailCopyWith<$Res>? get tutorInfo;
}

/// @nodoc
class __$$_BookingModelCopyWithImpl<$Res>
    extends _$BookingModelCopyWithImpl<$Res, _$_BookingModel>
    implements _$$_BookingModelCopyWith<$Res> {
  __$$_BookingModelCopyWithImpl(
      _$_BookingModel _value, $Res Function(_$_BookingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? tutorInfo = freezed,
  }) {
    return _then(_$_BookingModel(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      tutorInfo: freezed == tutorInfo
          ? _value.tutorInfo
          : tutorInfo // ignore: cast_nullable_to_non_nullable
              as TutorDetail?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookingModel extends _BookingModel {
  const _$_BookingModel(
      {this.startTime = '00:00', this.endTime = '00:00', this.tutorInfo})
      : super._();

  factory _$_BookingModel.fromJson(Map<String, dynamic> json) =>
      _$$_BookingModelFromJson(json);

  @override
  @JsonKey()
  final String startTime;
  @override
  @JsonKey()
  final String endTime;
  @override
  final TutorDetail? tutorInfo;

  @override
  String toString() {
    return 'BookingModel(startTime: $startTime, endTime: $endTime, tutorInfo: $tutorInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookingModel &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.tutorInfo, tutorInfo) ||
                other.tutorInfo == tutorInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime, tutorInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookingModelCopyWith<_$_BookingModel> get copyWith =>
      __$$_BookingModelCopyWithImpl<_$_BookingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookingModelToJson(
      this,
    );
  }
}

abstract class _BookingModel extends BookingModel {
  const factory _BookingModel(
      {final String startTime,
      final String endTime,
      final TutorDetail? tutorInfo}) = _$_BookingModel;
  const _BookingModel._() : super._();

  factory _BookingModel.fromJson(Map<String, dynamic> json) =
      _$_BookingModel.fromJson;

  @override
  String get startTime;
  @override
  String get endTime;
  @override
  TutorDetail? get tutorInfo;
  @override
  @JsonKey(ignore: true)
  _$$_BookingModelCopyWith<_$_BookingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
