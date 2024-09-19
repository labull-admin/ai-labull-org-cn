<<<<<<< Updated upstream:midjourney_front2/lib/blocs/auth/auth_bloc.dart
=======
import 'package:ai.labull.org.cn/utils/http_utils/dio_client.dart';
>>>>>>> Stashed changes:ai_labull_org_cn/lib/blocs/auth/auth_bloc.dart
import 'package:equatable/equatable.dart';
import 'package:ai.labull.org.cn/blocs/bloc_exports.dart';
import 'package:ai.labull.org.cn/utils/api_utils/backend_api_utils/core.dart';
import './state_type.dart';
import '../../models/user/user.dart';
part 'auth_event.dart';

class AuthBloc extends HydratedBloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthStateNotLogedIn()) {
    on<Login>(_onLogin);
    on<Logout>(_onLogout);
  }
  void _onLogin(Login event, Emitter<AuthState> emit) async {
<<<<<<< Updated upstream:midjourney_front2/lib/blocs/auth/auth_bloc.dart
    emit(AuthStateLoginInitial(user: event.user!));
    // print(AuthStateLoginInitial(user: event.user!).toJson());
    // print(AuthStateLoginInitial(user: event.user!).toMap());

    try {
      if (event.user != null) {
        String jwtAccessToken = await login(
            username: event.user!.name, password: event.user!.password);
        emit(const AuthStateLoginSuccess());
        emit(AuthStateLogedIn(
            user: event.user!.copyWith(jwtAccessToken: jwtAccessToken)));
        emit(AuthStateLogedIn(
            user: User(
                name: event.user!.name,
                password: event.user!.password,
                jwtAccessToken: jwtAccessToken)));
      } else {
        throw ("User name and password required");
      }
=======
    emit(const AuthStateLoginInitial());

    try {
      User user =
          await login(username: event.username, password: event.password);
      emit(const AuthStateLoginSuccess());
      emit(AuthStateLogedIn(user: user));
>>>>>>> Stashed changes:ai_labull_org_cn/lib/blocs/auth/auth_bloc.dart
    } catch (e) {
      emit(AuthStateLoginFailure(error: e.toString()));
      emit(const AuthStateNotLogedIn());
    }
  }

  void _onLogout(Logout event, Emitter<AuthState> emit) async {
    final startState = state;
    try {
      emit(const AuthStateLogoutInitial());
      emit(const AuthStateLogoutLoading());
      await logout();
      emit(const AuthStateLogoutSuccess());
      emit(const AuthStateNotLogedIn());
    } catch (e) {
      emit(AuthStateLogoutFailure(error: e.toString()));
      emit(startState);
    }
  }

<<<<<<< Updated upstream:midjourney_front2/lib/blocs/auth/auth_bloc.dart
=======
  void _onCheckToken(CheckToken event, Emitter<AuthState> emit) async {
    try {
      User user = await tokenRefresh();
      emit(AuthStateLogedIn(user: user));
    } catch (e) {
      emit(AuthStateLoginFailure(error: e.toString()));
      emit(const AuthStateNotLogedIn());
    }
  }

>>>>>>> Stashed changes:ai_labull_org_cn/lib/blocs/auth/auth_bloc.dart
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
