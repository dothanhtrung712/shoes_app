// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(bool isLoading) loading,
    required TResult Function(String message, String code) exception,
    required TResult Function() success,
    required TResult Function(String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isLoading)? loading,
    TResult Function(String message, String code)? exception,
    TResult Function()? success,
    TResult Function(String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isLoading)? loading,
    TResult Function(String message, String code)? exception,
    TResult Function()? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) init,
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoginExceptionState value) exception,
    required TResult Function(LoginSuccessState value) success,
    required TResult Function(LoginFailedState value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginInitial value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(LoginExceptionState value)? exception,
    TResult Function(LoginSuccessState value)? success,
    TResult Function(LoginFailedState value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(LoginExceptionState value)? exception,
    TResult Function(LoginSuccessState value)? success,
    TResult Function(LoginFailedState value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class _$$LoginInitialCopyWith<$Res> {
  factory _$$LoginInitialCopyWith(
          _$LoginInitial value, $Res Function(_$LoginInitial) then) =
      __$$LoginInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginInitialCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$LoginInitialCopyWith<$Res> {
  __$$LoginInitialCopyWithImpl(
      _$LoginInitial _value, $Res Function(_$LoginInitial) _then)
      : super(_value, (v) => _then(v as _$LoginInitial));

  @override
  _$LoginInitial get _value => super._value as _$LoginInitial;
}

/// @nodoc

class _$LoginInitial implements LoginInitial {
  const _$LoginInitial();

  @override
  String toString() {
    return 'LoginState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(bool isLoading) loading,
    required TResult Function(String message, String code) exception,
    required TResult Function() success,
    required TResult Function(String message) failed,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isLoading)? loading,
    TResult Function(String message, String code)? exception,
    TResult Function()? success,
    TResult Function(String message)? failed,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isLoading)? loading,
    TResult Function(String message, String code)? exception,
    TResult Function()? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) init,
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoginExceptionState value) exception,
    required TResult Function(LoginSuccessState value) success,
    required TResult Function(LoginFailedState value) failed,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginInitial value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(LoginExceptionState value)? exception,
    TResult Function(LoginSuccessState value)? success,
    TResult Function(LoginFailedState value)? failed,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(LoginExceptionState value)? exception,
    TResult Function(LoginSuccessState value)? success,
    TResult Function(LoginFailedState value)? failed,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class LoginInitial implements LoginState {
  const factory LoginInitial() = _$LoginInitial;
}

/// @nodoc
abstract class _$$LoadingStateCopyWith<$Res> {
  factory _$$LoadingStateCopyWith(
          _$LoadingState value, $Res Function(_$LoadingState) then) =
      __$$LoadingStateCopyWithImpl<$Res>;
  $Res call({bool isLoading});
}

/// @nodoc
class __$$LoadingStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$LoadingStateCopyWith<$Res> {
  __$$LoadingStateCopyWithImpl(
      _$LoadingState _value, $Res Function(_$LoadingState) _then)
      : super(_value, (v) => _then(v as _$LoadingState));

  @override
  _$LoadingState get _value => super._value as _$LoadingState;

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(_$LoadingState(
      isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingState implements LoadingState {
  const _$LoadingState(this.isLoading);

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'LoginState.loading(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$$LoadingStateCopyWith<_$LoadingState> get copyWith =>
      __$$LoadingStateCopyWithImpl<_$LoadingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(bool isLoading) loading,
    required TResult Function(String message, String code) exception,
    required TResult Function() success,
    required TResult Function(String message) failed,
  }) {
    return loading(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isLoading)? loading,
    TResult Function(String message, String code)? exception,
    TResult Function()? success,
    TResult Function(String message)? failed,
  }) {
    return loading?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isLoading)? loading,
    TResult Function(String message, String code)? exception,
    TResult Function()? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) init,
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoginExceptionState value) exception,
    required TResult Function(LoginSuccessState value) success,
    required TResult Function(LoginFailedState value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginInitial value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(LoginExceptionState value)? exception,
    TResult Function(LoginSuccessState value)? success,
    TResult Function(LoginFailedState value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(LoginExceptionState value)? exception,
    TResult Function(LoginSuccessState value)? success,
    TResult Function(LoginFailedState value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements LoginState {
  const factory LoadingState(final bool isLoading) = _$LoadingState;

  bool get isLoading => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$LoadingStateCopyWith<_$LoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginExceptionStateCopyWith<$Res> {
  factory _$$LoginExceptionStateCopyWith(_$LoginExceptionState value,
          $Res Function(_$LoginExceptionState) then) =
      __$$LoginExceptionStateCopyWithImpl<$Res>;
  $Res call({String message, String code});
}

/// @nodoc
class __$$LoginExceptionStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$$LoginExceptionStateCopyWith<$Res> {
  __$$LoginExceptionStateCopyWithImpl(
      _$LoginExceptionState _value, $Res Function(_$LoginExceptionState) _then)
      : super(_value, (v) => _then(v as _$LoginExceptionState));

  @override
  _$LoginExceptionState get _value => super._value as _$LoginExceptionState;

  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
  }) {
    return _then(_$LoginExceptionState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginExceptionState implements LoginExceptionState {
  const _$LoginExceptionState(this.message, this.code);

  @override
  final String message;
  @override
  final String code;

  @override
  String toString() {
    return 'LoginState.exception(message: $message, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginExceptionState &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$$LoginExceptionStateCopyWith<_$LoginExceptionState> get copyWith =>
      __$$LoginExceptionStateCopyWithImpl<_$LoginExceptionState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(bool isLoading) loading,
    required TResult Function(String message, String code) exception,
    required TResult Function() success,
    required TResult Function(String message) failed,
  }) {
    return exception(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isLoading)? loading,
    TResult Function(String message, String code)? exception,
    TResult Function()? success,
    TResult Function(String message)? failed,
  }) {
    return exception?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isLoading)? loading,
    TResult Function(String message, String code)? exception,
    TResult Function()? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) init,
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoginExceptionState value) exception,
    required TResult Function(LoginSuccessState value) success,
    required TResult Function(LoginFailedState value) failed,
  }) {
    return exception(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginInitial value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(LoginExceptionState value)? exception,
    TResult Function(LoginSuccessState value)? success,
    TResult Function(LoginFailedState value)? failed,
  }) {
    return exception?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(LoginExceptionState value)? exception,
    TResult Function(LoginSuccessState value)? success,
    TResult Function(LoginFailedState value)? failed,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this);
    }
    return orElse();
  }
}

abstract class LoginExceptionState implements LoginState {
  const factory LoginExceptionState(final String message, final String code) =
      _$LoginExceptionState;

  String get message => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$LoginExceptionStateCopyWith<_$LoginExceptionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginSuccessStateCopyWith<$Res> {
  factory _$$LoginSuccessStateCopyWith(
          _$LoginSuccessState value, $Res Function(_$LoginSuccessState) then) =
      __$$LoginSuccessStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginSuccessStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$$LoginSuccessStateCopyWith<$Res> {
  __$$LoginSuccessStateCopyWithImpl(
      _$LoginSuccessState _value, $Res Function(_$LoginSuccessState) _then)
      : super(_value, (v) => _then(v as _$LoginSuccessState));

  @override
  _$LoginSuccessState get _value => super._value as _$LoginSuccessState;
}

/// @nodoc

class _$LoginSuccessState implements LoginSuccessState {
  const _$LoginSuccessState();

  @override
  String toString() {
    return 'LoginState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginSuccessState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(bool isLoading) loading,
    required TResult Function(String message, String code) exception,
    required TResult Function() success,
    required TResult Function(String message) failed,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isLoading)? loading,
    TResult Function(String message, String code)? exception,
    TResult Function()? success,
    TResult Function(String message)? failed,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isLoading)? loading,
    TResult Function(String message, String code)? exception,
    TResult Function()? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) init,
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoginExceptionState value) exception,
    required TResult Function(LoginSuccessState value) success,
    required TResult Function(LoginFailedState value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginInitial value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(LoginExceptionState value)? exception,
    TResult Function(LoginSuccessState value)? success,
    TResult Function(LoginFailedState value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(LoginExceptionState value)? exception,
    TResult Function(LoginSuccessState value)? success,
    TResult Function(LoginFailedState value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class LoginSuccessState implements LoginState {
  const factory LoginSuccessState() = _$LoginSuccessState;
}

/// @nodoc
abstract class _$$LoginFailedStateCopyWith<$Res> {
  factory _$$LoginFailedStateCopyWith(
          _$LoginFailedState value, $Res Function(_$LoginFailedState) then) =
      __$$LoginFailedStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$LoginFailedStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$$LoginFailedStateCopyWith<$Res> {
  __$$LoginFailedStateCopyWithImpl(
      _$LoginFailedState _value, $Res Function(_$LoginFailedState) _then)
      : super(_value, (v) => _then(v as _$LoginFailedState));

  @override
  _$LoginFailedState get _value => super._value as _$LoginFailedState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$LoginFailedState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginFailedState implements LoginFailedState {
  const _$LoginFailedState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.failed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFailedState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$LoginFailedStateCopyWith<_$LoginFailedState> get copyWith =>
      __$$LoginFailedStateCopyWithImpl<_$LoginFailedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(bool isLoading) loading,
    required TResult Function(String message, String code) exception,
    required TResult Function() success,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isLoading)? loading,
    TResult Function(String message, String code)? exception,
    TResult Function()? success,
    TResult Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isLoading)? loading,
    TResult Function(String message, String code)? exception,
    TResult Function()? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) init,
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoginExceptionState value) exception,
    required TResult Function(LoginSuccessState value) success,
    required TResult Function(LoginFailedState value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginInitial value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(LoginExceptionState value)? exception,
    TResult Function(LoginSuccessState value)? success,
    TResult Function(LoginFailedState value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(LoginExceptionState value)? exception,
    TResult Function(LoginSuccessState value)? success,
    TResult Function(LoginFailedState value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class LoginFailedState implements LoginState {
  const factory LoginFailedState(final String message) = _$LoginFailedState;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$LoginFailedStateCopyWith<_$LoginFailedState> get copyWith =>
      throw _privateConstructorUsedError;
}
