// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScheduleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ScheduleModel> schedules) data,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ScheduleModel> schedules)? data,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ScheduleModel> schedules)? data,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScheduleData value) data,
    required TResult Function(_ScheduleLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScheduleData value)? data,
    TResult? Function(_ScheduleLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScheduleData value)? data,
    TResult Function(_ScheduleLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleStateCopyWith<$Res> {
  factory $ScheduleStateCopyWith(
          ScheduleState value, $Res Function(ScheduleState) then) =
      _$ScheduleStateCopyWithImpl<$Res, ScheduleState>;
}

/// @nodoc
class _$ScheduleStateCopyWithImpl<$Res, $Val extends ScheduleState>
    implements $ScheduleStateCopyWith<$Res> {
  _$ScheduleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ScheduleDataCopyWith<$Res> {
  factory _$$_ScheduleDataCopyWith(
          _$_ScheduleData value, $Res Function(_$_ScheduleData) then) =
      __$$_ScheduleDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ScheduleModel> schedules});
}

/// @nodoc
class __$$_ScheduleDataCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$_ScheduleData>
    implements _$$_ScheduleDataCopyWith<$Res> {
  __$$_ScheduleDataCopyWithImpl(
      _$_ScheduleData _value, $Res Function(_$_ScheduleData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedules = null,
  }) {
    return _then(_$_ScheduleData(
      null == schedules
          ? _value._schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<ScheduleModel>,
    ));
  }
}

/// @nodoc

class _$_ScheduleData extends _ScheduleData {
  const _$_ScheduleData(final List<ScheduleModel> schedules)
      : _schedules = schedules,
        super._();

  final List<ScheduleModel> _schedules;
  @override
  List<ScheduleModel> get schedules {
    if (_schedules is EqualUnmodifiableListView) return _schedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedules);
  }

  @override
  String toString() {
    return 'ScheduleState.data(schedules: $schedules)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleData &&
            const DeepCollectionEquality()
                .equals(other._schedules, _schedules));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_schedules));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleDataCopyWith<_$_ScheduleData> get copyWith =>
      __$$_ScheduleDataCopyWithImpl<_$_ScheduleData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ScheduleModel> schedules) data,
    required TResult Function() loading,
  }) {
    return data(schedules);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ScheduleModel> schedules)? data,
    TResult? Function()? loading,
  }) {
    return data?.call(schedules);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ScheduleModel> schedules)? data,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(schedules);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScheduleData value) data,
    required TResult Function(_ScheduleLoading value) loading,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScheduleData value)? data,
    TResult? Function(_ScheduleLoading value)? loading,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScheduleData value)? data,
    TResult Function(_ScheduleLoading value)? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _ScheduleData extends ScheduleState {
  const factory _ScheduleData(final List<ScheduleModel> schedules) =
      _$_ScheduleData;
  const _ScheduleData._() : super._();

  List<ScheduleModel> get schedules;
  @JsonKey(ignore: true)
  _$$_ScheduleDataCopyWith<_$_ScheduleData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ScheduleLoadingCopyWith<$Res> {
  factory _$$_ScheduleLoadingCopyWith(
          _$_ScheduleLoading value, $Res Function(_$_ScheduleLoading) then) =
      __$$_ScheduleLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ScheduleLoadingCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$_ScheduleLoading>
    implements _$$_ScheduleLoadingCopyWith<$Res> {
  __$$_ScheduleLoadingCopyWithImpl(
      _$_ScheduleLoading _value, $Res Function(_$_ScheduleLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ScheduleLoading extends _ScheduleLoading {
  const _$_ScheduleLoading() : super._();

  @override
  String toString() {
    return 'ScheduleState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ScheduleLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ScheduleModel> schedules) data,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ScheduleModel> schedules)? data,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ScheduleModel> schedules)? data,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScheduleData value) data,
    required TResult Function(_ScheduleLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScheduleData value)? data,
    TResult? Function(_ScheduleLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScheduleData value)? data,
    TResult Function(_ScheduleLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ScheduleLoading extends ScheduleState {
  const factory _ScheduleLoading() = _$_ScheduleLoading;
  const _ScheduleLoading._() : super._();
}
