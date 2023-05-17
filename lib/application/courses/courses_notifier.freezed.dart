// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'courses_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CoursesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<CourseModel> schedules, int count, int currentPage)
        data,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CourseModel> schedules, int count, int currentPage)?
        data,
    TResult? Function()? loading,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CourseModel> schedules, int count, int currentPage)?
        data,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CoursesData value) data,
    required TResult Function(_CoursesLoading value) loading,
    required TResult Function(_CoursesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CoursesData value)? data,
    TResult? Function(_CoursesLoading value)? loading,
    TResult? Function(_CoursesError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CoursesData value)? data,
    TResult Function(_CoursesLoading value)? loading,
    TResult Function(_CoursesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursesStateCopyWith<$Res> {
  factory $CoursesStateCopyWith(
          CoursesState value, $Res Function(CoursesState) then) =
      _$CoursesStateCopyWithImpl<$Res, CoursesState>;
}

/// @nodoc
class _$CoursesStateCopyWithImpl<$Res, $Val extends CoursesState>
    implements $CoursesStateCopyWith<$Res> {
  _$CoursesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CoursesDataCopyWith<$Res> {
  factory _$$_CoursesDataCopyWith(
          _$_CoursesData value, $Res Function(_$_CoursesData) then) =
      __$$_CoursesDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CourseModel> schedules, int count, int currentPage});
}

/// @nodoc
class __$$_CoursesDataCopyWithImpl<$Res>
    extends _$CoursesStateCopyWithImpl<$Res, _$_CoursesData>
    implements _$$_CoursesDataCopyWith<$Res> {
  __$$_CoursesDataCopyWithImpl(
      _$_CoursesData _value, $Res Function(_$_CoursesData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedules = null,
    Object? count = null,
    Object? currentPage = null,
  }) {
    return _then(_$_CoursesData(
      null == schedules
          ? _value._schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CoursesData extends _CoursesData {
  const _$_CoursesData(
      final List<CourseModel> schedules, this.count, this.currentPage)
      : _schedules = schedules,
        super._();

  final List<CourseModel> _schedules;
  @override
  List<CourseModel> get schedules {
    if (_schedules is EqualUnmodifiableListView) return _schedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedules);
  }

  @override
  final int count;
  @override
  final int currentPage;

  @override
  String toString() {
    return 'CoursesState.data(schedules: $schedules, count: $count, currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoursesData &&
            const DeepCollectionEquality()
                .equals(other._schedules, _schedules) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_schedules), count, currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoursesDataCopyWith<_$_CoursesData> get copyWith =>
      __$$_CoursesDataCopyWithImpl<_$_CoursesData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<CourseModel> schedules, int count, int currentPage)
        data,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return data(schedules, count, currentPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CourseModel> schedules, int count, int currentPage)?
        data,
    TResult? Function()? loading,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return data?.call(schedules, count, currentPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CourseModel> schedules, int count, int currentPage)?
        data,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(schedules, count, currentPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CoursesData value) data,
    required TResult Function(_CoursesLoading value) loading,
    required TResult Function(_CoursesError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CoursesData value)? data,
    TResult? Function(_CoursesLoading value)? loading,
    TResult? Function(_CoursesError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CoursesData value)? data,
    TResult Function(_CoursesLoading value)? loading,
    TResult Function(_CoursesError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _CoursesData extends CoursesState {
  const factory _CoursesData(final List<CourseModel> schedules, final int count,
      final int currentPage) = _$_CoursesData;
  const _CoursesData._() : super._();

  List<CourseModel> get schedules;
  int get count;
  int get currentPage;
  @JsonKey(ignore: true)
  _$$_CoursesDataCopyWith<_$_CoursesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CoursesLoadingCopyWith<$Res> {
  factory _$$_CoursesLoadingCopyWith(
          _$_CoursesLoading value, $Res Function(_$_CoursesLoading) then) =
      __$$_CoursesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CoursesLoadingCopyWithImpl<$Res>
    extends _$CoursesStateCopyWithImpl<$Res, _$_CoursesLoading>
    implements _$$_CoursesLoadingCopyWith<$Res> {
  __$$_CoursesLoadingCopyWithImpl(
      _$_CoursesLoading _value, $Res Function(_$_CoursesLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CoursesLoading extends _CoursesLoading {
  const _$_CoursesLoading() : super._();

  @override
  String toString() {
    return 'CoursesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CoursesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<CourseModel> schedules, int count, int currentPage)
        data,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CourseModel> schedules, int count, int currentPage)?
        data,
    TResult? Function()? loading,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CourseModel> schedules, int count, int currentPage)?
        data,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace stackTrace)? error,
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
    required TResult Function(_CoursesData value) data,
    required TResult Function(_CoursesLoading value) loading,
    required TResult Function(_CoursesError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CoursesData value)? data,
    TResult? Function(_CoursesLoading value)? loading,
    TResult? Function(_CoursesError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CoursesData value)? data,
    TResult Function(_CoursesLoading value)? loading,
    TResult Function(_CoursesError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CoursesLoading extends CoursesState {
  const factory _CoursesLoading() = _$_CoursesLoading;
  const _CoursesLoading._() : super._();
}

/// @nodoc
abstract class _$$_CoursesErrorCopyWith<$Res> {
  factory _$$_CoursesErrorCopyWith(
          _$_CoursesError value, $Res Function(_$_CoursesError) then) =
      __$$_CoursesErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$_CoursesErrorCopyWithImpl<$Res>
    extends _$CoursesStateCopyWithImpl<$Res, _$_CoursesError>
    implements _$$_CoursesErrorCopyWith<$Res> {
  __$$_CoursesErrorCopyWithImpl(
      _$_CoursesError _value, $Res Function(_$_CoursesError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$_CoursesError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$_CoursesError extends _CoursesError {
  const _$_CoursesError(this.error, this.stackTrace) : super._();

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'CoursesState.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoursesError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoursesErrorCopyWith<_$_CoursesError> get copyWith =>
      __$$_CoursesErrorCopyWithImpl<_$_CoursesError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<CourseModel> schedules, int count, int currentPage)
        data,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CourseModel> schedules, int count, int currentPage)?
        data,
    TResult? Function()? loading,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CourseModel> schedules, int count, int currentPage)?
        data,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CoursesData value) data,
    required TResult Function(_CoursesLoading value) loading,
    required TResult Function(_CoursesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CoursesData value)? data,
    TResult? Function(_CoursesLoading value)? loading,
    TResult? Function(_CoursesError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CoursesData value)? data,
    TResult Function(_CoursesLoading value)? loading,
    TResult Function(_CoursesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CoursesError extends CoursesState {
  const factory _CoursesError(final Object error, final StackTrace stackTrace) =
      _$_CoursesError;
  const _CoursesError._() : super._();

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$_CoursesErrorCopyWith<_$_CoursesError> get copyWith =>
      throw _privateConstructorUsedError;
}
