import 'package:ai.labull.org.cn/models/user/user.dart';
import 'package:dart_mappable/dart_mappable.dart';
import '../auth_type.dart';
part 'auth_state.mapper.dart';

@MappableClass()
sealed class AuthState with AuthStateMappable {
  final String stateType;
  final User? user;
  final String? error;
  const AuthState({
    required this.stateType,
    this.user,
    this.error,
  });
}

@MappableClass()
final class AuthStateNotLogedIn extends AuthState
    with AuthStateNotLogedInMappable {
  const AuthStateNotLogedIn({
    String stateType = authStateNotLogedInType,
  }) : super(
          stateType: stateType,
        );
  static const fromMap = AuthStateNotLogedInMapper.fromMap;
  static const fromJson = AuthStateNotLogedInMapper.fromJson;
}

@MappableClass()
final class AuthStateLogedIn extends AuthState with AuthStateLogedInMappable {
  const AuthStateLogedIn({
    String stateType = authStateLogedInType,
    required User user,
  }) : super(
          user: user,
          stateType: stateType,
        );
  static const fromMap = AuthStateLogedInMapper.fromMap;
  static const fromJson = AuthStateLogedInMapper.fromJson;
}

@MappableClass()
final class AuthStateLoginInitial extends AuthState
    with AuthStateLoginInitialMappable {
  const AuthStateLoginInitial({
    String stateType = authStateLoginInitialType,
  }) : super(
          stateType: stateType,
        );
  static const fromMap = AuthStateLoginInitialMapper.fromMap;
  static const fromJson = AuthStateLoginInitialMapper.fromJson;
}

@MappableClass()
final class AuthStateLoginLoading extends AuthState
    with AuthStateLoginLoadingMappable {
  const AuthStateLoginLoading({
    String stateType = authStateLoginLoadingType,
  }) : super(
          stateType: stateType,
        );
  static const fromMap = AuthStateLoginLoadingMapper.fromMap;
  static const fromJson = AuthStateLoginLoadingMapper.fromJson;
}

@MappableClass()
final class AuthStateLoginSuccess extends AuthState
    with AuthStateLoginSuccessMappable {
  const AuthStateLoginSuccess({
    String stateType = authStateLoginSuccessType,
  }) : super(
          stateType: stateType,
        );
  static const fromMap = AuthStateLoginSuccessMapper.fromMap;
  static const fromJson = AuthStateLoginSuccessMapper.fromJson;
}

@MappableClass()
final class AuthStateLoginFailure extends AuthState
    with AuthStateLoginFailureMappable {
  const AuthStateLoginFailure({
    String stateType = authStateLoginFailureType,
    required String error,
  }) : super(
          error: error,
          stateType: stateType,
        );
  static const fromMap = AuthStateLoginFailureMapper.fromMap;
  static const fromJson = AuthStateLoginFailureMapper.fromJson;
}

@MappableClass()
final class AuthStateLogoutInitial extends AuthState
    with AuthStateLogoutInitialMappable {
  const AuthStateLogoutInitial({
    String stateType = authStateLogoutInitialType,
  }) : super(
          stateType: stateType,
        );
  static const fromMap = AuthStateLogoutInitialMapper.fromMap;
  static const fromJson = AuthStateLogoutInitialMapper.fromJson;
}

@MappableClass()
final class AuthStateLogoutLoading extends AuthState
    with AuthStateLogoutLoadingMappable {
  const AuthStateLogoutLoading({
    String stateType = authStateLogoutLoadingType,
  }) : super(
          stateType: stateType,
        );
  static const fromMap = AuthStateLogoutLoadingMapper.fromMap;
  static const fromJson = AuthStateLogoutLoadingMapper.fromJson;
}

@MappableClass()
final class AuthStateLogoutSuccess extends AuthState
    with AuthStateLogoutSuccessMappable {
  const AuthStateLogoutSuccess({
    String stateType = authStateLogoutSuccessType,
  }) : super(
          stateType: stateType,
        );
  static const fromMap = AuthStateLogoutSuccessMapper.fromMap;
  static const fromJson = AuthStateLogoutSuccessMapper.fromJson;
}

@MappableClass()
final class AuthStateLogoutFailure extends AuthState
    with AuthStateLogoutFailureMappable {
  const AuthStateLogoutFailure({
    String stateType = authStateLogoutFailureType,
    required String error,
  }) : super(
          error: error,
          stateType: stateType,
        );
  static const fromMap = AuthStateLogoutFailureMapper.fromMap;
  static const fromJson = AuthStateLogoutFailureMapper.fromJson;
}
