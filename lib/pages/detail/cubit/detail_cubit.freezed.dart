// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(bool isLoading) loading,
    required TResult Function(String message, String code) exception,
    required TResult Function(LoadCardItemResult result) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isLoading)? loading,
    TResult Function(String message, String code)? exception,
    TResult Function(LoadCardItemResult result)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isLoading)? loading,
    TResult Function(String message, String code)? exception,
    TResult Function(LoadCardItemResult result)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailInitial value) init,
    required TResult Function(LoadingState value) loading,
    required TResult Function(DetailExceptionState value) exception,
    required TResult Function(DetailLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DetailInitial value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(DetailExceptionState value)? exception,
    TResult Function(DetailLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailInitial value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(DetailExceptionState value)? exception,
    TResult Function(DetailLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailStateCopyWith<$Res> {
  factory $DetailStateCopyWith(
          DetailState value, $Res Function(DetailState) then) =
      _$DetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailStateCopyWithImpl<$Res> implements $DetailStateCopyWith<$Res> {
  _$DetailStateCopyWithImpl(this._value, this._then);

  final DetailState _value;
  // ignore: unused_field
  final $Res Function(DetailState) _then;
}

/// @nodoc
abstract class _$$DetailInitialCopyWith<$Res> {
  factory _$$DetailInitialCopyWith(
          _$DetailInitial value, $Res Function(_$DetailInitial) then) =
      __$$DetailInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DetailInitialCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res>
    implements _$$DetailInitialCopyWith<$Res> {
  __$$DetailInitialCopyWithImpl(
      _$DetailInitial _value, $Res Function(_$DetailInitial) _then)
      : super(_value, (v) => _then(v as _$DetailInitial));

  @override
  _$DetailInitial get _value => super._value as _$DetailInitial;
}

/// @nodoc

class _$DetailInitial implements DetailInitial {
  const _$DetailInitial();

  @override
  String toString() {
    return 'DetailState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DetailInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(bool isLoading) loading,
    required TResult Function(String message, String code) exception,
    required TResult Function(LoadCardItemResult result) loaded,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isLoading)? loading,
    TResult Function(String message, String code)? exception,
    TResult Function(LoadCardItemResult result)? loaded,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isLoading)? loading,
    TResult Function(String message, String code)? exception,
    TResult Function(LoadCardItemResult result)? loaded,
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
    required TResult Function(DetailInitial value) init,
    required TResult Function(LoadingState value) loading,
    required TResult Function(DetailExceptionState value) exception,
    required TResult Function(DetailLoadedState value) loaded,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DetailInitial value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(DetailExceptionState value)? exception,
    TResult Function(DetailLoadedState value)? loaded,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailInitial value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(DetailExceptionState value)? exception,
    TResult Function(DetailLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class DetailInitial implements DetailState {
  const factory DetailInitial() = _$DetailInitial;
}

/// @nodoc
abstract class _$$LoadingStateCopyWith<$Res> {
  factory _$$LoadingStateCopyWith(
          _$LoadingState value, $Res Function(_$LoadingState) then) =
      __$$LoadingStateCopyWithImpl<$Res>;
  $Res call({bool isLoading});
}

/// @nodoc
class __$$LoadingStateCopyWithImpl<$Res> extends _$DetailStateCopyWithImpl<$Res>
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
    return 'DetailState.loading(isLoading: $isLoading)';
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
    required TResult Function(LoadCardItemResult result) loaded,
  }) {
    return loading(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isLoading)? loading,
    TResult Function(String message, String code)? exception,
    TResult Function(LoadCardItemResult result)? loaded,
  }) {
    return loading?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isLoading)? loading,
    TResult Function(String message, String code)? exception,
    TResult Function(LoadCardItemResult result)? loaded,
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
    required TResult Function(DetailInitial value) init,
    required TResult Function(LoadingState value) loading,
    required TResult Function(DetailExceptionState value) exception,
    required TResult Function(DetailLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DetailInitial value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(DetailExceptionState value)? exception,
    TResult Function(DetailLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailInitial value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(DetailExceptionState value)? exception,
    TResult Function(DetailLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements DetailState {
  const factory LoadingState(final bool isLoading) = _$LoadingState;

  bool get isLoading => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$LoadingStateCopyWith<_$LoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailExceptionStateCopyWith<$Res> {
  factory _$$DetailExceptionStateCopyWith(_$DetailExceptionState value,
          $Res Function(_$DetailExceptionState) then) =
      __$$DetailExceptionStateCopyWithImpl<$Res>;
  $Res call({String message, String code});
}

/// @nodoc
class __$$DetailExceptionStateCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res>
    implements _$$DetailExceptionStateCopyWith<$Res> {
  __$$DetailExceptionStateCopyWithImpl(_$DetailExceptionState _value,
      $Res Function(_$DetailExceptionState) _then)
      : super(_value, (v) => _then(v as _$DetailExceptionState));

  @override
  _$DetailExceptionState get _value => super._value as _$DetailExceptionState;

  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
  }) {
    return _then(_$DetailExceptionState(
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

class _$DetailExceptionState implements DetailExceptionState {
  const _$DetailExceptionState(this.message, this.code);

  @override
  final String message;
  @override
  final String code;

  @override
  String toString() {
    return 'DetailState.exception(message: $message, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailExceptionState &&
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
  _$$DetailExceptionStateCopyWith<_$DetailExceptionState> get copyWith =>
      __$$DetailExceptionStateCopyWithImpl<_$DetailExceptionState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(bool isLoading) loading,
    required TResult Function(String message, String code) exception,
    required TResult Function(LoadCardItemResult result) loaded,
  }) {
    return exception(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isLoading)? loading,
    TResult Function(String message, String code)? exception,
    TResult Function(LoadCardItemResult result)? loaded,
  }) {
    return exception?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isLoading)? loading,
    TResult Function(String message, String code)? exception,
    TResult Function(LoadCardItemResult result)? loaded,
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
    required TResult Function(DetailInitial value) init,
    required TResult Function(LoadingState value) loading,
    required TResult Function(DetailExceptionState value) exception,
    required TResult Function(DetailLoadedState value) loaded,
  }) {
    return exception(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DetailInitial value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(DetailExceptionState value)? exception,
    TResult Function(DetailLoadedState value)? loaded,
  }) {
    return exception?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailInitial value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(DetailExceptionState value)? exception,
    TResult Function(DetailLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this);
    }
    return orElse();
  }
}

abstract class DetailExceptionState implements DetailState {
  const factory DetailExceptionState(final String message, final String code) =
      _$DetailExceptionState;

  String get message => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DetailExceptionStateCopyWith<_$DetailExceptionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailLoadedStateCopyWith<$Res> {
  factory _$$DetailLoadedStateCopyWith(
          _$DetailLoadedState value, $Res Function(_$DetailLoadedState) then) =
      __$$DetailLoadedStateCopyWithImpl<$Res>;
  $Res call({LoadCardItemResult result});
}

/// @nodoc
class __$$DetailLoadedStateCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res>
    implements _$$DetailLoadedStateCopyWith<$Res> {
  __$$DetailLoadedStateCopyWithImpl(
      _$DetailLoadedState _value, $Res Function(_$DetailLoadedState) _then)
      : super(_value, (v) => _then(v as _$DetailLoadedState));

  @override
  _$DetailLoadedState get _value => super._value as _$DetailLoadedState;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$DetailLoadedState(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as LoadCardItemResult,
    ));
  }
}

/// @nodoc

class _$DetailLoadedState implements DetailLoadedState {
  const _$DetailLoadedState(this.result);

  @override
  final LoadCardItemResult result;

  @override
  String toString() {
    return 'DetailState.loaded(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailLoadedState &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$DetailLoadedStateCopyWith<_$DetailLoadedState> get copyWith =>
      __$$DetailLoadedStateCopyWithImpl<_$DetailLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(bool isLoading) loading,
    required TResult Function(String message, String code) exception,
    required TResult Function(LoadCardItemResult result) loaded,
  }) {
    return loaded(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isLoading)? loading,
    TResult Function(String message, String code)? exception,
    TResult Function(LoadCardItemResult result)? loaded,
  }) {
    return loaded?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isLoading)? loading,
    TResult Function(String message, String code)? exception,
    TResult Function(LoadCardItemResult result)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailInitial value) init,
    required TResult Function(LoadingState value) loading,
    required TResult Function(DetailExceptionState value) exception,
    required TResult Function(DetailLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DetailInitial value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(DetailExceptionState value)? exception,
    TResult Function(DetailLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailInitial value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(DetailExceptionState value)? exception,
    TResult Function(DetailLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class DetailLoadedState implements DetailState {
  const factory DetailLoadedState(final LoadCardItemResult result) =
      _$DetailLoadedState;

  LoadCardItemResult get result => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DetailLoadedStateCopyWith<_$DetailLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
