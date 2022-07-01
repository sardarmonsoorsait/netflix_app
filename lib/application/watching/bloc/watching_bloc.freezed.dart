// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'watching_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WatchingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? intialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Intialized value) intialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Intialized value)? intialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Intialized value)? intialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchingEventCopyWith<$Res> {
  factory $WatchingEventCopyWith(
          WatchingEvent value, $Res Function(WatchingEvent) then) =
      _$WatchingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchingEventCopyWithImpl<$Res>
    implements $WatchingEventCopyWith<$Res> {
  _$WatchingEventCopyWithImpl(this._value, this._then);

  final WatchingEvent _value;
  // ignore: unused_field
  final $Res Function(WatchingEvent) _then;
}

/// @nodoc
abstract class _$$IntializedCopyWith<$Res> {
  factory _$$IntializedCopyWith(
          _$Intialized value, $Res Function(_$Intialized) then) =
      __$$IntializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IntializedCopyWithImpl<$Res> extends _$WatchingEventCopyWithImpl<$Res>
    implements _$$IntializedCopyWith<$Res> {
  __$$IntializedCopyWithImpl(
      _$Intialized _value, $Res Function(_$Intialized) _then)
      : super(_value, (v) => _then(v as _$Intialized));

  @override
  _$Intialized get _value => super._value as _$Intialized;
}

/// @nodoc

class _$Intialized implements Intialized {
  const _$Intialized();

  @override
  String toString() {
    return 'WatchingEvent.intialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Intialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intialized,
  }) {
    return intialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? intialized,
  }) {
    return intialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intialized,
    required TResult orElse(),
  }) {
    if (intialized != null) {
      return intialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Intialized value) intialized,
  }) {
    return intialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Intialized value)? intialized,
  }) {
    return intialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Intialized value)? intialized,
    required TResult orElse(),
  }) {
    if (intialized != null) {
      return intialized(this);
    }
    return orElse();
  }
}

abstract class Intialized implements WatchingEvent {
  const factory Intialized() = _$Intialized;
}

/// @nodoc
mixin _$WatchingState {
  List<Result> get tvList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WatchingStateCopyWith<WatchingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchingStateCopyWith<$Res> {
  factory $WatchingStateCopyWith(
          WatchingState value, $Res Function(WatchingState) then) =
      _$WatchingStateCopyWithImpl<$Res>;
  $Res call({List<Result> tvList, bool isLoading, bool isError});
}

/// @nodoc
class _$WatchingStateCopyWithImpl<$Res>
    implements $WatchingStateCopyWith<$Res> {
  _$WatchingStateCopyWithImpl(this._value, this._then);

  final WatchingState _value;
  // ignore: unused_field
  final $Res Function(WatchingState) _then;

  @override
  $Res call({
    Object? tvList = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      tvList: tvList == freezed
          ? _value.tvList
          : tvList // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_WatchingStateCopyWith<$Res>
    implements $WatchingStateCopyWith<$Res> {
  factory _$$_WatchingStateCopyWith(
          _$_WatchingState value, $Res Function(_$_WatchingState) then) =
      __$$_WatchingStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Result> tvList, bool isLoading, bool isError});
}

/// @nodoc
class __$$_WatchingStateCopyWithImpl<$Res>
    extends _$WatchingStateCopyWithImpl<$Res>
    implements _$$_WatchingStateCopyWith<$Res> {
  __$$_WatchingStateCopyWithImpl(
      _$_WatchingState _value, $Res Function(_$_WatchingState) _then)
      : super(_value, (v) => _then(v as _$_WatchingState));

  @override
  _$_WatchingState get _value => super._value as _$_WatchingState;

  @override
  $Res call({
    Object? tvList = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_$_WatchingState(
      tvList: tvList == freezed
          ? _value._tvList
          : tvList // ignore: cast_nullable_to_non_nullable
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

class _$_WatchingState implements _WatchingState {
  const _$_WatchingState(
      {required final List<Result> tvList,
      required this.isLoading,
      required this.isError})
      : _tvList = tvList;

  final List<Result> _tvList;
  @override
  List<Result> get tvList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tvList);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'WatchingState(tvList: $tvList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WatchingState &&
            const DeepCollectionEquality().equals(other._tvList, _tvList) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tvList),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$$_WatchingStateCopyWith<_$_WatchingState> get copyWith =>
      __$$_WatchingStateCopyWithImpl<_$_WatchingState>(this, _$identity);
}

abstract class _WatchingState implements WatchingState {
  const factory _WatchingState(
      {required final List<Result> tvList,
      required final bool isLoading,
      required final bool isError}) = _$_WatchingState;

  @override
  List<Result> get tvList => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isError => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_WatchingStateCopyWith<_$_WatchingState> get copyWith =>
      throw _privateConstructorUsedError;
}
