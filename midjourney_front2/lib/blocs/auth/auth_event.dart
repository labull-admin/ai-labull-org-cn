part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

class Login extends AuthEvent {
  final String username;
  final String password;

  const Login({
    required this.username,
    required this.password,
  });

  @override
  List<Object?> get props => [
        username,
        password,
      ];
}
<<<<<<< Updated upstream:midjourney_front2/lib/blocs/auth/auth_event.dart
=======
class CheckToken extends AuthEvent {

  const CheckToken();

  @override
  List<Object?> get props => [];
}

>>>>>>> Stashed changes:ai_labull_org_cn/lib/blocs/auth/auth_event.dart

class Logout extends AuthEvent {
  final User? user;

  const Logout({this.user});

  @override
  List<Object?> get props => [user];
}
