// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user.dart';

class UserMapper extends ClassMapperBase<User> {
  UserMapper._();

  static UserMapper? _instance;
  static UserMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'User';

  static String _$name(User v) => v.name;
  static const Field<User, String> _f$name = Field('name', _$name);
  static String _$password(User v) => v.password;
  static const Field<User, String> _f$password = Field('password', _$password);
  static String? _$jwtAccessToken(User v) => v.jwtAccessToken;
  static const Field<User, String> _f$jwtAccessToken =
      Field('jwtAccessToken', _$jwtAccessToken, opt: true);
  static String? _$jwtRefreshToken(User v) => v.jwtRefreshToken;
  static const Field<User, String> _f$jwtRefreshToken =
      Field('jwtRefreshToken', _$jwtRefreshToken, opt: true);

  @override
  final Map<Symbol, Field<User, dynamic>> fields = const {
    #name: _f$name,
    #password: _f$password,
    #jwtAccessToken: _f$jwtAccessToken,
    #jwtRefreshToken: _f$jwtRefreshToken,
  };

  static User _instantiate(DecodingData data) {
    return User(
        name: data.dec(_f$name),
        password: data.dec(_f$password),
        jwtAccessToken: data.dec(_f$jwtAccessToken),
        jwtRefreshToken: data.dec(_f$jwtRefreshToken));
  }

  @override
  final Function instantiate = _instantiate;

  static User fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<User>(map);
  }

  static User fromJson(String json) {
    return ensureInitialized().decodeJson<User>(json);
  }
}

mixin UserMappable {
  String toJson() {
    return UserMapper.ensureInitialized().encodeJson<User>(this as User);
  }

  Map<String, dynamic> toMap() {
    return UserMapper.ensureInitialized().encodeMap<User>(this as User);
  }

  UserCopyWith<User, User, User> get copyWith =>
      _UserCopyWithImpl(this as User, $identity, $identity);
  @override
  String toString() {
    return UserMapper.ensureInitialized().stringifyValue(this as User);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            UserMapper.ensureInitialized().isValueEqual(this as User, other));
  }

  @override
  int get hashCode {
    return UserMapper.ensureInitialized().hashValue(this as User);
  }
}

extension UserValueCopy<$R, $Out> on ObjectCopyWith<$R, User, $Out> {
  UserCopyWith<$R, User, $Out> get $asUser =>
      $base.as((v, t, t2) => _UserCopyWithImpl(v, t, t2));
}

abstract class UserCopyWith<$R, $In extends User, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? name,
      String? password,
      String? jwtAccessToken,
      String? jwtRefreshToken});
  UserCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, User, $Out>
    implements UserCopyWith<$R, User, $Out> {
  _UserCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<User> $mapper = UserMapper.ensureInitialized();
  @override
  $R call(
          {String? name,
          String? password,
          Object? jwtAccessToken = $none,
          Object? jwtRefreshToken = $none}) =>
      $apply(FieldCopyWithData({
        if (name != null) #name: name,
        if (password != null) #password: password,
        if (jwtAccessToken != $none) #jwtAccessToken: jwtAccessToken,
        if (jwtRefreshToken != $none) #jwtRefreshToken: jwtRefreshToken
      }));
  @override
  User $make(CopyWithData data) => User(
      name: data.get(#name, or: $value.name),
      password: data.get(#password, or: $value.password),
      jwtAccessToken: data.get(#jwtAccessToken, or: $value.jwtAccessToken),
      jwtRefreshToken: data.get(#jwtRefreshToken, or: $value.jwtRefreshToken));

  @override
  UserCopyWith<$R2, User, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _UserCopyWithImpl($value, $cast, t);
}
