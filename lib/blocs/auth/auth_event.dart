part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class Login extends AuthEvent {
  final String email;
  final String password;

  Login(this.email, this.password);

  @override
  List<Object> get props => [email, password];
}

class Register extends AuthEvent {
  final String email;
  final String password;
  final String photo;

  Register({this.email, this.password, this.photo});

  @override
  List<Object> get props => [email, password, photo];
}

class Logout extends AuthEvent {}
