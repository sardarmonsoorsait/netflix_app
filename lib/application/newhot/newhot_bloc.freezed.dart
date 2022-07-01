// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'newhot_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewhotEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? intialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intialize value) intialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Intialize value)? intialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intialize value)? intialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewhotEventCopyWith<$Res> {
  factory $NewhotEventCopyWith(
          NewhotEvent value, $Res Function(NewhotEvent) then) =
      _$NewhotEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewhotEventCopyWithImpl<$Res> implements $NewhotEventCopyWith<$Res> {
  _$NewhotEventCopyWithImpl(this._value, this._then);

  final NewhotEvent _value;
  // ignore: unused_field
  final $Res Function(NewhotEvent) _then;
}

/// @nodoc
abstract class _$$_IntializeCopyWith<$Res> {
  factory _$$_IntializeCopyWith(
          _$_Intialize value, $Res Function(_$_Intialize) then) =
      __$$_IntializeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IntializeCopyWithImpl<$Res> extends _$NewhotEventCopyWithImpl<$Res>
    implements _$$_IntializeCopyWith<$Res> {
  __$$_IntializeCopyWithImpl(
      _$_Intialize _value, $Res Function(_$_Intialize) _then)
      : super(_value, (v) => _then(v as _$_Intialize));

  @override
  _$_Intialize get _value => super._value as _$_Intialize;
}

/// @nodoc

class _$_Intialize implements _Intialize {
  const _$_Intialize();

  @override
  String toString() {
    return 'NewhotEvent.intialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Intialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intialize,
  }) {
    return intialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? intialize,
  }) {
    return intialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intialize,
    required TResult orElse(),
  }) {
    if (intialize != null) {
      return intialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intialize value) intialize,
  }) {
    return intialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Intialize value)? intialize,
  }) {
    return intialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intialize value)? intialize,
    required TResult orElse(),
  }) {
    if (intialize != null) {
      return intialize(this);
    }
    return orElse();
  }
}

abstract class _Intialize implements NewhotEvent {
  const factory _Intialize() = _$_Intialize;
}

/// @nodoc
mixin _$NewhotState {
  List<Result> get movieList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewhotStateCopyWith<NewhotState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewhotStateCopyWith<$Res> {
  factory $NewhotStateCopyWith(
          NewhotState value, $Res Function(NewhotState) then) =
      _$NewhotStateCopyWithImpl<$Res>;
  $Res call({List<Result> movieList, bool isLoading, bool isError});
}

/// @nodoc
class _$NewhotStateCopyWithImpl<$Res> implements $NewhotStateCopyWith<$Res> {
  _$NewhotStateCopyWithImpl(this._value, this._then);

  final NewhotState _value;
  // ignore: unused_field
  final $Res Function(NewhotState) _then;

  @override
  $Res call({
    Object? movieList = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      movieList: movieList == freezed
          ? _value.movieList
          : movieList // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_NewhotStateCopyWith<$Res>
    implements $NewhotStateCopyWith<$Res> {
  factory _$$_NewhotStateCopyWith(
          _$_NewhotState value, $Res Function(_$_NewhotState) then) =
      __$$_NewhotStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Result> movieList, bool isLoading, bool isError});
}

/// @nodoc
class __$$_NewhotStateCopyWithImpl<$Res> extends _$NewhotStateCopyWithImpl<$Res>
    implements _$$_NewhotStateCopyWith<$Res> {
  __$$_NewhotStateCopyWithImpl(
      _$_NewhotState _value, $Res Function(_$_NewhotState) _then)
      : super(_value, (v) => _then(v as _$_NewhotState));

  @override
  _$_NewhotState get _value => super._value as _$_NewhotState;

  @override
  $Res call({
    Object? movieList = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_$_NewhotState(
      movieList: movieList == freezed
          ? _value._movieList
          : movieList // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NewhotState implements _NewhotState {
  const _$_NewhotState(
      {required final List<Result> movieList,
      required this.isLoading,
      required this.isError})
      : _movieList = movieList;

  final List<Result> _movieList;
  @override
  List<Result> get movieList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movieList);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'NewhotState(movieList: $movieList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewhotState &&
            const DeepCollectionEquality()
                .equals(other._movieList, _movieList) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_movieList),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$$_NewhotStateCopyWith<_$_NewhotState> get copyWith =>
      __$$_NewhotStateCopyWithImpl<_$_NewhotState>(this, _$identity);
}

abstract class _NewhotState implements NewhotState {
  const factory _NewhotState(
      {required final List<Result> movieList,
      required final bool isLoading,
      required final bool isError}) = _$_NewhotState;

  @override
  List<Result> get movieList => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isError => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NewhotStateCopyWith<_$_NewhotState> get copyWith =>
      throw _privateConstructorUsedError;
}
