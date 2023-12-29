

import 'package:equatable/equatable.dart';
import 'package:ai.labull.org.cn/blocs/bloc_exports.dart';
import 'package:ai.labull.org.cn/utils/api_utils/backend_api_utils/core.dart';
import 'auth_type.dart';
import '../../models/user/user.dart';
part 'auth_event.dart';

class AuthBloc extends HydratedBloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthStateNotLogedIn()) {
    on<Login>(_onLogin);
    on<Logout>(_onLogout);
    on<CheckToken>(_onCheckToken);
  }
  void _onLogin(Login event, Emitter<AuthState> emit) async {
    emit(AuthStateLoginInitial(user: event.user!));

    try {
      if (event.user != null) {
        Map<String, String> jwtToken = await login(
            username: event.user!.name, password: event.user!.password);
        emit(const AuthStateLoginSuccess());
        emit(AuthStateLogedIn(
            user: event.user!.copyWith(
                jwtAccessToken: jwtToken['access'],
                jwtRefreshToken: jwtToken['refresh'])));
      } else {
        throw ("User name and password required");
      }
    } catch (e) {
      emit(AuthStateLoginFailure(error: e.toString()));
      emit(const AuthStateNotLogedIn());
    }
  }

  void _onLogout(Logout event, Emitter<AuthState> emit) async {
    try {
      emit(const AuthStateLogoutInitial());
      emit(const AuthStateLogoutLoading());
      emit(const AuthStateLogoutSuccess());
      emit(const AuthStateNotLogedIn());
    } catch (e) {
      emit(AuthStateLogoutFailure(error: e.toString()));
      emit(AuthStateLogedIn(user: event.user!));
    }
  }

  void _onCheckToken(CheckToken event, Emitter<AuthState> emit) async {
    try {
      String newAccessToken =
          await tokenRefresh(refreshToken: event.user.jwtRefreshToken!);
      emit(AuthStateLogedIn(
          user: event.user.copyWith(jwtAccessToken: newAccessToken)));
    } catch (e) {
      emit(AuthStateLoginFailure(error: e.toString()));
      emit(const AuthStateNotLogedIn());
    }
  }

  @override
  AuthState fromJson(Map<String, dynamic> json) {
    switch (json['stateType']) {
      case authStateNotLogedInType:
        return AuthStateNotLogedIn.fromMap(json);
      case authStateLogedInType:
        return AuthStateLogedIn.fromMap(json);
      case authStateLoginInitialType:
        return AuthStateLoginInitial.fromMap(json);
      case authStateLoginLoadingType:
        return AuthStateLoginLoading.fromMap(json);
      case authStateLoginSuccessType:
        return AuthStateLoginSuccess.fromMap(json);
      case authStateLoginFailureType:
        return AuthStateLoginFailure.fromMap(json);
      case authStateLogoutInitialType:
        return AuthStateLogoutInitial.fromMap(json);
      case authStateLogoutLoadingType:
        return AuthStateLogoutLoading.fromMap(json);
      case authStateLogoutSuccessType:
        return AuthStateLogoutSuccess.fromMap(json);
      case authStateLogoutFailureType:
        return AuthStateLogoutFailure.fromMap(json);
      default:
        throw ('Unknown state type');
    }
  }

  @override
  Map<String, dynamic> toJson(AuthState state) {
    return state.toMap();
  }
}
