// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) unAuthenticated,
    required TResult Function() authenticated,
    required TResult Function() authenticating,
    required TResult Function(String? message) signupFailed,
    required TResult Function() signupSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? unAuthenticated,
    TResult? Function()? authenticated,
    TResult? Function()? authenticating,
    TResult? Function(String? message)? signupFailed,
    TResult? Function()? signupSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? unAuthenticated,
    TResult Function()? authenticated,
    TResult Function()? authenticating,
    TResult Function(String? message)? signupFailed,
    TResult Function()? signupSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_SignupFailed value) signupFailed,
    required TResult Function(_SignupSuccess value) signupSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_SignupFailed value)? signupFailed,
    TResult? Function(_SignupSuccess value)? signupSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_SignupFailed value)? signupFailed,
    TResult Function(_SignupSuccess value)? signupSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UnAuthenticatedCopyWith<$Res> {
  factory _$$_UnAuthenticatedCopyWith(
          _$_UnAuthenticated value, $Res Function(_$_UnAuthenticated) then) =
      __$$_UnAuthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_UnAuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_UnAuthenticated>
    implements _$$_UnAuthenticatedCopyWith<$Res> {
  __$$_UnAuthenticatedCopyWithImpl(
      _$_UnAuthenticated _value, $Res Function(_$_UnAuthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_UnAuthenticated(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UnAuthenticated extends _UnAuthenticated {
  const _$_UnAuthenticated({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthState.unAuthenticated(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnAuthenticated &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnAuthenticatedCopyWith<_$_UnAuthenticated> get copyWith =>
      __$$_UnAuthenticatedCopyWithImpl<_$_UnAuthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) unAuthenticated,
    required TResult Function() authenticated,
    required TResult Function() authenticating,
    required TResult Function(String? message) signupFailed,
    required TResult Function() signupSuccess,
  }) {
    return unAuthenticated(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? unAuthenticated,
    TResult? Function()? authenticated,
    TResult? Function()? authenticating,
    TResult? Function(String? message)? signupFailed,
    TResult? Function()? signupSuccess,
  }) {
    return unAuthenticated?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? unAuthenticated,
    TResult Function()? authenticated,
    TResult Function()? authenticating,
    TResult Function(String? message)? signupFailed,
    TResult Function()? signupSuccess,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_SignupFailed value) signupFailed,
    required TResult Function(_SignupSuccess value) signupSuccess,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_SignupFailed value)? signupFailed,
    TResult? Function(_SignupSuccess value)? signupSuccess,
  }) {
    return unAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_SignupFailed value)? signupFailed,
    TResult Function(_SignupSuccess value)? signupSuccess,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _UnAuthenticated extends AuthState {
  const factory _UnAuthenticated({final String? message}) = _$_UnAuthenticated;
  const _UnAuthenticated._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$_UnAuthenticatedCopyWith<_$_UnAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthenticatedCopyWith<$Res> {
  factory _$$_AuthenticatedCopyWith(
          _$_Authenticated value, $Res Function(_$_Authenticated) then) =
      __$$_AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Authenticated>
    implements _$$_AuthenticatedCopyWith<$Res> {
  __$$_AuthenticatedCopyWithImpl(
      _$_Authenticated _value, $Res Function(_$_Authenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Authenticated extends _Authenticated {
  const _$_Authenticated() : super._();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) unAuthenticated,
    required TResult Function() authenticated,
    required TResult Function() authenticating,
    required TResult Function(String? message) signupFailed,
    required TResult Function() signupSuccess,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? unAuthenticated,
    TResult? Function()? authenticated,
    TResult? Function()? authenticating,
    TResult? Function(String? message)? signupFailed,
    TResult? Function()? signupSuccess,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? unAuthenticated,
    TResult Function()? authenticated,
    TResult Function()? authenticating,
    TResult Function(String? message)? signupFailed,
    TResult Function()? signupSuccess,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_SignupFailed value) signupFailed,
    required TResult Function(_SignupSuccess value) signupSuccess,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_SignupFailed value)? signupFailed,
    TResult? Function(_SignupSuccess value)? signupSuccess,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_SignupFailed value)? signupFailed,
    TResult Function(_SignupSuccess value)? signupSuccess,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated extends AuthState {
  const factory _Authenticated() = _$_Authenticated;
  const _Authenticated._() : super._();
}

/// @nodoc
abstract class _$$_AuthenticatingCopyWith<$Res> {
  factory _$$_AuthenticatingCopyWith(
          _$_Authenticating value, $Res Function(_$_Authenticating) then) =
      __$$_AuthenticatingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticatingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Authenticating>
    implements _$$_AuthenticatingCopyWith<$Res> {
  __$$_AuthenticatingCopyWithImpl(
      _$_Authenticating _value, $Res Function(_$_Authenticating) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Authenticating extends _Authenticating {
  const _$_Authenticating() : super._();

  @override
  String toString() {
    return 'AuthState.authenticating()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Authenticating);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) unAuthenticated,
    required TResult Function() authenticated,
    required TResult Function() authenticating,
    required TResult Function(String? message) signupFailed,
    required TResult Function() signupSuccess,
  }) {
    return authenticating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? unAuthenticated,
    TResult? Function()? authenticated,
    TResult? Function()? authenticating,
    TResult? Function(String? message)? signupFailed,
    TResult? Function()? signupSuccess,
  }) {
    return authenticating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? unAuthenticated,
    TResult Function()? authenticated,
    TResult Function()? authenticating,
    TResult Function(String? message)? signupFailed,
    TResult Function()? signupSuccess,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_SignupFailed value) signupFailed,
    required TResult Function(_SignupSuccess value) signupSuccess,
  }) {
    return authenticating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_SignupFailed value)? signupFailed,
    TResult? Function(_SignupSuccess value)? signupSuccess,
  }) {
    return authenticating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_SignupFailed value)? signupFailed,
    TResult Function(_SignupSuccess value)? signupSuccess,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating(this);
    }
    return orElse();
  }
}

abstract class _Authenticating extends AuthState {
  const factory _Authenticating() = _$_Authenticating;
  const _Authenticating._() : super._();
}

/// @nodoc
abstract class _$$_SignupFailedCopyWith<$Res> {
  factory _$$_SignupFailedCopyWith(
          _$_SignupFailed value, $Res Function(_$_SignupFailed) then) =
      __$$_SignupFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_SignupFailedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_SignupFailed>
    implements _$$_SignupFailedCopyWith<$Res> {
  __$$_SignupFailedCopyWithImpl(
      _$_SignupFailed _value, $Res Function(_$_SignupFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_SignupFailed(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SignupFailed extends _SignupFailed {
  const _$_SignupFailed(this.message) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthState.signupFailed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignupFailed &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignupFailedCopyWith<_$_SignupFailed> get copyWith =>
      __$$_SignupFailedCopyWithImpl<_$_SignupFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) unAuthenticated,
    required TResult Function() authenticated,
    required TResult Function() authenticating,
    required TResult Function(String? message) signupFailed,
    required TResult Function() signupSuccess,
  }) {
    return signupFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? unAuthenticated,
    TResult? Function()? authenticated,
    TResult? Function()? authenticating,
    TResult? Function(String? message)? signupFailed,
    TResult? Function()? signupSuccess,
  }) {
    return signupFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? unAuthenticated,
    TResult Function()? authenticated,
    TResult Function()? authenticating,
    TResult Function(String? message)? signupFailed,
    TResult Function()? signupSuccess,
    required TResult orElse(),
  }) {
    if (signupFailed != null) {
      return signupFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_SignupFailed value) signupFailed,
    required TResult Function(_SignupSuccess value) signupSuccess,
  }) {
    return signupFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_SignupFailed value)? signupFailed,
    TResult? Function(_SignupSuccess value)? signupSuccess,
  }) {
    return signupFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_SignupFailed value)? signupFailed,
    TResult Function(_SignupSuccess value)? signupSuccess,
    required TResult orElse(),
  }) {
    if (signupFailed != null) {
      return signupFailed(this);
    }
    return orElse();
  }
}

abstract class _SignupFailed extends AuthState {
  const factory _SignupFailed(final String? message) = _$_SignupFailed;
  const _SignupFailed._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$_SignupFailedCopyWith<_$_SignupFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignupSuccessCopyWith<$Res> {
  factory _$$_SignupSuccessCopyWith(
          _$_SignupSuccess value, $Res Function(_$_SignupSuccess) then) =
      __$$_SignupSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignupSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_SignupSuccess>
    implements _$$_SignupSuccessCopyWith<$Res> {
  __$$_SignupSuccessCopyWithImpl(
      _$_SignupSuccess _value, $Res Function(_$_SignupSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignupSuccess extends _SignupSuccess {
  const _$_SignupSuccess() : super._();

  @override
  String toString() {
    return 'AuthState.signupSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignupSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) unAuthenticated,
    required TResult Function() authenticated,
    required TResult Function() authenticating,
    required TResult Function(String? message) signupFailed,
    required TResult Function() signupSuccess,
  }) {
    return signupSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? unAuthenticated,
    TResult? Function()? authenticated,
    TResult? Function()? authenticating,
    TResult? Function(String? message)? signupFailed,
    TResult? Function()? signupSuccess,
  }) {
    return signupSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? unAuthenticated,
    TResult Function()? authenticated,
    TResult Function()? authenticating,
    TResult Function(String? message)? signupFailed,
    TResult Function()? signupSuccess,
    required TResult orElse(),
  }) {
    if (signupSuccess != null) {
      return signupSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_SignupFailed value) signupFailed,
    required TResult Function(_SignupSuccess value) signupSuccess,
  }) {
    return signupSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_SignupFailed value)? signupFailed,
    TResult? Function(_SignupSuccess value)? signupSuccess,
  }) {
    return signupSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_SignupFailed value)? signupFailed,
    TResult Function(_SignupSuccess value)? signupSuccess,
    required TResult orElse(),
  }) {
    if (signupSuccess != null) {
      return signupSuccess(this);
    }
    return orElse();
  }
}

abstract class _SignupSuccess extends AuthState {
  const factory _SignupSuccess() = _$_SignupSuccess;
  const _SignupSuccess._() : super._();
}
