// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'go_router_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GoRouterState {
  bool? get isAlreadyOnboaring => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GoRouterStateCopyWith<GoRouterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoRouterStateCopyWith<$Res> {
  factory $GoRouterStateCopyWith(
          GoRouterState value, $Res Function(GoRouterState) then) =
      _$GoRouterStateCopyWithImpl<$Res, GoRouterState>;
  @useResult
  $Res call({bool? isAlreadyOnboaring});
}

/// @nodoc
class _$GoRouterStateCopyWithImpl<$Res, $Val extends GoRouterState>
    implements $GoRouterStateCopyWith<$Res> {
  _$GoRouterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAlreadyOnboaring = freezed,
  }) {
    return _then(_value.copyWith(
      isAlreadyOnboaring: freezed == isAlreadyOnboaring
          ? _value.isAlreadyOnboaring
          : isAlreadyOnboaring // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoRouterStateImplCopyWith<$Res>
    implements $GoRouterStateCopyWith<$Res> {
  factory _$$GoRouterStateImplCopyWith(
          _$GoRouterStateImpl value, $Res Function(_$GoRouterStateImpl) then) =
      __$$GoRouterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isAlreadyOnboaring});
}

/// @nodoc
class __$$GoRouterStateImplCopyWithImpl<$Res>
    extends _$GoRouterStateCopyWithImpl<$Res, _$GoRouterStateImpl>
    implements _$$GoRouterStateImplCopyWith<$Res> {
  __$$GoRouterStateImplCopyWithImpl(
      _$GoRouterStateImpl _value, $Res Function(_$GoRouterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAlreadyOnboaring = freezed,
  }) {
    return _then(_$GoRouterStateImpl(
      isAlreadyOnboaring: freezed == isAlreadyOnboaring
          ? _value.isAlreadyOnboaring
          : isAlreadyOnboaring // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$GoRouterStateImpl extends _GoRouterState {
  _$GoRouterStateImpl({this.isAlreadyOnboaring}) : super._();

  @override
  final bool? isAlreadyOnboaring;

  @override
  String toString() {
    return 'GoRouterState(isAlreadyOnboaring: $isAlreadyOnboaring)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoRouterStateImpl &&
            (identical(other.isAlreadyOnboaring, isAlreadyOnboaring) ||
                other.isAlreadyOnboaring == isAlreadyOnboaring));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAlreadyOnboaring);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoRouterStateImplCopyWith<_$GoRouterStateImpl> get copyWith =>
      __$$GoRouterStateImplCopyWithImpl<_$GoRouterStateImpl>(this, _$identity);
}

abstract class _GoRouterState extends GoRouterState {
  factory _GoRouterState({final bool? isAlreadyOnboaring}) =
      _$GoRouterStateImpl;
  _GoRouterState._() : super._();

  @override
  bool? get isAlreadyOnboaring;
  @override
  @JsonKey(ignore: true)
  _$$GoRouterStateImplCopyWith<_$GoRouterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
