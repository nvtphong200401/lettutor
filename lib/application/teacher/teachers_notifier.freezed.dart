// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teachers_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TeachersState {
  List<TeacherModel> get teachers => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TeacherModel> teachers, int count) loading,
    required TResult Function(List<TeacherModel> teachers, int count,
            int currentPage, String? errorMessage)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TeacherModel> teachers, int count)? loading,
    TResult? Function(List<TeacherModel> teachers, int count, int currentPage,
            String? errorMessage)?
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TeacherModel> teachers, int count)? loading,
    TResult Function(List<TeacherModel> teachers, int count, int currentPage,
            String? errorMessage)?
        data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Data value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeachersStateCopyWith<TeachersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeachersStateCopyWith<$Res> {
  factory $TeachersStateCopyWith(
          TeachersState value, $Res Function(TeachersState) then) =
      _$TeachersStateCopyWithImpl<$Res, TeachersState>;
  @useResult
  $Res call({List<TeacherModel> teachers, int count});
}

/// @nodoc
class _$TeachersStateCopyWithImpl<$Res, $Val extends TeachersState>
    implements $TeachersStateCopyWith<$Res> {
  _$TeachersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teachers = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      teachers: null == teachers
          ? _value.teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as List<TeacherModel>,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $TeachersStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TeacherModel> teachers, int count});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$TeachersStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teachers = null,
    Object? count = null,
  }) {
    return _then(_$_Loading(
      teachers: null == teachers
          ? _value._teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as List<TeacherModel>,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading(
      {required final List<TeacherModel> teachers, required this.count})
      : _teachers = teachers,
        super._();

  final List<TeacherModel> _teachers;
  @override
  List<TeacherModel> get teachers {
    if (_teachers is EqualUnmodifiableListView) return _teachers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teachers);
  }

  @override
  final int count;

  @override
  String toString() {
    return 'TeachersState.loading(teachers: $teachers, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            const DeepCollectionEquality().equals(other._teachers, _teachers) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_teachers), count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TeacherModel> teachers, int count) loading,
    required TResult Function(List<TeacherModel> teachers, int count,
            int currentPage, String? errorMessage)
        data,
  }) {
    return loading(teachers, count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TeacherModel> teachers, int count)? loading,
    TResult? Function(List<TeacherModel> teachers, int count, int currentPage,
            String? errorMessage)?
        data,
  }) {
    return loading?.call(teachers, count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TeacherModel> teachers, int count)? loading,
    TResult Function(List<TeacherModel> teachers, int count, int currentPage,
            String? errorMessage)?
        data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(teachers, count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Data value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends TeachersState {
  const factory _Loading(
      {required final List<TeacherModel> teachers,
      required final int count}) = _$_Loading;
  const _Loading._() : super._();

  @override
  List<TeacherModel> get teachers;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $TeachersStateCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TeacherModel> teachers,
      int count,
      int currentPage,
      String? errorMessage});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res>
    extends _$TeachersStateCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teachers = null,
    Object? count = null,
    Object? currentPage = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_Data(
      teachers: null == teachers
          ? _value._teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as List<TeacherModel>,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Data extends _Data {
  _$_Data(
      {required final List<TeacherModel> teachers,
      required this.count,
      required this.currentPage,
      this.errorMessage})
      : _teachers = teachers,
        super._();

  final List<TeacherModel> _teachers;
  @override
  List<TeacherModel> get teachers {
    if (_teachers is EqualUnmodifiableListView) return _teachers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teachers);
  }

  @override
  final int count;
  @override
  final int currentPage;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'TeachersState.data(teachers: $teachers, count: $count, currentPage: $currentPage, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            const DeepCollectionEquality().equals(other._teachers, _teachers) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_teachers),
      count,
      currentPage,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TeacherModel> teachers, int count) loading,
    required TResult Function(List<TeacherModel> teachers, int count,
            int currentPage, String? errorMessage)
        data,
  }) {
    return data(teachers, count, currentPage, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TeacherModel> teachers, int count)? loading,
    TResult? Function(List<TeacherModel> teachers, int count, int currentPage,
            String? errorMessage)?
        data,
  }) {
    return data?.call(teachers, count, currentPage, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TeacherModel> teachers, int count)? loading,
    TResult Function(List<TeacherModel> teachers, int count, int currentPage,
            String? errorMessage)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(teachers, count, currentPage, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Data value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data extends TeachersState {
  factory _Data(
      {required final List<TeacherModel> teachers,
      required final int count,
      required final int currentPage,
      final String? errorMessage}) = _$_Data;
  _Data._() : super._();

  @override
  List<TeacherModel> get teachers;
  @override
  int get count;
  int get currentPage;
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
