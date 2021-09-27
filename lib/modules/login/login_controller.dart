import 'package:mobx/mobx.dart';
import 'package:split_it/modules/login/login_service.dart';
import 'package:split_it/modules/login/login_state.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

class _LoginControllerBase with Store {
  LoginState state = LoginStateEmpty();
  final LoginService service;

  _LoginControllerBase({required this.service});

  Future<void> googleSignIn() async {
    try {
      state = LoginStateLoading();
      final user = await service.googleSignIn();
      state = LoginStateSuccess(user: user);
    } catch (error) {
      state = LoginStateFailure(message: error.toString());
    }
  }
}
