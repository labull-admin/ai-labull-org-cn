// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'auth_state.dart';

class AuthStateMapper extends ClassMapperBase<AuthState> {
  AuthStateMapper._();

  static AuthStateMapper? _instance;
  static AuthStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthStateMapper._());
      AuthStateNotLogedInMapper.ensureInitialized();
      AuthStateLogedInMapper.ensureInitialized();
      AuthStateLoginInitialMapper.ensureInitialized();
      AuthStateLoginLoadingMapper.ensureInitialized();
      AuthStateLoginSuccessMapper.ensureInitialized();
      AuthStateLoginFailureMapper.ensureInitialized();
      AuthStateLogoutInitialMapper.ensureInitialized();
      AuthStateLogoutLoadingMapper.ensureInitialized();
      AuthStateLogoutSuccessMapper.ensureInitialized();
      AuthStateLogoutFailureMapper.ensureInitialized();
      UserMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AuthState';

  static String _$stateType(AuthState v) => v.stateType;
  static const Field<AuthState, String> _f$stateType =
      Field('stateType', _$stateType);
  static User? _$user(AuthState v) => v.user;
  static const Field<AuthState, User> _f$user =
      Field('user', _$user, opt: true);
  static String? _$error(AuthState v) => v.error;
  static const Field<AuthState, String> _f$error =
      Field('error', _$error, opt: true);

  @override
  final Map<Symbol, Field<AuthState, dynamic>> fields = const {
    #stateType: _f$stateType,
    #user: _f$user,
    #error: _f$error,
  };

  static AuthState _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('AuthState');
  }

  @override
  final Function instantiate = _instantiate;

  static AuthState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AuthState>(map);
  }

  static AuthState fromJson(String json) {
    return ensureInitialized().decodeJson<AuthState>(json);
  }
}

mixin AuthStateMappable {
  String toJson();
  Map<String, dynamic> toMap();
  AuthStateCopyWith<AuthState, AuthState, AuthState> get copyWith;
}

abstract class AuthStateCopyWith<$R, $In extends AuthState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? stateType});
  AuthStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class AuthStateNotLogedInMapper extends ClassMapperBase<AuthStateNotLogedIn> {
  AuthStateNotLogedInMapper._();

  static AuthStateNotLogedInMapper? _instance;
  static AuthStateNotLogedInMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthStateNotLogedInMapper._());
      AuthStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AuthStateNotLogedIn';

  static String _$stateType(AuthStateNotLogedIn v) => v.stateType;
  static const Field<AuthStateNotLogedIn, String> _f$stateType =
      Field('stateType', _$stateType, opt: true, def: authStateNotLogedInType);
  static User? _$user(AuthStateNotLogedIn v) => v.user;
  static const Field<AuthStateNotLogedIn, User> _f$user =
      Field('user', _$user, mode: FieldMode.member);
  static String? _$error(AuthStateNotLogedIn v) => v.error;
  static const Field<AuthStateNotLogedIn, String> _f$error =
      Field('error', _$error, mode: FieldMode.member);

  @override
  final Map<Symbol, Field<AuthStateNotLogedIn, dynamic>> fields = const {
    #stateType: _f$stateType,
    #user: _f$user,
    #error: _f$error,
  };

  static AuthStateNotLogedIn _instantiate(DecodingData data) {
    return AuthStateNotLogedIn(stateType: data.dec(_f$stateType));
  }

  @override
  final Function instantiate = _instantiate;

  static AuthStateNotLogedIn fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AuthStateNotLogedIn>(map);
  }

  static AuthStateNotLogedIn fromJson(String json) {
    return ensureInitialized().decodeJson<AuthStateNotLogedIn>(json);
  }
}

mixin AuthStateNotLogedInMappable {
  String toJson() {
    return AuthStateNotLogedInMapper.ensureInitialized()
        .encodeJson<AuthStateNotLogedIn>(this as AuthStateNotLogedIn);
  }

  Map<String, dynamic> toMap() {
    return AuthStateNotLogedInMapper.ensureInitialized()
        .encodeMap<AuthStateNotLogedIn>(this as AuthStateNotLogedIn);
  }

  AuthStateNotLogedInCopyWith<AuthStateNotLogedIn, AuthStateNotLogedIn,
          AuthStateNotLogedIn>
      get copyWith => _AuthStateNotLogedInCopyWithImpl(
          this as AuthStateNotLogedIn, $identity, $identity);
  @override
  String toString() {
    return AuthStateNotLogedInMapper.ensureInitialized()
        .stringifyValue(this as AuthStateNotLogedIn);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            AuthStateNotLogedInMapper.ensureInitialized()
                .isValueEqual(this as AuthStateNotLogedIn, other));
  }

  @override
  int get hashCode {
    return AuthStateNotLogedInMapper.ensureInitialized()
        .hashValue(this as AuthStateNotLogedIn);
  }
}

extension AuthStateNotLogedInValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthStateNotLogedIn, $Out> {
  AuthStateNotLogedInCopyWith<$R, AuthStateNotLogedIn, $Out>
      get $asAuthStateNotLogedIn =>
          $base.as((v, t, t2) => _AuthStateNotLogedInCopyWithImpl(v, t, t2));
}

abstract class AuthStateNotLogedInCopyWith<$R, $In extends AuthStateNotLogedIn,
    $Out> implements AuthStateCopyWith<$R, $In, $Out> {
  @override
  $R call({String? stateType});
  AuthStateNotLogedInCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AuthStateNotLogedInCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthStateNotLogedIn, $Out>
    implements AuthStateNotLogedInCopyWith<$R, AuthStateNotLogedIn, $Out> {
  _AuthStateNotLogedInCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthStateNotLogedIn> $mapper =
      AuthStateNotLogedInMapper.ensureInitialized();
  @override
  $R call({String? stateType}) =>
      $apply(FieldCopyWithData({if (stateType != null) #stateType: stateType}));
  @override
  AuthStateNotLogedIn $make(CopyWithData data) => AuthStateNotLogedIn(
      stateType: data.get(#stateType, or: $value.stateType));

  @override
  AuthStateNotLogedInCopyWith<$R2, AuthStateNotLogedIn, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _AuthStateNotLogedInCopyWithImpl($value, $cast, t);
}

class AuthStateLogedInMapper extends ClassMapperBase<AuthStateLogedIn> {
  AuthStateLogedInMapper._();

  static AuthStateLogedInMapper? _instance;
  static AuthStateLogedInMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthStateLogedInMapper._());
      AuthStateMapper.ensureInitialized();
      UserMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AuthStateLogedIn';

  static String _$stateType(AuthStateLogedIn v) => v.stateType;
  static const Field<AuthStateLogedIn, String> _f$stateType =
      Field('stateType', _$stateType, opt: true, def: authStateLogedInType);
  static User? _$user(AuthStateLogedIn v) => v.user;
  static const Field<AuthStateLogedIn, User> _f$user = Field('user', _$user);
  static String? _$error(AuthStateLogedIn v) => v.error;
  static const Field<AuthStateLogedIn, String> _f$error =
      Field('error', _$error, mode: FieldMode.member);

  @override
  final Map<Symbol, Field<AuthStateLogedIn, dynamic>> fields = const {
    #stateType: _f$stateType,
    #user: _f$user,
    #error: _f$error,
  };

  static AuthStateLogedIn _instantiate(DecodingData data) {
    return AuthStateLogedIn(
        stateType: data.dec(_f$stateType), user: data.dec(_f$user));
  }

  @override
  final Function instantiate = _instantiate;

  static AuthStateLogedIn fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AuthStateLogedIn>(map);
  }

  static AuthStateLogedIn fromJson(String json) {
    return ensureInitialized().decodeJson<AuthStateLogedIn>(json);
  }
}

mixin AuthStateLogedInMappable {
  String toJson() {
    return AuthStateLogedInMapper.ensureInitialized()
        .encodeJson<AuthStateLogedIn>(this as AuthStateLogedIn);
  }

  Map<String, dynamic> toMap() {
    return AuthStateLogedInMapper.ensureInitialized()
        .encodeMap<AuthStateLogedIn>(this as AuthStateLogedIn);
  }

  AuthStateLogedInCopyWith<AuthStateLogedIn, AuthStateLogedIn, AuthStateLogedIn>
      get copyWith => _AuthStateLogedInCopyWithImpl(
          this as AuthStateLogedIn, $identity, $identity);
  @override
  String toString() {
    return AuthStateLogedInMapper.ensureInitialized()
        .stringifyValue(this as AuthStateLogedIn);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            AuthStateLogedInMapper.ensureInitialized()
                .isValueEqual(this as AuthStateLogedIn, other));
  }

  @override
  int get hashCode {
    return AuthStateLogedInMapper.ensureInitialized()
        .hashValue(this as AuthStateLogedIn);
  }
}

extension AuthStateLogedInValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthStateLogedIn, $Out> {
  AuthStateLogedInCopyWith<$R, AuthStateLogedIn, $Out>
      get $asAuthStateLogedIn =>
          $base.as((v, t, t2) => _AuthStateLogedInCopyWithImpl(v, t, t2));
}

abstract class AuthStateLogedInCopyWith<$R, $In extends AuthStateLogedIn, $Out>
    implements AuthStateCopyWith<$R, $In, $Out> {
  @override
  UserCopyWith<$R, User, User>? get user;
  @override
  $R call({String? stateType, covariant User? user});
  AuthStateLogedInCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AuthStateLogedInCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthStateLogedIn, $Out>
    implements AuthStateLogedInCopyWith<$R, AuthStateLogedIn, $Out> {
  _AuthStateLogedInCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthStateLogedIn> $mapper =
      AuthStateLogedInMapper.ensureInitialized();
  @override
  UserCopyWith<$R, User, User>? get user =>
      ($value.user as User?)?.copyWith.$chain((v) => call(user: v));
  @override
  $R call({String? stateType, User? user}) => $apply(FieldCopyWithData({
        if (stateType != null) #stateType: stateType,
        if (user != null) #user: user
      }));
  @override
  AuthStateLogedIn $make(CopyWithData data) => AuthStateLogedIn(
      stateType: data.get(#stateType, or: $value.stateType),
      user: data.get(#user, or: $value.user));

  @override
  AuthStateLogedInCopyWith<$R2, AuthStateLogedIn, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AuthStateLogedInCopyWithImpl($value, $cast, t);
}

class AuthStateLoginInitialMapper
    extends ClassMapperBase<AuthStateLoginInitial> {
  AuthStateLoginInitialMapper._();

  static AuthStateLoginInitialMapper? _instance;
  static AuthStateLoginInitialMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthStateLoginInitialMapper._());
      AuthStateMapper.ensureInitialized();
      UserMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AuthStateLoginInitial';

  static String _$stateType(AuthStateLoginInitial v) => v.stateType;
  static const Field<AuthStateLoginInitial, String> _f$stateType = Field(
      'stateType', _$stateType,
      opt: true, def: authStateLoginInitialType);
  static User? _$user(AuthStateLoginInitial v) => v.user;
  static const Field<AuthStateLoginInitial, User> _f$user =
      Field('user', _$user);
  static String? _$error(AuthStateLoginInitial v) => v.error;
  static const Field<AuthStateLoginInitial, String> _f$error =
      Field('error', _$error, mode: FieldMode.member);

  @override
  final Map<Symbol, Field<AuthStateLoginInitial, dynamic>> fields = const {
    #stateType: _f$stateType,
    #user: _f$user,
    #error: _f$error,
  };

  static AuthStateLoginInitial _instantiate(DecodingData data) {
    return AuthStateLoginInitial(
        stateType: data.dec(_f$stateType), user: data.dec(_f$user));
  }

  @override
  final Function instantiate = _instantiate;

  static AuthStateLoginInitial fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AuthStateLoginInitial>(map);
  }

  static AuthStateLoginInitial fromJson(String json) {
    return ensureInitialized().decodeJson<AuthStateLoginInitial>(json);
  }
}

mixin AuthStateLoginInitialMappable {
  String toJson() {
    return AuthStateLoginInitialMapper.ensureInitialized()
        .encodeJson<AuthStateLoginInitial>(this as AuthStateLoginInitial);
  }

  Map<String, dynamic> toMap() {
    return AuthStateLoginInitialMapper.ensureInitialized()
        .encodeMap<AuthStateLoginInitial>(this as AuthStateLoginInitial);
  }

  AuthStateLoginInitialCopyWith<AuthStateLoginInitial, AuthStateLoginInitial,
          AuthStateLoginInitial>
      get copyWith => _AuthStateLoginInitialCopyWithImpl(
          this as AuthStateLoginInitial, $identity, $identity);
  @override
  String toString() {
    return AuthStateLoginInitialMapper.ensureInitialized()
        .stringifyValue(this as AuthStateLoginInitial);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            AuthStateLoginInitialMapper.ensureInitialized()
                .isValueEqual(this as AuthStateLoginInitial, other));
  }

  @override
  int get hashCode {
    return AuthStateLoginInitialMapper.ensureInitialized()
        .hashValue(this as AuthStateLoginInitial);
  }
}

extension AuthStateLoginInitialValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthStateLoginInitial, $Out> {
  AuthStateLoginInitialCopyWith<$R, AuthStateLoginInitial, $Out>
      get $asAuthStateLoginInitial =>
          $base.as((v, t, t2) => _AuthStateLoginInitialCopyWithImpl(v, t, t2));
}

abstract class AuthStateLoginInitialCopyWith<
    $R,
    $In extends AuthStateLoginInitial,
    $Out> implements AuthStateCopyWith<$R, $In, $Out> {
  @override
  UserCopyWith<$R, User, User>? get user;
  @override
  $R call({String? stateType, covariant User? user});
  AuthStateLoginInitialCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AuthStateLoginInitialCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthStateLoginInitial, $Out>
    implements AuthStateLoginInitialCopyWith<$R, AuthStateLoginInitial, $Out> {
  _AuthStateLoginInitialCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthStateLoginInitial> $mapper =
      AuthStateLoginInitialMapper.ensureInitialized();
  @override
  UserCopyWith<$R, User, User>? get user =>
      ($value.user as User?)?.copyWith.$chain((v) => call(user: v));
  @override
  $R call({String? stateType, User? user}) => $apply(FieldCopyWithData({
        if (stateType != null) #stateType: stateType,
        if (user != null) #user: user
      }));
  @override
  AuthStateLoginInitial $make(CopyWithData data) => AuthStateLoginInitial(
      stateType: data.get(#stateType, or: $value.stateType),
      user: data.get(#user, or: $value.user));

  @override
  AuthStateLoginInitialCopyWith<$R2, AuthStateLoginInitial, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _AuthStateLoginInitialCopyWithImpl($value, $cast, t);
}

class AuthStateLoginLoadingMapper
    extends ClassMapperBase<AuthStateLoginLoading> {
  AuthStateLoginLoadingMapper._();

  static AuthStateLoginLoadingMapper? _instance;
  static AuthStateLoginLoadingMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthStateLoginLoadingMapper._());
      AuthStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AuthStateLoginLoading';

  static String _$stateType(AuthStateLoginLoading v) => v.stateType;
  static const Field<AuthStateLoginLoading, String> _f$stateType = Field(
      'stateType', _$stateType,
      opt: true, def: authStateLoginLoadingType);
  static User? _$user(AuthStateLoginLoading v) => v.user;
  static const Field<AuthStateLoginLoading, User> _f$user =
      Field('user', _$user, mode: FieldMode.member);
  static String? _$error(AuthStateLoginLoading v) => v.error;
  static const Field<AuthStateLoginLoading, String> _f$error =
      Field('error', _$error, mode: FieldMode.member);

  @override
  final Map<Symbol, Field<AuthStateLoginLoading, dynamic>> fields = const {
    #stateType: _f$stateType,
    #user: _f$user,
    #error: _f$error,
  };

  static AuthStateLoginLoading _instantiate(DecodingData data) {
    return AuthStateLoginLoading(stateType: data.dec(_f$stateType));
  }

  @override
  final Function instantiate = _instantiate;

  static AuthStateLoginLoading fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AuthStateLoginLoading>(map);
  }

  static AuthStateLoginLoading fromJson(String json) {
    return ensureInitialized().decodeJson<AuthStateLoginLoading>(json);
  }
}

mixin AuthStateLoginLoadingMappable {
  String toJson() {
    return AuthStateLoginLoadingMapper.ensureInitialized()
        .encodeJson<AuthStateLoginLoading>(this as AuthStateLoginLoading);
  }

  Map<String, dynamic> toMap() {
    return AuthStateLoginLoadingMapper.ensureInitialized()
        .encodeMap<AuthStateLoginLoading>(this as AuthStateLoginLoading);
  }

  AuthStateLoginLoadingCopyWith<AuthStateLoginLoading, AuthStateLoginLoading,
          AuthStateLoginLoading>
      get copyWith => _AuthStateLoginLoadingCopyWithImpl(
          this as AuthStateLoginLoading, $identity, $identity);
  @override
  String toString() {
    return AuthStateLoginLoadingMapper.ensureInitialized()
        .stringifyValue(this as AuthStateLoginLoading);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            AuthStateLoginLoadingMapper.ensureInitialized()
                .isValueEqual(this as AuthStateLoginLoading, other));
  }

  @override
  int get hashCode {
    return AuthStateLoginLoadingMapper.ensureInitialized()
        .hashValue(this as AuthStateLoginLoading);
  }
}

extension AuthStateLoginLoadingValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthStateLoginLoading, $Out> {
  AuthStateLoginLoadingCopyWith<$R, AuthStateLoginLoading, $Out>
      get $asAuthStateLoginLoading =>
          $base.as((v, t, t2) => _AuthStateLoginLoadingCopyWithImpl(v, t, t2));
}

abstract class AuthStateLoginLoadingCopyWith<
    $R,
    $In extends AuthStateLoginLoading,
    $Out> implements AuthStateCopyWith<$R, $In, $Out> {
  @override
  $R call({String? stateType});
  AuthStateLoginLoadingCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AuthStateLoginLoadingCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthStateLoginLoading, $Out>
    implements AuthStateLoginLoadingCopyWith<$R, AuthStateLoginLoading, $Out> {
  _AuthStateLoginLoadingCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthStateLoginLoading> $mapper =
      AuthStateLoginLoadingMapper.ensureInitialized();
  @override
  $R call({String? stateType}) =>
      $apply(FieldCopyWithData({if (stateType != null) #stateType: stateType}));
  @override
  AuthStateLoginLoading $make(CopyWithData data) => AuthStateLoginLoading(
      stateType: data.get(#stateType, or: $value.stateType));

  @override
  AuthStateLoginLoadingCopyWith<$R2, AuthStateLoginLoading, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _AuthStateLoginLoadingCopyWithImpl($value, $cast, t);
}

class AuthStateLoginSuccessMapper
    extends ClassMapperBase<AuthStateLoginSuccess> {
  AuthStateLoginSuccessMapper._();

  static AuthStateLoginSuccessMapper? _instance;
  static AuthStateLoginSuccessMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthStateLoginSuccessMapper._());
      AuthStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AuthStateLoginSuccess';

  static String _$stateType(AuthStateLoginSuccess v) => v.stateType;
  static const Field<AuthStateLoginSuccess, String> _f$stateType = Field(
      'stateType', _$stateType,
      opt: true, def: authStateLoginSuccessType);
  static User? _$user(AuthStateLoginSuccess v) => v.user;
  static const Field<AuthStateLoginSuccess, User> _f$user =
      Field('user', _$user, mode: FieldMode.member);
  static String? _$error(AuthStateLoginSuccess v) => v.error;
  static const Field<AuthStateLoginSuccess, String> _f$error =
      Field('error', _$error, mode: FieldMode.member);

  @override
  final Map<Symbol, Field<AuthStateLoginSuccess, dynamic>> fields = const {
    #stateType: _f$stateType,
    #user: _f$user,
    #error: _f$error,
  };

  static AuthStateLoginSuccess _instantiate(DecodingData data) {
    return AuthStateLoginSuccess(stateType: data.dec(_f$stateType));
  }

  @override
  final Function instantiate = _instantiate;

  static AuthStateLoginSuccess fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AuthStateLoginSuccess>(map);
  }

  static AuthStateLoginSuccess fromJson(String json) {
    return ensureInitialized().decodeJson<AuthStateLoginSuccess>(json);
  }
}

mixin AuthStateLoginSuccessMappable {
  String toJson() {
    return AuthStateLoginSuccessMapper.ensureInitialized()
        .encodeJson<AuthStateLoginSuccess>(this as AuthStateLoginSuccess);
  }

  Map<String, dynamic> toMap() {
    return AuthStateLoginSuccessMapper.ensureInitialized()
        .encodeMap<AuthStateLoginSuccess>(this as AuthStateLoginSuccess);
  }

  AuthStateLoginSuccessCopyWith<AuthStateLoginSuccess, AuthStateLoginSuccess,
          AuthStateLoginSuccess>
      get copyWith => _AuthStateLoginSuccessCopyWithImpl(
          this as AuthStateLoginSuccess, $identity, $identity);
  @override
  String toString() {
    return AuthStateLoginSuccessMapper.ensureInitialized()
        .stringifyValue(this as AuthStateLoginSuccess);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            AuthStateLoginSuccessMapper.ensureInitialized()
                .isValueEqual(this as AuthStateLoginSuccess, other));
  }

  @override
  int get hashCode {
    return AuthStateLoginSuccessMapper.ensureInitialized()
        .hashValue(this as AuthStateLoginSuccess);
  }
}

extension AuthStateLoginSuccessValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthStateLoginSuccess, $Out> {
  AuthStateLoginSuccessCopyWith<$R, AuthStateLoginSuccess, $Out>
      get $asAuthStateLoginSuccess =>
          $base.as((v, t, t2) => _AuthStateLoginSuccessCopyWithImpl(v, t, t2));
}

abstract class AuthStateLoginSuccessCopyWith<
    $R,
    $In extends AuthStateLoginSuccess,
    $Out> implements AuthStateCopyWith<$R, $In, $Out> {
  @override
  $R call({String? stateType});
  AuthStateLoginSuccessCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AuthStateLoginSuccessCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthStateLoginSuccess, $Out>
    implements AuthStateLoginSuccessCopyWith<$R, AuthStateLoginSuccess, $Out> {
  _AuthStateLoginSuccessCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthStateLoginSuccess> $mapper =
      AuthStateLoginSuccessMapper.ensureInitialized();
  @override
  $R call({String? stateType}) =>
      $apply(FieldCopyWithData({if (stateType != null) #stateType: stateType}));
  @override
  AuthStateLoginSuccess $make(CopyWithData data) => AuthStateLoginSuccess(
      stateType: data.get(#stateType, or: $value.stateType));

  @override
  AuthStateLoginSuccessCopyWith<$R2, AuthStateLoginSuccess, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _AuthStateLoginSuccessCopyWithImpl($value, $cast, t);
}

class AuthStateLoginFailureMapper
    extends ClassMapperBase<AuthStateLoginFailure> {
  AuthStateLoginFailureMapper._();

  static AuthStateLoginFailureMapper? _instance;
  static AuthStateLoginFailureMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthStateLoginFailureMapper._());
      AuthStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AuthStateLoginFailure';

  static String _$stateType(AuthStateLoginFailure v) => v.stateType;
  static const Field<AuthStateLoginFailure, String> _f$stateType = Field(
      'stateType', _$stateType,
      opt: true, def: authStateLoginFailureType);
  static String? _$error(AuthStateLoginFailure v) => v.error;
  static const Field<AuthStateLoginFailure, String> _f$error =
      Field('error', _$error);
  static User? _$user(AuthStateLoginFailure v) => v.user;
  static const Field<AuthStateLoginFailure, User> _f$user =
      Field('user', _$user, mode: FieldMode.member);

  @override
  final Map<Symbol, Field<AuthStateLoginFailure, dynamic>> fields = const {
    #stateType: _f$stateType,
    #error: _f$error,
    #user: _f$user,
  };

  static AuthStateLoginFailure _instantiate(DecodingData data) {
    return AuthStateLoginFailure(
        stateType: data.dec(_f$stateType), error: data.dec(_f$error));
  }

  @override
  final Function instantiate = _instantiate;

  static AuthStateLoginFailure fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AuthStateLoginFailure>(map);
  }

  static AuthStateLoginFailure fromJson(String json) {
    return ensureInitialized().decodeJson<AuthStateLoginFailure>(json);
  }
}

mixin AuthStateLoginFailureMappable {
  String toJson() {
    return AuthStateLoginFailureMapper.ensureInitialized()
        .encodeJson<AuthStateLoginFailure>(this as AuthStateLoginFailure);
  }

  Map<String, dynamic> toMap() {
    return AuthStateLoginFailureMapper.ensureInitialized()
        .encodeMap<AuthStateLoginFailure>(this as AuthStateLoginFailure);
  }

  AuthStateLoginFailureCopyWith<AuthStateLoginFailure, AuthStateLoginFailure,
          AuthStateLoginFailure>
      get copyWith => _AuthStateLoginFailureCopyWithImpl(
          this as AuthStateLoginFailure, $identity, $identity);
  @override
  String toString() {
    return AuthStateLoginFailureMapper.ensureInitialized()
        .stringifyValue(this as AuthStateLoginFailure);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            AuthStateLoginFailureMapper.ensureInitialized()
                .isValueEqual(this as AuthStateLoginFailure, other));
  }

  @override
  int get hashCode {
    return AuthStateLoginFailureMapper.ensureInitialized()
        .hashValue(this as AuthStateLoginFailure);
  }
}

extension AuthStateLoginFailureValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthStateLoginFailure, $Out> {
  AuthStateLoginFailureCopyWith<$R, AuthStateLoginFailure, $Out>
      get $asAuthStateLoginFailure =>
          $base.as((v, t, t2) => _AuthStateLoginFailureCopyWithImpl(v, t, t2));
}

abstract class AuthStateLoginFailureCopyWith<
    $R,
    $In extends AuthStateLoginFailure,
    $Out> implements AuthStateCopyWith<$R, $In, $Out> {
  @override
  $R call({String? stateType, covariant String? error});
  AuthStateLoginFailureCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AuthStateLoginFailureCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthStateLoginFailure, $Out>
    implements AuthStateLoginFailureCopyWith<$R, AuthStateLoginFailure, $Out> {
  _AuthStateLoginFailureCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthStateLoginFailure> $mapper =
      AuthStateLoginFailureMapper.ensureInitialized();
  @override
  $R call({String? stateType, String? error}) => $apply(FieldCopyWithData({
        if (stateType != null) #stateType: stateType,
        if (error != null) #error: error
      }));
  @override
  AuthStateLoginFailure $make(CopyWithData data) => AuthStateLoginFailure(
      stateType: data.get(#stateType, or: $value.stateType),
      error: data.get(#error, or: $value.error));

  @override
  AuthStateLoginFailureCopyWith<$R2, AuthStateLoginFailure, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _AuthStateLoginFailureCopyWithImpl($value, $cast, t);
}

class AuthStateLogoutInitialMapper
    extends ClassMapperBase<AuthStateLogoutInitial> {
  AuthStateLogoutInitialMapper._();

  static AuthStateLogoutInitialMapper? _instance;
  static AuthStateLogoutInitialMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthStateLogoutInitialMapper._());
      AuthStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AuthStateLogoutInitial';

  static String _$stateType(AuthStateLogoutInitial v) => v.stateType;
  static const Field<AuthStateLogoutInitial, String> _f$stateType = Field(
      'stateType', _$stateType,
      opt: true, def: authStateLogoutInitialType);
  static User? _$user(AuthStateLogoutInitial v) => v.user;
  static const Field<AuthStateLogoutInitial, User> _f$user =
      Field('user', _$user, mode: FieldMode.member);
  static String? _$error(AuthStateLogoutInitial v) => v.error;
  static const Field<AuthStateLogoutInitial, String> _f$error =
      Field('error', _$error, mode: FieldMode.member);

  @override
  final Map<Symbol, Field<AuthStateLogoutInitial, dynamic>> fields = const {
    #stateType: _f$stateType,
    #user: _f$user,
    #error: _f$error,
  };

  static AuthStateLogoutInitial _instantiate(DecodingData data) {
    return AuthStateLogoutInitial(stateType: data.dec(_f$stateType));
  }

  @override
  final Function instantiate = _instantiate;

  static AuthStateLogoutInitial fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AuthStateLogoutInitial>(map);
  }

  static AuthStateLogoutInitial fromJson(String json) {
    return ensureInitialized().decodeJson<AuthStateLogoutInitial>(json);
  }
}

mixin AuthStateLogoutInitialMappable {
  String toJson() {
    return AuthStateLogoutInitialMapper.ensureInitialized()
        .encodeJson<AuthStateLogoutInitial>(this as AuthStateLogoutInitial);
  }

  Map<String, dynamic> toMap() {
    return AuthStateLogoutInitialMapper.ensureInitialized()
        .encodeMap<AuthStateLogoutInitial>(this as AuthStateLogoutInitial);
  }

  AuthStateLogoutInitialCopyWith<AuthStateLogoutInitial, AuthStateLogoutInitial,
          AuthStateLogoutInitial>
      get copyWith => _AuthStateLogoutInitialCopyWithImpl(
          this as AuthStateLogoutInitial, $identity, $identity);
  @override
  String toString() {
    return AuthStateLogoutInitialMapper.ensureInitialized()
        .stringifyValue(this as AuthStateLogoutInitial);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            AuthStateLogoutInitialMapper.ensureInitialized()
                .isValueEqual(this as AuthStateLogoutInitial, other));
  }

  @override
  int get hashCode {
    return AuthStateLogoutInitialMapper.ensureInitialized()
        .hashValue(this as AuthStateLogoutInitial);
  }
}

extension AuthStateLogoutInitialValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthStateLogoutInitial, $Out> {
  AuthStateLogoutInitialCopyWith<$R, AuthStateLogoutInitial, $Out>
      get $asAuthStateLogoutInitial =>
          $base.as((v, t, t2) => _AuthStateLogoutInitialCopyWithImpl(v, t, t2));
}

abstract class AuthStateLogoutInitialCopyWith<
    $R,
    $In extends AuthStateLogoutInitial,
    $Out> implements AuthStateCopyWith<$R, $In, $Out> {
  @override
  $R call({String? stateType});
  AuthStateLogoutInitialCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AuthStateLogoutInitialCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthStateLogoutInitial, $Out>
    implements
        AuthStateLogoutInitialCopyWith<$R, AuthStateLogoutInitial, $Out> {
  _AuthStateLogoutInitialCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthStateLogoutInitial> $mapper =
      AuthStateLogoutInitialMapper.ensureInitialized();
  @override
  $R call({String? stateType}) =>
      $apply(FieldCopyWithData({if (stateType != null) #stateType: stateType}));
  @override
  AuthStateLogoutInitial $make(CopyWithData data) => AuthStateLogoutInitial(
      stateType: data.get(#stateType, or: $value.stateType));

  @override
  AuthStateLogoutInitialCopyWith<$R2, AuthStateLogoutInitial, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _AuthStateLogoutInitialCopyWithImpl($value, $cast, t);
}

class AuthStateLogoutLoadingMapper
    extends ClassMapperBase<AuthStateLogoutLoading> {
  AuthStateLogoutLoadingMapper._();

  static AuthStateLogoutLoadingMapper? _instance;
  static AuthStateLogoutLoadingMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthStateLogoutLoadingMapper._());
      AuthStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AuthStateLogoutLoading';

  static String _$stateType(AuthStateLogoutLoading v) => v.stateType;
  static const Field<AuthStateLogoutLoading, String> _f$stateType = Field(
      'stateType', _$stateType,
      opt: true, def: authStateLogoutLoadingType);
  static User? _$user(AuthStateLogoutLoading v) => v.user;
  static const Field<AuthStateLogoutLoading, User> _f$user =
      Field('user', _$user, mode: FieldMode.member);
  static String? _$error(AuthStateLogoutLoading v) => v.error;
  static const Field<AuthStateLogoutLoading, String> _f$error =
      Field('error', _$error, mode: FieldMode.member);

  @override
  final Map<Symbol, Field<AuthStateLogoutLoading, dynamic>> fields = const {
    #stateType: _f$stateType,
    #user: _f$user,
    #error: _f$error,
  };

  static AuthStateLogoutLoading _instantiate(DecodingData data) {
    return AuthStateLogoutLoading(stateType: data.dec(_f$stateType));
  }

  @override
  final Function instantiate = _instantiate;

  static AuthStateLogoutLoading fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AuthStateLogoutLoading>(map);
  }

  static AuthStateLogoutLoading fromJson(String json) {
    return ensureInitialized().decodeJson<AuthStateLogoutLoading>(json);
  }
}

mixin AuthStateLogoutLoadingMappable {
  String toJson() {
    return AuthStateLogoutLoadingMapper.ensureInitialized()
        .encodeJson<AuthStateLogoutLoading>(this as AuthStateLogoutLoading);
  }

  Map<String, dynamic> toMap() {
    return AuthStateLogoutLoadingMapper.ensureInitialized()
        .encodeMap<AuthStateLogoutLoading>(this as AuthStateLogoutLoading);
  }

  AuthStateLogoutLoadingCopyWith<AuthStateLogoutLoading, AuthStateLogoutLoading,
          AuthStateLogoutLoading>
      get copyWith => _AuthStateLogoutLoadingCopyWithImpl(
          this as AuthStateLogoutLoading, $identity, $identity);
  @override
  String toString() {
    return AuthStateLogoutLoadingMapper.ensureInitialized()
        .stringifyValue(this as AuthStateLogoutLoading);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            AuthStateLogoutLoadingMapper.ensureInitialized()
                .isValueEqual(this as AuthStateLogoutLoading, other));
  }

  @override
  int get hashCode {
    return AuthStateLogoutLoadingMapper.ensureInitialized()
        .hashValue(this as AuthStateLogoutLoading);
  }
}

extension AuthStateLogoutLoadingValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthStateLogoutLoading, $Out> {
  AuthStateLogoutLoadingCopyWith<$R, AuthStateLogoutLoading, $Out>
      get $asAuthStateLogoutLoading =>
          $base.as((v, t, t2) => _AuthStateLogoutLoadingCopyWithImpl(v, t, t2));
}

abstract class AuthStateLogoutLoadingCopyWith<
    $R,
    $In extends AuthStateLogoutLoading,
    $Out> implements AuthStateCopyWith<$R, $In, $Out> {
  @override
  $R call({String? stateType});
  AuthStateLogoutLoadingCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AuthStateLogoutLoadingCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthStateLogoutLoading, $Out>
    implements
        AuthStateLogoutLoadingCopyWith<$R, AuthStateLogoutLoading, $Out> {
  _AuthStateLogoutLoadingCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthStateLogoutLoading> $mapper =
      AuthStateLogoutLoadingMapper.ensureInitialized();
  @override
  $R call({String? stateType}) =>
      $apply(FieldCopyWithData({if (stateType != null) #stateType: stateType}));
  @override
  AuthStateLogoutLoading $make(CopyWithData data) => AuthStateLogoutLoading(
      stateType: data.get(#stateType, or: $value.stateType));

  @override
  AuthStateLogoutLoadingCopyWith<$R2, AuthStateLogoutLoading, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _AuthStateLogoutLoadingCopyWithImpl($value, $cast, t);
}

class AuthStateLogoutSuccessMapper
    extends ClassMapperBase<AuthStateLogoutSuccess> {
  AuthStateLogoutSuccessMapper._();

  static AuthStateLogoutSuccessMapper? _instance;
  static AuthStateLogoutSuccessMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthStateLogoutSuccessMapper._());
      AuthStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AuthStateLogoutSuccess';

  static String _$stateType(AuthStateLogoutSuccess v) => v.stateType;
  static const Field<AuthStateLogoutSuccess, String> _f$stateType = Field(
      'stateType', _$stateType,
      opt: true, def: authStateLogoutSuccessType);
  static User? _$user(AuthStateLogoutSuccess v) => v.user;
  static const Field<AuthStateLogoutSuccess, User> _f$user =
      Field('user', _$user, mode: FieldMode.member);
  static String? _$error(AuthStateLogoutSuccess v) => v.error;
  static const Field<AuthStateLogoutSuccess, String> _f$error =
      Field('error', _$error, mode: FieldMode.member);

  @override
  final Map<Symbol, Field<AuthStateLogoutSuccess, dynamic>> fields = const {
    #stateType: _f$stateType,
    #user: _f$user,
    #error: _f$error,
  };

  static AuthStateLogoutSuccess _instantiate(DecodingData data) {
    return AuthStateLogoutSuccess(stateType: data.dec(_f$stateType));
  }

  @override
  final Function instantiate = _instantiate;

  static AuthStateLogoutSuccess fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AuthStateLogoutSuccess>(map);
  }

  static AuthStateLogoutSuccess fromJson(String json) {
    return ensureInitialized().decodeJson<AuthStateLogoutSuccess>(json);
  }
}

mixin AuthStateLogoutSuccessMappable {
  String toJson() {
    return AuthStateLogoutSuccessMapper.ensureInitialized()
        .encodeJson<AuthStateLogoutSuccess>(this as AuthStateLogoutSuccess);
  }

  Map<String, dynamic> toMap() {
    return AuthStateLogoutSuccessMapper.ensureInitialized()
        .encodeMap<AuthStateLogoutSuccess>(this as AuthStateLogoutSuccess);
  }

  AuthStateLogoutSuccessCopyWith<AuthStateLogoutSuccess, AuthStateLogoutSuccess,
          AuthStateLogoutSuccess>
      get copyWith => _AuthStateLogoutSuccessCopyWithImpl(
          this as AuthStateLogoutSuccess, $identity, $identity);
  @override
  String toString() {
    return AuthStateLogoutSuccessMapper.ensureInitialized()
        .stringifyValue(this as AuthStateLogoutSuccess);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            AuthStateLogoutSuccessMapper.ensureInitialized()
                .isValueEqual(this as AuthStateLogoutSuccess, other));
  }

  @override
  int get hashCode {
    return AuthStateLogoutSuccessMapper.ensureInitialized()
        .hashValue(this as AuthStateLogoutSuccess);
  }
}

extension AuthStateLogoutSuccessValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthStateLogoutSuccess, $Out> {
  AuthStateLogoutSuccessCopyWith<$R, AuthStateLogoutSuccess, $Out>
      get $asAuthStateLogoutSuccess =>
          $base.as((v, t, t2) => _AuthStateLogoutSuccessCopyWithImpl(v, t, t2));
}

abstract class AuthStateLogoutSuccessCopyWith<
    $R,
    $In extends AuthStateLogoutSuccess,
    $Out> implements AuthStateCopyWith<$R, $In, $Out> {
  @override
  $R call({String? stateType});
  AuthStateLogoutSuccessCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AuthStateLogoutSuccessCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthStateLogoutSuccess, $Out>
    implements
        AuthStateLogoutSuccessCopyWith<$R, AuthStateLogoutSuccess, $Out> {
  _AuthStateLogoutSuccessCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthStateLogoutSuccess> $mapper =
      AuthStateLogoutSuccessMapper.ensureInitialized();
  @override
  $R call({String? stateType}) =>
      $apply(FieldCopyWithData({if (stateType != null) #stateType: stateType}));
  @override
  AuthStateLogoutSuccess $make(CopyWithData data) => AuthStateLogoutSuccess(
      stateType: data.get(#stateType, or: $value.stateType));

  @override
  AuthStateLogoutSuccessCopyWith<$R2, AuthStateLogoutSuccess, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _AuthStateLogoutSuccessCopyWithImpl($value, $cast, t);
}

class AuthStateLogoutFailureMapper
    extends ClassMapperBase<AuthStateLogoutFailure> {
  AuthStateLogoutFailureMapper._();

  static AuthStateLogoutFailureMapper? _instance;
  static AuthStateLogoutFailureMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthStateLogoutFailureMapper._());
      AuthStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AuthStateLogoutFailure';

  static String _$stateType(AuthStateLogoutFailure v) => v.stateType;
  static const Field<AuthStateLogoutFailure, String> _f$stateType = Field(
      'stateType', _$stateType,
      opt: true, def: authStateLogoutFailureType);
  static String? _$error(AuthStateLogoutFailure v) => v.error;
  static const Field<AuthStateLogoutFailure, String> _f$error =
      Field('error', _$error);
  static User? _$user(AuthStateLogoutFailure v) => v.user;
  static const Field<AuthStateLogoutFailure, User> _f$user =
      Field('user', _$user, mode: FieldMode.member);

  @override
  final Map<Symbol, Field<AuthStateLogoutFailure, dynamic>> fields = const {
    #stateType: _f$stateType,
    #error: _f$error,
    #user: _f$user,
  };

  static AuthStateLogoutFailure _instantiate(DecodingData data) {
    return AuthStateLogoutFailure(
        stateType: data.dec(_f$stateType), error: data.dec(_f$error));
  }

  @override
  final Function instantiate = _instantiate;

  static AuthStateLogoutFailure fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AuthStateLogoutFailure>(map);
  }

  static AuthStateLogoutFailure fromJson(String json) {
    return ensureInitialized().decodeJson<AuthStateLogoutFailure>(json);
  }
}

mixin AuthStateLogoutFailureMappable {
  String toJson() {
    return AuthStateLogoutFailureMapper.ensureInitialized()
        .encodeJson<AuthStateLogoutFailure>(this as AuthStateLogoutFailure);
  }

  Map<String, dynamic> toMap() {
    return AuthStateLogoutFailureMapper.ensureInitialized()
        .encodeMap<AuthStateLogoutFailure>(this as AuthStateLogoutFailure);
  }

  AuthStateLogoutFailureCopyWith<AuthStateLogoutFailure, AuthStateLogoutFailure,
          AuthStateLogoutFailure>
      get copyWith => _AuthStateLogoutFailureCopyWithImpl(
          this as AuthStateLogoutFailure, $identity, $identity);
  @override
  String toString() {
    return AuthStateLogoutFailureMapper.ensureInitialized()
        .stringifyValue(this as AuthStateLogoutFailure);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            AuthStateLogoutFailureMapper.ensureInitialized()
                .isValueEqual(this as AuthStateLogoutFailure, other));
  }

  @override
  int get hashCode {
    return AuthStateLogoutFailureMapper.ensureInitialized()
        .hashValue(this as AuthStateLogoutFailure);
  }
}

extension AuthStateLogoutFailureValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthStateLogoutFailure, $Out> {
  AuthStateLogoutFailureCopyWith<$R, AuthStateLogoutFailure, $Out>
      get $asAuthStateLogoutFailure =>
          $base.as((v, t, t2) => _AuthStateLogoutFailureCopyWithImpl(v, t, t2));
}

abstract class AuthStateLogoutFailureCopyWith<
    $R,
    $In extends AuthStateLogoutFailure,
    $Out> implements AuthStateCopyWith<$R, $In, $Out> {
  @override
  $R call({String? stateType, covariant String? error});
  AuthStateLogoutFailureCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AuthStateLogoutFailureCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthStateLogoutFailure, $Out>
    implements
        AuthStateLogoutFailureCopyWith<$R, AuthStateLogoutFailure, $Out> {
  _AuthStateLogoutFailureCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthStateLogoutFailure> $mapper =
      AuthStateLogoutFailureMapper.ensureInitialized();
  @override
  $R call({String? stateType, String? error}) => $apply(FieldCopyWithData({
        if (stateType != null) #stateType: stateType,
        if (error != null) #error: error
      }));
  @override
  AuthStateLogoutFailure $make(CopyWithData data) => AuthStateLogoutFailure(
      stateType: data.get(#stateType, or: $value.stateType),
      error: data.get(#error, or: $value.error));

  @override
  AuthStateLogoutFailureCopyWith<$R2, AuthStateLogoutFailure, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _AuthStateLogoutFailureCopyWithImpl($value, $cast, t);
}
