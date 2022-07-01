// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fastlough_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FastloughEvent {
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
    required TResult Function(Intialize value) intialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Intialize value)? intialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Intialize value)? intialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastloughEventCopyWith<$Res> {
  factory $FastloughEventCopyWith(
          FastloughEvent value, $Res Function(FastloughEvent) then) =
      _$FastloughEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FastloughEventCopyWithImpl<$Res>
    implements $FastloughEventCopyWith<$Res> {
  _$FastloughEventCopyWithImpl(this._value, this._then);

  final FastloughEvent _value;
  // ignore: unused_field
  final $Res Function(FastloughEvent) _then;
}

/// @nodoc
abstract class _$$IntializeCopyWith<$Res> {
  factory _$$IntializeCopyWith(
          _$Intialize value, $Res Function(_$Intialize) then) =
      __$$IntializeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IntializeCopyWithImpl<$Res> extends _$FastloughEventCopyWithImpl<$Res>
    implements _$$IntializeCopyWith<$Res> {
  __$$IntializeCopyWithImpl(
      _$Intialize _value, $Res Function(_$Intialize) _then)
      : super(_value, (v) => _then(v as _$Intialize));

  @override
  _$Intialize get _value => super._value as _$Intialize;
}

/// @nodoc

class _$Intialize with DiagnosticableTreeMixin implements Intialize {
  const _$Intialize();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FastloughEvent.intialize()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'FastloughEvent.intialize'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Intialize);
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
    required TResult Function(Intialize value) intialize,
  }) {
    return intialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Intialize value)? intialize,
  }) {
    return intialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Intialize value)? intialize,
    required TResult orElse(),
  }) {
    if (intialize != null) {
      return intialize(this);
    }
    return orElse();
  }
}

abstract class Intialize implements FastloughEvent {
  const factory Intialize() = _$Intialize;
}

/// @nodoc
mixin _$FastloughState {
  List<Downloads> get imagelist => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FastloughStateCopyWith<FastloughState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastloughStateCopyWith<$Res> {
  factory $FastloughStateCopyWith(
          FastloughState value, $Res Function(FastloughState) then) =
      _$FastloughStateCopyWithImpl<$Res>;
  $Res call({List<Downloads> imagelist, bool isLoading, bool isError});
}

/// @nodoc
class _$FastloughStateCopyWithImpl<$Res>
    implements $FastloughStateCopyWith<$Res> {
  _$FastloughStateCopyWithImpl(this._value, this._then);

  final FastloughState _value;
  // ignore: unused_field
  final $Res Function(FastloughState) _then;

  @override
  $Res call({
    Object? imagelist = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      imagelist: imagelist == freezed
          ? _value.imagelist
          : imagelist // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
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
abstract class _$$_FastloughStateCopyWith<$Res>
    implements $FastloughStateCopyWith<$Res> {
  factory _$$_FastloughStateCopyWith(
          _$_FastloughState value, $Res Function(_$_FastloughState) then) =
      __$$_FastloughStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Downloads> imagelist, bool isLoading, bool isError});
}

/// @nodoc
class __$$_FastloughStateCopyWithImpl<$Res>
    extends _$FastloughStateCopyWithImpl<$Res>
    implements _$$_FastloughStateCopyWith<$Res> {
  __$$_FastloughStateCopyWithImpl(
      _$_FastloughState _value, $Res Function(_$_FastloughState) _then)
      : super(_value, (v) => _then(v as _$_FastloughState));

  @override
  _$_FastloughState get _value => super._value as _$_FastloughState;

  @override
  $Res call({
    Object? imagelist = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_$_FastloughState(
      imagelist: imagelist == freezed
          ? _value._imagelist
          : imagelist // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
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

class _$_FastloughState
    with DiagnosticableTreeMixin
    implements _FastloughState {
  const _$_FastloughState(
      {required final List<Downloads> imagelist,
      required this.isLoading,
      required this.isError})
      : _imagelist = imagelist;

  final List<Downloads> _imagelist;
  @override
  List<Downloads> get imagelist {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imagelist);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FastloughState(imagelist: $imagelist, isLoading: $isLoading, isError: $isError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FastloughState'))
      ..add(DiagnosticsProperty('imagelist', imagelist))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isError', isError));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FastloughState &&
            const DeepCollectionEquality()
                .equals(other._imagelist, _imagelist) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_imagelist),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$$_FastloughStateCopyWith<_$_FastloughState> get copyWith =>
      __$$_FastloughStateCopyWithImpl<_$_FastloughState>(this, _$identity);
}

abstract class _FastloughState implements FastloughState {
  const factory _FastloughState(
      {required final List<Downloads> imagelist,
      required final bool isLoading,
      required final bool isError}) = _$_FastloughState;

  @override
  List<Downloads> get imagelist => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isError => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FastloughStateCopyWith<_$_FastloughState> get copyWith =>
      throw _privateConstructorUsedError;
}
