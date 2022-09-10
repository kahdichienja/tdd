// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'get_users_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetUsersStateTearOff {
  const _$GetUsersStateTearOff();

  _InitialGetUsersState initial({required GetUsersStatePayload payload}) {
    return _InitialGetUsersState(
      payload: payload,
    );
  }

  _LoadingGetUsersState laoding({required GetUsersStatePayload payload}) {
    return _LoadingGetUsersState(
      payload: payload,
    );
  }

  _ErrorGetUsersState error({required GetUsersStatePayload payload}) {
    return _ErrorGetUsersState(
      payload: payload,
    );
  }

  _LoadedGetUsersState laoded({required GetUsersStatePayload payload}) {
    return _LoadedGetUsersState(
      payload: payload,
    );
  }
}

/// @nodoc
const $GetUsersState = _$GetUsersStateTearOff();

/// @nodoc
mixin _$GetUsersState {
  GetUsersStatePayload get payload => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetUsersStatePayload payload) initial,
    required TResult Function(GetUsersStatePayload payload) laoding,
    required TResult Function(GetUsersStatePayload payload) error,
    required TResult Function(GetUsersStatePayload payload) laoded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetUsersStatePayload payload)? initial,
    TResult Function(GetUsersStatePayload payload)? laoding,
    TResult Function(GetUsersStatePayload payload)? error,
    TResult Function(GetUsersStatePayload payload)? laoded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialGetUsersState value) initial,
    required TResult Function(_LoadingGetUsersState value) laoding,
    required TResult Function(_ErrorGetUsersState value) error,
    required TResult Function(_LoadedGetUsersState value) laoded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialGetUsersState value)? initial,
    TResult Function(_LoadingGetUsersState value)? laoding,
    TResult Function(_ErrorGetUsersState value)? error,
    TResult Function(_LoadedGetUsersState value)? laoded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetUsersStateCopyWith<GetUsersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUsersStateCopyWith<$Res> {
  factory $GetUsersStateCopyWith(
          GetUsersState value, $Res Function(GetUsersState) then) =
      _$GetUsersStateCopyWithImpl<$Res>;
  $Res call({GetUsersStatePayload payload});

  $GetUsersStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$GetUsersStateCopyWithImpl<$Res>
    implements $GetUsersStateCopyWith<$Res> {
  _$GetUsersStateCopyWithImpl(this._value, this._then);

  final GetUsersState _value;
  // ignore: unused_field
  final $Res Function(GetUsersState) _then;

  @override
  $Res call({
    Object? payload = freezed,
  }) {
    return _then(_value.copyWith(
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as GetUsersStatePayload,
    ));
  }

  @override
  $GetUsersStatePayloadCopyWith<$Res> get payload {
    return $GetUsersStatePayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc
abstract class _$InitialGetUsersStateCopyWith<$Res>
    implements $GetUsersStateCopyWith<$Res> {
  factory _$InitialGetUsersStateCopyWith(_InitialGetUsersState value,
          $Res Function(_InitialGetUsersState) then) =
      __$InitialGetUsersStateCopyWithImpl<$Res>;
  @override
  $Res call({GetUsersStatePayload payload});

  @override
  $GetUsersStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$InitialGetUsersStateCopyWithImpl<$Res>
    extends _$GetUsersStateCopyWithImpl<$Res>
    implements _$InitialGetUsersStateCopyWith<$Res> {
  __$InitialGetUsersStateCopyWithImpl(
      _InitialGetUsersState _value, $Res Function(_InitialGetUsersState) _then)
      : super(_value, (v) => _then(v as _InitialGetUsersState));

  @override
  _InitialGetUsersState get _value => super._value as _InitialGetUsersState;

  @override
  $Res call({
    Object? payload = freezed,
  }) {
    return _then(_InitialGetUsersState(
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as GetUsersStatePayload,
    ));
  }
}

/// @nodoc

class _$_InitialGetUsersState implements _InitialGetUsersState {
  const _$_InitialGetUsersState({required this.payload});

  @override
  final GetUsersStatePayload payload;

  @override
  String toString() {
    return 'GetUsersState.initial(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitialGetUsersState &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$InitialGetUsersStateCopyWith<_InitialGetUsersState> get copyWith =>
      __$InitialGetUsersStateCopyWithImpl<_InitialGetUsersState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetUsersStatePayload payload) initial,
    required TResult Function(GetUsersStatePayload payload) laoding,
    required TResult Function(GetUsersStatePayload payload) error,
    required TResult Function(GetUsersStatePayload payload) laoded,
  }) {
    return initial(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetUsersStatePayload payload)? initial,
    TResult Function(GetUsersStatePayload payload)? laoding,
    TResult Function(GetUsersStatePayload payload)? error,
    TResult Function(GetUsersStatePayload payload)? laoded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialGetUsersState value) initial,
    required TResult Function(_LoadingGetUsersState value) laoding,
    required TResult Function(_ErrorGetUsersState value) error,
    required TResult Function(_LoadedGetUsersState value) laoded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialGetUsersState value)? initial,
    TResult Function(_LoadingGetUsersState value)? laoding,
    TResult Function(_ErrorGetUsersState value)? error,
    TResult Function(_LoadedGetUsersState value)? laoded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialGetUsersState implements GetUsersState {
  const factory _InitialGetUsersState({required GetUsersStatePayload payload}) =
      _$_InitialGetUsersState;

  @override
  GetUsersStatePayload get payload => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialGetUsersStateCopyWith<_InitialGetUsersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingGetUsersStateCopyWith<$Res>
    implements $GetUsersStateCopyWith<$Res> {
  factory _$LoadingGetUsersStateCopyWith(_LoadingGetUsersState value,
          $Res Function(_LoadingGetUsersState) then) =
      __$LoadingGetUsersStateCopyWithImpl<$Res>;
  @override
  $Res call({GetUsersStatePayload payload});

  @override
  $GetUsersStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$LoadingGetUsersStateCopyWithImpl<$Res>
    extends _$GetUsersStateCopyWithImpl<$Res>
    implements _$LoadingGetUsersStateCopyWith<$Res> {
  __$LoadingGetUsersStateCopyWithImpl(
      _LoadingGetUsersState _value, $Res Function(_LoadingGetUsersState) _then)
      : super(_value, (v) => _then(v as _LoadingGetUsersState));

  @override
  _LoadingGetUsersState get _value => super._value as _LoadingGetUsersState;

  @override
  $Res call({
    Object? payload = freezed,
  }) {
    return _then(_LoadingGetUsersState(
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as GetUsersStatePayload,
    ));
  }
}

/// @nodoc

class _$_LoadingGetUsersState implements _LoadingGetUsersState {
  const _$_LoadingGetUsersState({required this.payload});

  @override
  final GetUsersStatePayload payload;

  @override
  String toString() {
    return 'GetUsersState.laoding(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadingGetUsersState &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$LoadingGetUsersStateCopyWith<_LoadingGetUsersState> get copyWith =>
      __$LoadingGetUsersStateCopyWithImpl<_LoadingGetUsersState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetUsersStatePayload payload) initial,
    required TResult Function(GetUsersStatePayload payload) laoding,
    required TResult Function(GetUsersStatePayload payload) error,
    required TResult Function(GetUsersStatePayload payload) laoded,
  }) {
    return laoding(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetUsersStatePayload payload)? initial,
    TResult Function(GetUsersStatePayload payload)? laoding,
    TResult Function(GetUsersStatePayload payload)? error,
    TResult Function(GetUsersStatePayload payload)? laoded,
    required TResult orElse(),
  }) {
    if (laoding != null) {
      return laoding(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialGetUsersState value) initial,
    required TResult Function(_LoadingGetUsersState value) laoding,
    required TResult Function(_ErrorGetUsersState value) error,
    required TResult Function(_LoadedGetUsersState value) laoded,
  }) {
    return laoding(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialGetUsersState value)? initial,
    TResult Function(_LoadingGetUsersState value)? laoding,
    TResult Function(_ErrorGetUsersState value)? error,
    TResult Function(_LoadedGetUsersState value)? laoded,
    required TResult orElse(),
  }) {
    if (laoding != null) {
      return laoding(this);
    }
    return orElse();
  }
}

abstract class _LoadingGetUsersState implements GetUsersState {
  const factory _LoadingGetUsersState({required GetUsersStatePayload payload}) =
      _$_LoadingGetUsersState;

  @override
  GetUsersStatePayload get payload => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadingGetUsersStateCopyWith<_LoadingGetUsersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorGetUsersStateCopyWith<$Res>
    implements $GetUsersStateCopyWith<$Res> {
  factory _$ErrorGetUsersStateCopyWith(
          _ErrorGetUsersState value, $Res Function(_ErrorGetUsersState) then) =
      __$ErrorGetUsersStateCopyWithImpl<$Res>;
  @override
  $Res call({GetUsersStatePayload payload});

  @override
  $GetUsersStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$ErrorGetUsersStateCopyWithImpl<$Res>
    extends _$GetUsersStateCopyWithImpl<$Res>
    implements _$ErrorGetUsersStateCopyWith<$Res> {
  __$ErrorGetUsersStateCopyWithImpl(
      _ErrorGetUsersState _value, $Res Function(_ErrorGetUsersState) _then)
      : super(_value, (v) => _then(v as _ErrorGetUsersState));

  @override
  _ErrorGetUsersState get _value => super._value as _ErrorGetUsersState;

  @override
  $Res call({
    Object? payload = freezed,
  }) {
    return _then(_ErrorGetUsersState(
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as GetUsersStatePayload,
    ));
  }
}

/// @nodoc

class _$_ErrorGetUsersState implements _ErrorGetUsersState {
  const _$_ErrorGetUsersState({required this.payload});

  @override
  final GetUsersStatePayload payload;

  @override
  String toString() {
    return 'GetUsersState.error(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorGetUsersState &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$ErrorGetUsersStateCopyWith<_ErrorGetUsersState> get copyWith =>
      __$ErrorGetUsersStateCopyWithImpl<_ErrorGetUsersState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetUsersStatePayload payload) initial,
    required TResult Function(GetUsersStatePayload payload) laoding,
    required TResult Function(GetUsersStatePayload payload) error,
    required TResult Function(GetUsersStatePayload payload) laoded,
  }) {
    return error(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetUsersStatePayload payload)? initial,
    TResult Function(GetUsersStatePayload payload)? laoding,
    TResult Function(GetUsersStatePayload payload)? error,
    TResult Function(GetUsersStatePayload payload)? laoded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialGetUsersState value) initial,
    required TResult Function(_LoadingGetUsersState value) laoding,
    required TResult Function(_ErrorGetUsersState value) error,
    required TResult Function(_LoadedGetUsersState value) laoded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialGetUsersState value)? initial,
    TResult Function(_LoadingGetUsersState value)? laoding,
    TResult Function(_ErrorGetUsersState value)? error,
    TResult Function(_LoadedGetUsersState value)? laoded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorGetUsersState implements GetUsersState {
  const factory _ErrorGetUsersState({required GetUsersStatePayload payload}) =
      _$_ErrorGetUsersState;

  @override
  GetUsersStatePayload get payload => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ErrorGetUsersStateCopyWith<_ErrorGetUsersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadedGetUsersStateCopyWith<$Res>
    implements $GetUsersStateCopyWith<$Res> {
  factory _$LoadedGetUsersStateCopyWith(_LoadedGetUsersState value,
          $Res Function(_LoadedGetUsersState) then) =
      __$LoadedGetUsersStateCopyWithImpl<$Res>;
  @override
  $Res call({GetUsersStatePayload payload});

  @override
  $GetUsersStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$LoadedGetUsersStateCopyWithImpl<$Res>
    extends _$GetUsersStateCopyWithImpl<$Res>
    implements _$LoadedGetUsersStateCopyWith<$Res> {
  __$LoadedGetUsersStateCopyWithImpl(
      _LoadedGetUsersState _value, $Res Function(_LoadedGetUsersState) _then)
      : super(_value, (v) => _then(v as _LoadedGetUsersState));

  @override
  _LoadedGetUsersState get _value => super._value as _LoadedGetUsersState;

  @override
  $Res call({
    Object? payload = freezed,
  }) {
    return _then(_LoadedGetUsersState(
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as GetUsersStatePayload,
    ));
  }
}

/// @nodoc

class _$_LoadedGetUsersState implements _LoadedGetUsersState {
  const _$_LoadedGetUsersState({required this.payload});

  @override
  final GetUsersStatePayload payload;

  @override
  String toString() {
    return 'GetUsersState.laoded(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadedGetUsersState &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$LoadedGetUsersStateCopyWith<_LoadedGetUsersState> get copyWith =>
      __$LoadedGetUsersStateCopyWithImpl<_LoadedGetUsersState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetUsersStatePayload payload) initial,
    required TResult Function(GetUsersStatePayload payload) laoding,
    required TResult Function(GetUsersStatePayload payload) error,
    required TResult Function(GetUsersStatePayload payload) laoded,
  }) {
    return laoded(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetUsersStatePayload payload)? initial,
    TResult Function(GetUsersStatePayload payload)? laoding,
    TResult Function(GetUsersStatePayload payload)? error,
    TResult Function(GetUsersStatePayload payload)? laoded,
    required TResult orElse(),
  }) {
    if (laoded != null) {
      return laoded(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialGetUsersState value) initial,
    required TResult Function(_LoadingGetUsersState value) laoding,
    required TResult Function(_ErrorGetUsersState value) error,
    required TResult Function(_LoadedGetUsersState value) laoded,
  }) {
    return laoded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialGetUsersState value)? initial,
    TResult Function(_LoadingGetUsersState value)? laoding,
    TResult Function(_ErrorGetUsersState value)? error,
    TResult Function(_LoadedGetUsersState value)? laoded,
    required TResult orElse(),
  }) {
    if (laoded != null) {
      return laoded(this);
    }
    return orElse();
  }
}

abstract class _LoadedGetUsersState implements GetUsersState {
  const factory _LoadedGetUsersState({required GetUsersStatePayload payload}) =
      _$_LoadedGetUsersState;

  @override
  GetUsersStatePayload get payload => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadedGetUsersStateCopyWith<_LoadedGetUsersState> get copyWith =>
      throw _privateConstructorUsedError;
}

GetUsersStatePayload _$GetUsersStatePayloadFromJson(Map<String, dynamic> json) {
  return _GetUsersStatePayload.fromJson(json);
}

/// @nodoc
class _$GetUsersStatePayloadTearOff {
  const _$GetUsersStatePayloadTearOff();

  _GetUsersStatePayload call({required String error, List<UserModel>? users}) {
    return _GetUsersStatePayload(
      error: error,
      users: users,
    );
  }

  GetUsersStatePayload fromJson(Map<String, Object> json) {
    return GetUsersStatePayload.fromJson(json);
  }
}

/// @nodoc
const $GetUsersStatePayload = _$GetUsersStatePayloadTearOff();

/// @nodoc
mixin _$GetUsersStatePayload {
  String get error => throw _privateConstructorUsedError;
  List<UserModel>? get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetUsersStatePayloadCopyWith<GetUsersStatePayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUsersStatePayloadCopyWith<$Res> {
  factory $GetUsersStatePayloadCopyWith(GetUsersStatePayload value,
          $Res Function(GetUsersStatePayload) then) =
      _$GetUsersStatePayloadCopyWithImpl<$Res>;
  $Res call({String error, List<UserModel>? users});
}

/// @nodoc
class _$GetUsersStatePayloadCopyWithImpl<$Res>
    implements $GetUsersStatePayloadCopyWith<$Res> {
  _$GetUsersStatePayloadCopyWithImpl(this._value, this._then);

  final GetUsersStatePayload _value;
  // ignore: unused_field
  final $Res Function(GetUsersStatePayload) _then;

  @override
  $Res call({
    Object? error = freezed,
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
    ));
  }
}

/// @nodoc
abstract class _$GetUsersStatePayloadCopyWith<$Res>
    implements $GetUsersStatePayloadCopyWith<$Res> {
  factory _$GetUsersStatePayloadCopyWith(_GetUsersStatePayload value,
          $Res Function(_GetUsersStatePayload) then) =
      __$GetUsersStatePayloadCopyWithImpl<$Res>;
  @override
  $Res call({String error, List<UserModel>? users});
}

/// @nodoc
class __$GetUsersStatePayloadCopyWithImpl<$Res>
    extends _$GetUsersStatePayloadCopyWithImpl<$Res>
    implements _$GetUsersStatePayloadCopyWith<$Res> {
  __$GetUsersStatePayloadCopyWithImpl(
      _GetUsersStatePayload _value, $Res Function(_GetUsersStatePayload) _then)
      : super(_value, (v) => _then(v as _GetUsersStatePayload));

  @override
  _GetUsersStatePayload get _value => super._value as _GetUsersStatePayload;

  @override
  $Res call({
    Object? error = freezed,
    Object? users = freezed,
  }) {
    return _then(_GetUsersStatePayload(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetUsersStatePayload implements _GetUsersStatePayload {
  const _$_GetUsersStatePayload({required this.error, this.users});

  factory _$_GetUsersStatePayload.fromJson(Map<String, dynamic> json) =>
      _$_$_GetUsersStatePayloadFromJson(json);

  @override
  final String error;
  @override
  final List<UserModel>? users;

  @override
  String toString() {
    return 'GetUsersStatePayload(error: $error, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetUsersStatePayload &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(users);

  @JsonKey(ignore: true)
  @override
  _$GetUsersStatePayloadCopyWith<_GetUsersStatePayload> get copyWith =>
      __$GetUsersStatePayloadCopyWithImpl<_GetUsersStatePayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetUsersStatePayloadToJson(this);
  }
}

abstract class _GetUsersStatePayload implements GetUsersStatePayload {
  const factory _GetUsersStatePayload(
      {required String error,
      List<UserModel>? users}) = _$_GetUsersStatePayload;

  factory _GetUsersStatePayload.fromJson(Map<String, dynamic> json) =
      _$_GetUsersStatePayload.fromJson;

  @override
  String get error => throw _privateConstructorUsedError;
  @override
  List<UserModel>? get users => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetUsersStatePayloadCopyWith<_GetUsersStatePayload> get copyWith =>
      throw _privateConstructorUsedError;
}
