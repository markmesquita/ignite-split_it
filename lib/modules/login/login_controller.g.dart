part of 'login_controller.dart';

mixin _$LoginController on _LoginControllerBase, Store {
  final _$stateAtom = Atom(name: 'LoginControllerBase.state');
  @override
  LoginState get state {
    _$stateAtom.context.enforceReadPolicy(_$stateAtom);
    _$stateAtom.reportObserved();
    return super.state;
  }

  @override
  set state(LoginState _state) {
    _$stateAtom.context.conditionallyRunInAction(() {
      super.state = _state;
      _$stateAtom.reportChanged();
    }, _$stateAtom, name: '${_$stateAtom}_set');
    super.state = _state;
  }

  final _$googleSignInAsyncAction = AsyncAction('LoginController');

  @override
  Future<void> googleSignIn() {
    return _$googleSignInAsyncAction.run(() => super.googleSignIn());
  }
}
