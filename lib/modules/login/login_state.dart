import 'package:split_it/modules/login/models/user_model.dart';

abstract class LoginState {}

class LoginStateEmpty implements LoginState {}

class LoginStateLoading implements LoginState {}

class LoginStateFailure implements LoginState {
  final String message;
  LoginStateFailure({
    required this.message,
  });
}

class LoginStateSuccess implements LoginState {
  final UserModel user;
  LoginStateSuccess({
    required this.user,
  });
}
