part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

class Login extends AuthEvent {
  final User? user;

  const Login({this.user});

  @override
  List<Object?> get props => [user];
}

class Logout extends AuthEvent {
  final User? user;

  const Logout({this.user});

  @override
  List<Object?> get props => [user];
}
