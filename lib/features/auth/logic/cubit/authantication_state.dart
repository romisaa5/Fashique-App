part of 'authantication_cubit.dart';

sealed class AuthanticationState {}

final class AuthanticationInitial extends AuthanticationState {}

final class LoginLoading extends AuthanticationState {}

final class LoginSuccess extends AuthanticationState {}

final class LoginFailure extends AuthanticationState {
  final String errorMessage;

  LoginFailure({required this.errorMessage});
}

final class SignupLoading extends AuthanticationState {}

final class SignupSuccess extends AuthanticationState {}

final class SignupFailure extends AuthanticationState {
  final String errorMessage;

  SignupFailure({required this.errorMessage});
}
