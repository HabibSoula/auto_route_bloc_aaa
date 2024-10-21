part of 'login_bloc.dart';

@immutable
sealed class LoginState {
const LoginState();
}
class LoginInitial extends LoginState {}
class LoginLoaded extends LoginState {}
class LoginFail extends LoginState {}
